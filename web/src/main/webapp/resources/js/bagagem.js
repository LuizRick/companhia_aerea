$(function () {
    $("#txt-altura,#txt-largura,#txt-comprimento").mask("99,99", { placeholder: "99,99" })

    $("#txt-peso").mask("#0.000", { reverse: true });
    $("#txt-cpf").mask("999.999.999-95");

    $("#txt-quantidade").on('change', function () {
        var taxa = parseInt($("#txt-quantidade").val()) * 2.50;
        $("#txt-taxa").val(taxa);
    });

    $("#frmCadastroBagagem").on('submit', function () {
        var bagagem = {
            altura: $("#txt-altura").val().replaceComma(),
            largura: $("#txt-largura").val().replaceComma(),
            comprimento: $("#txt-comprimento").val().replaceComma(),
            quantidade: $("#txt-quantidade").val(),
            peso: $("#txt-peso").val().replaceComma(),
            taxa: $("#txt-taxa").val().replaceComma(),
            ativo: $("#sel-status").val(),
            numeroVoo: $("#txt-voo").val(),
            cliente: {
                cpf: $("#txt-cpf").val().getJustNum()
            }
        };
        var data = {
            action: "SALVAR",
            bagagem: JSON.stringify(bagagem)
        };

        PostRequestAsync("/bagagem/salvar", data, function (response) {
            var resultado = JSON.parse(response);
            if (resultado.msg != null) {
                alert(resultado.msg);
            }
            else {
                alert("Bagagem salva com sucesso");
                location = "/bagagem/consultar";
            }

        }, function () {
            alert("Não foi possivel salvar a bagagem");
        });
    });
    
    
    $("#frmEditarBagagem").on('submit', function () {
        var bagagem = {
            id:$("#hidden-id").val(),
            altura: $("#txt-altura").val().replaceComma(),
            largura: $("#txt-largura").val().replaceComma(),
            comprimento: $("#txt-comprimento").val().replaceComma(),
            quantidade: $("#txt-quantidade").val(),
            peso: $("#txt-peso").val().replace(".",""),
            taxa: $("#txt-taxa").val().replaceComma(),
            ativo: $("#sel-status").val(),
            numeroVoo: $("#txt-voo").val(),
            cliente: {
                cpf: $("#txt-cpf").val().getJustNum()
            }
        };
        var data = {
            action: "SALVAR",
            bagagem: JSON.stringify(bagagem)
        };

        PostRequestAsync("/bagagem/editar", data, function (response) {
            var resultado = JSON.parse(response);
            if (resultado.msg != null) {
                alert(resultado.msg);
            }
            else {
                alert("Bagagem salva com sucesso");
                location = "/bagagem/consultar";
            }

        }, function () {
            alert("Não foi possivel salvar a bagagem");
        });
    });

    $("#resultado_pesquisa").on('click', '.editar', function(){
	var id = $(this).attr("data-id");
	location = "/bagagem/editar/" + id;
    });
    
    $("#resultado_pesquisa").on('click', '.deletar',function(){
	var ok = confirm("Deseja realmente apagar esta bagagem");
	var id = $(this).attr("data-id");
	var bagagem = {
		id:id
	};
	
	var data = {
		action:"EXCLUIR",
		bagagem:JSON.stringify(bagagem)
	};
	
	if(ok){
	    PostRequestAsync('/bagagem/deletar', data,function(response){
		var resultado = JSON.parse(response);
		if(resultado.msg != null){
		    alert(resultado.msg);
		}else{
		    alert("Deletado com sucesso");
		    $("#btnConsultar").trigger("click");
		}
	    }, function(){
		alert("Nao foi possivel deletar bagagem");
	    })
	}
    });

    $("#frmConsultarBagagem").on('submit', function () {
        var bagagem = {
            numeroVoo: $("#txt-voo").val(),
            cliente: {
                cpf: $("#txt-cpf").val().getJustNum()
            }
        }

        var data = {
            action: "CONSULTAR",
            bagagem: JSON.stringify(bagagem)
        };
        PostRequestAsync("/bagagem/buscar", data, function (response) {
            var resultado = JSON.parse(response);
            if(resultado.entidades.length <= 0){
        	alert("Nao foram encontrados resultados");
            }
            if (resultado.msg != null) {
                alert(resultado.msg)
            } else {
                $("#resultado_pesquisa").html("");
                console.log(resultado);
                var entidade;
                for (var x in resultado.entidades) {
                    entidade = resultado.entidades[x];
                    $("#resultado_pesquisa").append(`
		    <tr>
		        <td>${entidade.cliente.nome}</td>
		        <td>${entidade.numeroVoo}</td>
		        <td>${entidade.altura}</td>
		        <td>${entidade.largura}</td>
		        <td>${entidade.comprimento}</td>
		        <td>${entidade.quantidade}</td>
		        <td>${entidade.peso}</td>
		        <td>${entidade.ativo}</td>
		        <td>
		            <button class="btn btn-success editar" data-id="${entidade.id}">Editar</button> 
		            <button class="btn btn-danger deletar" data-id="${entidade.id}">Deletar</button>
		        </td>
		    </tr>
		`);
                }
            }
        }, function () {
            alert("Erro não foi possivel fazer a consulta");
        })
    });
});