<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
        <jsp:include page="../layout/header.jsp"></jsp:include>
        <script src="/resources/js/cliente.js"></script>
    </head>

    <body>
        <jsp:include page="../layout/navigation.jsp"></jsp:include>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <form action="javascript:void(0)">
                        <div class="form-row">
                            <div class="form-group col-md-8">
                                <label for="txt-nome">*Nome:</label>
                                <input type="text" id="txt-nome" class="form-control" value="${cliente.nome}" />
                            </div>
                            <div class="form-group col-md-4">
                                <label for="txt-nascimento">*Data de Nascimento</label>
                                <input type="text" id="txt-nascimento" class="form-control" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="txt-rg">*RG</label>
                                <input type="text" id="txt-rg" class="form-control" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="txt-cpf">*CPF</label>
                                <input type="text" id="txt-cpf" class="form-control" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="txt-telefone">*Telefone</label>
                                <input type="text" id="txt-telefone" class="form-control" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="txt-celular">*Celular</label>
                                <input type="text" id="txt-celular" class="form-control" />
                            </div>
                        </div>
                        <!--  Endereço (logradouro numero) -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="txt-logradouro">*Logradouro</label>
                                <input type="text" id="txt-logradouro" class="form-control" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="txt-numero">*Numero</label>
                                <input type="text" id="txt-numero" class="form-control" />
                            </div>
                        </div>
                        <!-- Fim endereço -->
                        <!-- CEP , BAIRRO  -->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="txt-cep">*CEP</label>
                                <input type="text" id="txt-cep" class="form-control" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="txt-bairro">*Bairro</label>
                                <input type="text" id="txt-bairro" class="form-control" />
                            </div>
                        </div>
                        <!-- FIM : CEP , BAIRRO -->
                        <!--  Pais estado cidade -->
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="pais">*Pais</label>
                                <select id="pais" class="form-control"></select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="estado">*Estado</label>
                                <select id="estado" class="form-control"></select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="cidate">*Cidade</label>
                                <select id="cidade" class="form-control"></select>
                            </div>
                        </div>
                        <!-- FIM: pais estado cidade -->
                        <!-- login -->
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="txt-email">*Email</label>
                                <input type="text" id="txt-email" class="form-control" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="senha">*Senha</label>
                                <input type="password" id="senha" class="form-control" />
                                <div class="invalid-feedback" id="avisoSenha">
                                    Please provide a valid city.
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="txt-">*Repita a senha</label>
                                <input type="password" id="senhaRepetida" class="form-control" />
                            </div>
                        </div>
                        <!--  FIM: login -->
                        <button class="btn btn-primary" id="editar">Alterar</button>
                    </form>
                </div>
            </div>
        </div>
    </body>

    </html>