<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>LES COMPANHIA AEREA</title>
    <jsp:include page="../layout/header.jsp"></jsp:include>
    <script src="../resources/js/cliente.js"></script>
</head>
<body>
	<jsp:include page="../layout/navigation.jsp"></jsp:include>
    <div id="formulario-cadastro" class="container">
        <form action="javascript:void(0)" id="form-cliente">
            <div class="form-group margem-cima-20 row">
                <b>Dados Pessoais</b>
            </div>

            <div class="form-group margem-cima-20 row">
                <label for="exampleInputEmail1" class="inline margem-cima-5">*Nome:</label>
                <input type="text" class="input-largura-500 form-control margem-esquerda-20" id="txt-nome" placeholder="Nome Completo">                <label
                    for="telefone" class="inline margem-cima-5 margem-esquerda-20">*Data de nascimento:</label> <input type="text"
                    class="form-control input-largura-130 margem-esquerda-20" id="txt-nascimento" placeholder="DD/MM/AAAA">
            </div>

            <div class="form-group margem-cima-20 row">
                <label for="rg" class="inline margem-cima-5">*RG:</label> <input type="text" class="input-largura-150 form-control margem-esquerda-20"
                    id="rg"> <label for="telefone" class="inline margem-cima-5 margem-esquerda-20">*CPF:</label>
                <input type="text" class="form-control input-largura-150 margem-esquerda-20" id="txt-cpf">
            </div>

            <div class="form-group margem-cima-20 row">
                <label for="telefone" class="margem-cima-5">Telefone:</label>
                <input type="text" class="form-control input-largura-130 margem-esquerda-10" maxlength="14" id="txt-telefone" placeholder="(xx) 9999-9999">                <label
                    for="celular" class="margem-cima-5 margem-esquerda-20">*Celular:</label>
                <input type="text" class="form-control input-largura-150 margem-esquerda-5" maxlength="15" id="txt-celular" placeholder="(xx) 99999-9999">
            </div>

            <div class="form-group margem-cima-20 row">
                <b>Endereço</b>
            </div>

            <div class="form-group margem-cima-20 row">
                <label for="txt-logradouro" class="margem-cima-5">*Logradouro:</label>
                <input type="text" class="form-control input-largura-500 margem-esquerda-5" id="txt-logradouro" placeholder="(xx) 9999-9999">

                <label for="txt-numero" class="margem-cima-5 margem-esquerda-20">*Número:</label>
                <input type="text" class="form-control input-largura-100 margem-esquerda-20" maxlength="8" id="txt-numero">

            </div>

            <div class="form-group margem-cima-20 row">
                <label for="txt-cep" class="margem-cima-5 ">*CEP:</label> <input type="text" class="form-control input-largura-100 margem-esquerda-50"
                    id="txt-cep"> <label for="txt-cep" class="margem-cima-5 margem-esquerda-20">*Bairro:</label>
                <input type="text" class="form-control input-largura-200 margem-esquerda-20" id="txt-bairro">

            </div>

            <div class="form-group margem-cima-30 row">
                <label for="txt-cep" class="margem-cima-5 ">*País:</label> <select id="pais" class="margem-esquerda-20 form-control input-largura-200"></select>


                <label id="lblEstado" for="estado" class="margem-cima-5 margem-esquerda-20">*Estado:</label>
                <input type="text" id="input-estado" class="form-control input-largura-180 margem-esquerda-20 hide" />
                <select id="estado" class="form-control input-largura-200 margem-esquerda-20"></select>

                <label id="lblCidade" for="cidade" class="margem-cima-5 margem-esquerda-20">*Cidade:</label>
                <input id="input-cidade" type="text" class="form-control input-largura-250 margem-esquerda-20 hide" />
                <select id="cidade" class="form-control input-largura-180 margem-esquerda-20"></select>

            </div>

            <div class="form-group margem-cima-20 row">
                <b>Informações de login</b>
            </div>

            <div class="form-group margem-cima-30 row">
                <label for="email" class="margem-cima-5 ">*Email:</label> <input type="text" id="input-email" class="form-control input-largura-300 margem-esquerda-20"
                />

            </div>

            <label id="avisoSenha" class="texto-vermelho margem-cima-20 hide">A senha deve possuir 6 ou mais digitos, uma
                letra maiuscula e um caractere especial</label>

            <div class="form-group margem-cima-20 row">
                <label for="senha">*Senha:</label> <input type="password" id="senha" class="form-control input-largura-300 margem-esquerda-20"
                />

                <label for="senhaRepetida" class="margem-cima-5 margem-esquerda-20">*Repita a senha:</label> <input type="password"
                    id="senhaRepetida" class="form-control input-largura-300 margem-esquerda-20" />

            </div>
            <button id="submit" class="btn btn-primary">Cadastrar</button>
        </form>
    </div>
</body>
</html>