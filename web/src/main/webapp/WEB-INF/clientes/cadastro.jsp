  


<html>
      
        <head>
            
            <title>LES COMPANHIA AEREA</title>
                    
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
               <script
                src="https://code.jquery.com/jquery-3.3.1.js"
                    integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
                    crossorigin="anonymous"></script>
            
                <script type="text/javascript" src="js/script.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
            
                <link rel="stylesheet" type="text/css" href="../resources/css/estilo.css">

        </head>
        <body>
            
            <!--Menu de navega��o -->
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Menu</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Link</a>
          </li>
            <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link" href="#">Link</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
          <li class="nav-item">
           <a class="nav-link" href="#">Link</a>
          </li>
        </ul>
        
      </div>
    </nav>
              <!--Menu de navega��o -->
            
            <div id="formulario-cadastro" class="container"  >
                <form>
                   <div class="form-group margem-cima-20 row"> 
                       <b>Dados Pessoais</b>
                    </div>
                    
                  <div class="form-group margem-cima-20 row">          
                            <label for="exampleInputEmail1" class="inline margem-cima-5" >*Nome:</label>
                            <input type="text" class="input-largura-500 form-control margem-esquerda-20"  id="txt-nome" placeholder="Nome Completo">
                        
                            <label for="telefone" class="inline margem-cima-5 margem-esquerda-20">*Data de nascimento:</label>
                            <input type="text" class="form-control input-largura-130 margem-esquerda-20" id="txt-telefone" placeholder="DD/MM/AAAA">
                  </div>
                    
                    <div class="form-group margem-cima-20 row">          
                            <label for="rg" class="inline margem-cima-5" >*RG:</label>
                            <input type="text" class="input-largura-150 form-control margem-esquerda-20"  id="rg" >
                        
                            <label for="telefone" class="inline margem-cima-5 margem-esquerda-20">*CPF:</label>
                            <input type="text" class="form-control input-largura-150 margem-esquerda-20" id="txt-telefone" >
                  </div>
               
                  <div class="form-group margem-cima-20 row">
                    <label for="telefone" class="margem-cima-5">Telefone:</label>
                    <input type="text" class="form-control input-largura-130 margem-esquerda-10" maxlength="14" id="txt-telefone" placeholder="(xx) 9999-9999">
                      
                    <label for="celular" class="margem-cima-5 margem-esquerda-20">*Celular:</label>
                    <input type="text" class="form-control input-largura-150 margem-esquerda-5" maxlength="15" id="txt-celular" placeholder="(xx) 99999-9999">  
                  </div>
                    
                    <div class="form-group margem-cima-20 row">
                         <b>Endere�o</b>
                    </div>
                     
                 <div class="form-group margem-cima-20 row">
                    <label for="txt-logradouro" class="margem-cima-5">*Logradouro:</label>
                    <input type="text" class="form-control input-largura-500 margem-esquerda-5" id="txt-logradouro" placeholder="(xx) 9999-9999">
                     
                    <label for="txt-numero" class="margem-cima-5 margem-esquerda-20">*N�mero:</label>
                    <input type="text" class="form-control input-largura-100 margem-esquerda-20" maxlength="8" id="txt-numero" >
                     
                  </div>
                
                  <div class="form-group margem-cima-20 row">
                    <label for="txt-cep" class="margem-cima-5 ">*CEP:</label>
                    <input type="text" class="form-control input-largura-100 margem-esquerda-50"  id="txt-cep" >
                      
                    <label for="txt-cep" class="margem-cima-5 margem-esquerda-20">*Bairro:</label>
                    <input type="text" class="form-control input-largura-200 margem-esquerda-20"  id="txt-bairro" >  
                      
                 </div>
                    
                    <div class="form-group margem-cima-30 row">
                        <label for="txt-cep" class="margem-cima-5 ">*Pa�s:</label>
                        <select id="pais"  class="margem-esquerda-20 form-control input-largura-200"></select>
                        
                        
                        <label id="lblEstado" for="estado" class="margem-cima-5 margem-esquerda-20">*Estado:</label>
                        <input type="text" id="input-estado" class="form-control input-largura-180 margem-esquerda-20 hide"/>
                        <select id="estado"  class="form-control input-largura-200 margem-esquerda-20"></select>
                        
                         <label id="lblCidade" for="cidade" class="margem-cima-5 margem-esquerda-20">*Cidade:</label>
                         <input id="input-cidade" type="text" class="form-control input-largura-250 margem-esquerda-20 hide"/>
                        <select id="cidade"  class="form-control input-largura-180 margem-esquerda-20"></select>
                        
                    </div>
                    
                     <div class="form-group margem-cima-20 row">
                         <b>Informa��es de login</b>
                    </div>
                    
                    <div class="form-group margem-cima-30 row">
                        <label for="email" class="margem-cima-5 ">*Email:</label>
                         <input type="text" id="input-estado" class="form-control input-largura-300 margem-esquerda-20"/>
                        
                    </div>
                   
                     <label id="avisoSenha" class="texto-vermelho margem-cima-20 hide">A senha deve possuir 6 ou mais digitos, uma letra maiuscula e um caractere especial</label>

                    <div class="form-group margem-cima-20 row">
                        <label for="senha">*Senha:</label>
                         <input type="password" id="senha" class="form-control input-largura-300 margem-esquerda-20"/>
                        
                        <label for="senhaRepetida" class="margem-cima-5 margem-esquerda-20">*Repita a senha:</label>
                         <input type="password" id="senhaRepetida" class="form-control input-largura-300 margem-esquerda-20"/>
                        
                    </div>
                    
                
                 
                  <button id="submit" onclick="submitDados();" class="btn btn-primary">Cadastrar</button>
                </form>
            </div>
            
         
  
        </body>
    </html>

<script>

  function montaCidade(estado, pais){
	$.ajax({
		type:'GET',
		url:'http://api.londrinaweb.com.br/PUC/Cidades/'+estado+'/'+pais+'/0/10000',
		contentType: "application/json; charset=utf-8",
		dataType: "jsonp",
		async:false
	}).done(function(response){
		cidades='';

		$.each(response, function(c, cidade){

			cidades+='<option value="'+cidade+'">'+cidade+'</option>';

		});

		// PREENCHE AS CIDADES DE ACORDO COM O ESTADO
		$('#cidade').html(cidades);

	});
}

function montaUF(pais){
	$.ajax({
		type:'GET',
		url:'http://api.londrinaweb.com.br/PUC/Estados/'+pais+'/0/10000',
		contentType: "application/json; charset=utf-8",
		dataType: "jsonp",
		async:false
	}).done(function(response){
		estados='';
		$.each(response, function(e, estado){

			estados+='<option value="'+estado.UF+'">'+estado.Estado+'</option>';

		});

		// PREENCHE OS ESTADOS BRASILEIROS
		$('#estado').html(estados);

		// CHAMA A FUN��O QUE PREENCHE AS CIDADES DE ACORDO COM O ESTADO
		montaCidade($('#estado').val(), pais);

		// VERIFICA A MUDAN�A NO VALOR DO CAMPO ESTADO E ATUALIZA AS CIDADES
		$('#estado').change(function(){
			montaCidade($(this).val(), pais);
		});

	});
}

function montaPais(){
	$.ajax({
		type:	'GET',
		url:	'http://api.londrinaweb.com.br/PUC/Paisesv2/0/1000',
		contentType: "application/json; charset=utf-8",
		dataType: "jsonp",
		async:false
	}).done(function(response){
		
		paises='';

		$.each(response, function(p, pais){

			if(pais.Pais == 'Brasil'){
				paises+='<option value="'+pais.Sigla+'" selected>'+pais.Pais+'</option>';
			} else {
				paises+='<option value="'+pais.Sigla+'">'+pais.Pais+'</option>';
			}

		});

		// PREENCHE O SELECT DE PA�SES
		$('#pais').html(paises);

		// PREENCHE O SELECT DE ACORDO COM O VALOR DO PA�S
		montaUF($('#pais').val());

		// VERIFICA A MUDAN�A DO VALOR DO SELECT DE PA�S
		$('#pais').change(function(){
			if($('#pais').val() == 'BR'){
				// SE O VALOR FOR BR E CONFIRMA OS SELECTS
				
                $("#input-cidade").addClass("hide");
                $("#cidade").removeClass("hide");
			    $("#input-estado").addClass("hide");
                $("#estado").removeClass("hide");
			   

				// CHAMA A FUN��O QUE MONTA OS ESTADOS
				montaUF('BR');		
			} else {
				// SE N�O FOR, TROCA OS SELECTS POR INPUTS DE TEXTO
				
		        $("#input-cidade").removeClass("hide");
                $("#cidade").addClass("hide");
                $("#input-estado").removeClass("hide");
                $("#estado").addClass("hide");
			}
		})

	});
}
    
function habilitaBotao(habilita){
    if(habilita){
        
    }else{
        
    }
}    

$("#senha").focusin(function(){
   $("#avisoSenha").addClass("hide"); 
});
    
$("#senhaRepetida").focusin(function(){
   $("#avisoSenha").addClass("hide"); 
});
    
    
$("#senhaRepetida").focusout(function(){
    debugger;
    if(verifica()){
        if(validaSenhasIguais()){
            $("#avisoSenha").addClass("hide");
            habilitaBotao(true);
        }else{
            $("#avisoSenha").text("A senha deve ser igual nos 2 campos abaixo");
            $("#avisoSenha").removeClass("hide");
            habilitaBotao(false);
        }  
    }else{
        $("#avisoSenha").text("A senha deve possuir 6 ou mais digitos, uma letra maiuscula e um caractere especial");
        $("#avisoSenha").removeClass("hide");
    }
   
});        
    
$("#senha").focusout(function(){
    debugger;
    if(verifica()){
        if(validaSenhasIguais()){
            $("#avisoSenha").addClass("hide");
            habilitaBotao(true);
        }else{
            $("#avisoSenha").text("A senha deve ser igual nos 2 campos abaixo");
            $("#avisoSenha").removeClass("hide");
            habilitaBotao(false);
        }  
    }else{
        $("#avisoSenha").text("A senha deve possuir 6 ou mais digitos, uma letra maiuscula e um caractere especial");
        $("#avisoSenha").removeClass("hide");
    }
   
});    
    
function validaSenhasIguais(){
    var senha = $("#senha").val();
    var senhaRepetida = $("#senhaRepetida").val();
    
    if(senha == senhaRepetida){
        return true;
    }
        return false;
}
    
    
    
function verifica(){
    debugger;
	var senha = document.getElementById("senha").value;
	var regex = /^(?=(?:.*?[A-Z]){1})(?=(?:.*?[!@#$%*()_+^&}{:;?.]){1})(?!.*\s)[0-9a-zA-Z!@#$%;*(){}_+^&]*$/;
	if(senha.length >= 6 && regex.exec(senha)){
        return true;    
    }
    return false;
}    
    
montaPais();
    
    
    
    
</script>