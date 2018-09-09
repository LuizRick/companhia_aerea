<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
        <jsp:include page="../layout/header.jsp"></jsp:include>
        <script src="/resources/js/bagagem.js"></script>
    </head>

    <body>
        <jsp:include page="../layout/navigation.jsp"></jsp:include>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <form action="javascript:void(0)" id="frmConsultarBagagem">
                        <fieldset>
                            <legend>Formulario consulta</legend>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Cliente CPF</label>
                                    <input type="text" id="txt-cpf" class="form-control" />
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Numero Voo:</label>
                                    <input type="text" id="txt-voo" class="form-control" />
                                </div>
                            </div>
                        </fieldset>
                        <button type="submit" class="btn btn-primary" id="btnConsultar">Consutlar</button>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Cliente</th>
                                    <th>Voo</th>
                                    <th>Altura</th>
                                    <th>Largura</th>
                                    <th>Comprimento</th>
                                    <th>Qtd.</th>
                                    <th>Peso</th>
                                    <th>Ativo</th>
                                    <th>Ações</th>
                                </tr>
                            </thead>
                            <tbody id="resultado_pesquisa">

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>