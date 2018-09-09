$(function(){
    $("#txt-altura,#txt-largura,#txt-comprimento").mask("99,99" , {placeholder:"99,99"})
    
    $("#txt-peso").mask("#0.000" , {reverse:true});
    $("#txt-cpf").mask("999.999.999-95");
    
    $("#txt-quantidade").on('change', function(){
	var taxa = parseInt($("#txt-quantidade").val()) * 2.50;
	$("#txt-taxa").val(taxa);
    });
    
    $("#frmCadastroBagagem").on('submit', function(){
	var bagagem = {
		altura:$("#txt-altura").val().replaceComma(),
		largura:$("#txt-largura").val().replaceComma(),
		comprimento:$("#txt-comprimento").val().replaceComma(),
		quantidade:$("#txt-quantidade").val(),
		peso:$("#txt-peso").val().replaceComma(),
		taxa:$("#txt-taxa").val().replaceComma(),
		ativo:$("#sel-status").val(),
		numeroVoo:$("#txt-voo").val(),
		cliente:{
		    cpf:$("#txt-cpf").val().getJustNum()
		}
	};
	var data = {
		action:"SALVAR",
		bagagem:JSON.stringify(bagagem)
	};
	
	PostRequestAsync("/bagagem/salvar", data , function(response){
	    var resultado = JSON.parse(response);
	    if(resultado.msg != null)
		alert(resultado.msg);
	    else
		alert("Bagagem salva com sucesso");
	}, function(){
	    alert("Não foi possivel salvar a bagagem");
	});
    });
});