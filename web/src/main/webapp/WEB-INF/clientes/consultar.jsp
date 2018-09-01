<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
			pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
        <jsp:include page="../layout/header.jsp"></jsp:include>
        <script src="../resources/js/cliente.js"></script>
    </head>

    <body>
        <jsp:include page="../layout/navigation.jsp" />
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <fieldset>
                        <legend>Filtros</legend>
                        <form id="consultar" action="javascript:void(0)">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="nome">Nome:</label> <input type="text" id="txt-nome" class="form-control"
                                    />
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Email:</label> <input type="text" id="txt-email" class="form-control" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>CPF:</label>
                                    <input type="text" id="txt-cpf" class="form-control" />
                                </div>
                                <div class="form-group col-md-6">
                                    <label>RG:</label>
                                    <input type="text" id="txt-rg" class="form-control" />
                                </div>
                            </div>
                            <button id="btnConsultar" class="btn btn-primary">buscar</button>
                        </form>
                    </fieldset>
                </div>
                <div class="col-lg-12">
                    <table class="table table-hover" id="clientes">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Telefone</th>
                                <th>Data Nascimento</th>
                                <th>CPF</th>
                                <th>RG</th>
                                <th>email</th>
                                <th>celular</th>
                                <th>ações</th>
                            </tr>
                        </thead>
                        <tbody>
							
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>

    </html>