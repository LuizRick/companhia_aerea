$(function () {
	$("#btnConsultar").on("click", function(){
		sendProcess({"action":"CONSULTAR" , "cliente" : JSON.stringify({})} , function(response){
			console.dir(JSON.parse(response));
		});
	});
	
    function montaCidade(estado, pais) {
        $.ajax(
            {
                type: 'GET',
                url: 'http://api.londrinaweb.com.br/PUC/Cidades/' + estado
                    + '/' + pais + '/0/10000',
                contentType: "application/json; charset=utf-8",
                dataType: "jsonp",
                async: false
            }).done(
                function (response) {
                    cidades = '';

                    $.each(response, function (c, cidade) {

                        cidades += '<option value="' + cidade + '">' + cidade
                            + '</option>';

                    });

                    // PREENCHE AS CIDADES DE ACORDO COM O ESTADO
                    $('#cidade').html(cidades);

                });
    }

    function montaUF(pais) {
        $.ajax(
            {
                type: 'GET',
                url: 'http://api.londrinaweb.com.br/PUC/Estados/' + pais
                    + '/0/10000',
                contentType: "application/json; charset=utf-8",
                dataType: "jsonp",
                async: false
            }).done(
                function (response) {
                    estados = '';
                    $.each(response, function (e, estado) {

                        estados += '<option value="' + estado.UF + '">'
                            + estado.Estado + '</option>';

                    });

                    // PREENCHE OS ESTADOS BRASILEIROS
                    $('#estado').html(estados);

                    // CHAMA A FUNÇÃO QUE PREENCHE AS CIDADES DE ACORDO COM O ESTADO
                    montaCidade($('#estado').val(), pais);

                    // VERIFICA A MUDANÇA NO VALOR DO CAMPO ESTADO E ATUALIZA AS CIDADES
                    $('#estado').change(function () {
                        montaCidade($(this).val(), pais);
                    });

                });
    }

    function montaPais() {
        $.ajax({
            type: 'GET',
            url: 'http://api.londrinaweb.com.br/PUC/Paisesv2/0/1000',
            contentType: "application/json; charset=utf-8",
            dataType: "jsonp",
            async: false
        }).done(
            function (response) {

                paises = '';

                $.each(response, function (p, pais) {

                    if (pais.Pais == 'Brasil') {
                        paises += '<option value="' + pais.Sigla
                            + '" selected>' + pais.Pais + '</option>';
                    } else {
                        paises += '<option value="' + pais.Sigla + '">'
                            + pais.Pais + '</option>';
                    }

                });

                // PREENCHE O SELECT DE PAÍSES
                $('#pais').html(paises);

                // PREENCHE O SELECT DE ACORDO COM O VALOR DO PAÍS
                montaUF($('#pais').val());

                // VERIFICA A MUDANÇA DO VALOR DO SELECT DE PAÍS
                $('#pais').change(function () {
                    if ($('#pais').val() == 'BR') {
                        // SE O VALOR FOR BR E CONFIRMA OS SELECTS

                        $("#input-cidade").addClass("hide");
                        $("#cidade").removeClass("hide");
                        $("#input-estado").addClass("hide");
                        $("#estado").removeClass("hide");

                        // CHAMA A FUNÇÃO QUE MONTA OS ESTADOS
                        montaUF('BR');
                    } else {
                        // SE NÃO FOR, TROCA OS SELECTS POR INPUTS DE TEXTO

                        $("#input-cidade").removeClass("hide");
                        $("#cidade").addClass("hide");
                        $("#input-estado").removeClass("hide");
                        $("#estado").addClass("hide");
                    }
                })

            });
    }

    function habilitaBotao(habilita) {
        if (habilita) {

        } else {

        }
    }

    $("#senha").focusin(function () {
        $("#avisoSenha").addClass("hide");
    });

    $("#senhaRepetida").focusin(function () {
        $("#avisoSenha").addClass("hide");
    });

    $("#senhaRepetida")
        .focusout(
            function () {
                if (verifica()) {
                    if (validaSenhasIguais()) {
                        $("#avisoSenha").addClass("hide");
                        habilitaBotao(true);
                    } else {
                        $("#avisoSenha")
                            .text(
                                "A senha deve ser igual nos 2 campos abaixo");
                        $("#avisoSenha").removeClass("hide");
                        habilitaBotao(false);
                    }
                } else {
                    $("#avisoSenha")
                        .text(
                            "A senha deve possuir 6 ou mais digitos, uma letra maiuscula e um caractere especial");
                    $("#avisoSenha").removeClass("hide");
                }

            });

    $("#senha")
        .focusout(
            function () {
                if (verifica()) {
                    if (validaSenhasIguais()) {
                        $("#avisoSenha").addClass("hide");
                        habilitaBotao(true);
                    } else {
                        $("#avisoSenha")
                            .text(
                                "A senha deve ser igual nos 2 campos abaixo");
                        $("#avisoSenha").removeClass("hide");
                        habilitaBotao(false);
                    }
                } else {
                    $("#avisoSenha")
                        .text(
                            "A senha deve possuir 6 ou mais digitos, uma letra maiuscula e um caractere especial");
                    $("#avisoSenha").removeClass("hide");
                }

            });

    function validaSenhasIguais() {
        var senha = $("#senha").val();
        var senhaRepetida = $("#senhaRepetida").val();

        if (senha == senhaRepetida) {
            return true;
        }
        return false;
    }

    function verifica() {
        var senha = document.getElementById("senha").value;
        var regex = /^(?=(?:.*?[A-Z]){1})(?=(?:.*?[!@#$%*()_+^&}{:;?.]){1})(?!.*\s)[0-9a-zA-Z!@#$%;*(){}_+^&]*$/;
        if (senha.length >= 6 && regex.exec(senha)) {
            return true;
        }
        return false;
    }

    montaPais();

    $("#form-cliente").on('submit', function () {
        var obj = {
            "action": "SALVAR",
            "cliente": JSON.stringify({
                "nome": $("#txt-nome").val(),
                "rg": $("#rg").val(),
                "cpf": $("#txt-cpf").val(),
                "telefone": $("#txt-telefone").val(),
                "celular": $("#txt-celular").val(),
                "email": $("#input-email").val(),
                "senha": $("#senha").val(),
                "nascimento": $("#txt-nascimento").val().split("/").reverse().join("-"),
                "endereco": {
                    "logradouro": $("#txt-logradouro").val(),
                    "numero": $("#txt-numero").val(),
                    "cep": $("#txt-cep").val(),
                    "bairro": $("#txt-bairro").val(),
                    "pais": $("#pais").val(),
                    "estado": $("#estado").val(),
                    "cidade": $("#cidade").val(),
                }
            })
        };
        
        sendProcess(obj,function(response){
        	let obj = JSON.parse(response);
            if (obj.msg == null) {
                alert("Clinte salvo com sucesso");
            } else {
                alert(obj.msg);
            }
        });
    });
    
    
    
    function sendProcess(obj, callback){
    	 $.ajax({
             url: "/clientes/processar",
             method: "POST",
             data: obj,
             async: false,
             success: function (response) {
                 callback(response);
             }
         });
    }
});