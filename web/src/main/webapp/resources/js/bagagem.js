$(function(){
    $("#txt-altura,#txt-largura,#txt-comprimento").mask("99,99" , {placeholder:"99,99"})
    
    $("#txt-peso").mask("#0.000" , {reverse:true});
    $("#txt-cpf").mask("999.999.999-95");
    
    
    $("#frmCadastroBagagem").on('submit', function(){
	var bagagem = {
		altura:$("#txt-altura").val().replaceComma(),
		largura:$("#txt-largura").val().replaceComma(),
		comprimento:$("#txt-comprimento").val().replaceComma(),
		quantidade:$("#txt-quantidade").val(),
		peso:$("#txt-peso").val().replaceComma(),
		taxa:$("#txt-taxa").val().replaceComma(),
		ativo:$("#sel-ativo option:selected").val(),
		numeroVoo:$("#txt-voo").val(),
		cliente:{
		    cpf:$("#txt-cpf").val().getJustNum()
		}
	};
	var data = {
		action:"SALVAR",
		bagagem:JSON.stringify(bagagem)
	};
	
	console.log(bagagem)
	return;
	PostRequestAsync("/bagagem/salvar", data , function(){
	    
	}, function(){
	    
	});
    });
});