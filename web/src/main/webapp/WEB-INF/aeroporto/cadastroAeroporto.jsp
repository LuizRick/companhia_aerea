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
            
            <!--Menu de navegação -->
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Menu</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Cadastrar Cliente</a>
          </li>
            <li class="nav-item">
            <a class="nav-link" href="#">Cadastrar Aeroporto</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link" href="#">Link</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">Cadastrar Cliente</a>
              <a class="dropdown-item" href="#">Cadastrar Aeroporto</a>
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
    <!--Menu de navegação -->
        
         <div id="formulario-cadastro" class="container"  >
                <form>
                   <div class="form-group margem-cima-20 row"> 
                       <b>Dados do Aeroporto</b>
                    </div>
                    
                  <div class="form-group margem-cima-20 row">          
                            <label for="exampleInputEmail1" class="inline margem-cima-5" >*Nome Do Aeroporto:</label>
                            <input type="text" class="input-largura-500 form-control margem-esquerda-20"  id="txt-nome" placeholder="Nome Completo">
                        
                  </div>
                    
                    
                  <div class="form-group margem-cima-20 row">
                    <label for="telefone" class="margem-cima-5">*Telefone:</label>
                    <input type="text" class="form-control input-largura-130 margem-esquerda-10" maxlength="14" id="txt-telefone" placeholder="(xx) 9999-9999">
                      
                  </div>
                    
                    <div class="form-group margem-cima-20 row">
                         <b>Endereço</b>
                    </div>
                     
                 <div class="form-group margem-cima-20 row">
                    <label for="txt-logradouro" class="margem-cima-5">*Logradouro:</label>
                    <input type="text" class="form-control input-largura-500 margem-esquerda-5" id="txt-logradouro" placeholder="(xx) 9999-9999">
                     
                    <label for="txt-numero" class="margem-cima-5 margem-esquerda-20">*Número:</label>
                    <input type="text" class="form-control input-largura-100 margem-esquerda-20" maxlength="8" id="txt-numero" >
                     
                  </div>
                
                  <div class="form-group margem-cima-20 row">
                    <label for="txt-cep" class="margem-cima-5 ">*CEP:</label>
                    <input type="text" class="form-control input-largura-100 margem-esquerda-50"  id="txt-cep" >
                      
                    <label for="txt-cep" class="margem-cima-5 margem-esquerda-20">*Bairro:</label>
                    <input type="text" class="form-control input-largura-200 margem-esquerda-20"  id="txt-bairro" >  
                      
                 </div>
                    
                    <div class="form-group margem-cima-30 row">
                        <label for="txt-cep" class="margem-cima-5 ">*País:</label>
                        <select id="pais"  class="margem-esquerda-20 form-control input-largura-200"></select>
                        
                        
                        <label id="lblEstado" for="estado" class="margem-cima-5 margem-esquerda-20">*Estado:</label>
                        <input type="text" id="input-estado" class="form-control input-largura-180 margem-esquerda-20 hide"/>
                        <select id="estado"  class="form-control input-largura-200 margem-esquerda-20"></select>
                        
                         <label id="lblCidade" for="cidade" class="margem-cima-5 margem-esquerda-20">*Cidade:</label>
                         <input id="input-cidade" type="text" class="form-control input-largura-250 margem-esquerda-20 hide"/>
                        <select id="cidade"  class="form-control input-largura-180 margem-esquerda-20"></select>
                        
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

		// CHAMA A FUNÇÃO QUE PREENCHE AS CIDADES DE ACORDO COM O ESTADO
		montaCidade($('#estado').val(), pais);

		// VERIFICA A MUDANÇA NO VALOR DO CAMPO ESTADO E ATUALIZA AS CIDADES
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

		// PREENCHE O SELECT DE PAÍSES
		$('#pais').html(paises);

		// PREENCHE O SELECT DE ACORDO COM O VALOR DO PAÍS
		montaUF($('#pais').val());

		// VERIFICA A MUDANÇA DO VALOR DO SELECT DE PAÍS
		$('#pais').change(function(){
			if($('#pais').val() == 'BR'){
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
    
    
    montaPais();

</script>