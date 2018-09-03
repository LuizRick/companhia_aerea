<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
        <jsp:include page="../layout/header.jsp"></jsp:include>
    </head>

    <body>
        <jsp:include page="../layout/navigation.jsp"></jsp:include>
        <div class="container-fluid">
            <div class="row">
            <div class="col-lg-12">
            	<h4>Menu</h4>
            	<ul	class="nav nav-tabs">
            		<li class="nav-item">
            			<a href="#" class="nav-link active">Cadastro de bagagens</a>
            		</li>
            		<li class="nav-item">
            			<a href="#" class="nav-link">Consultar de bagagens</a>
            		</li>
            	</ul>
            </div>
                <div class="col-lg-12" style="padding-top:12px">
                    <div class="card">
                        <div class="card-header">
                            Cadastro de bagagens (Alfandega)
                        </div>
                        <div class="card-body">
                            <form action="javascript:void(0)">
                                <fieldset>
                                    <legend>Dados de vooo:</legend>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>CPF Cliente</label>
                                            <input type="text" class="form-control" />
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>Vooo:</label>
                                            <input type="text" class="form-control" />
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>Controle de bagagem</legend>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Peso:</label>
                                            <input type="number" class="form-control" />
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>Quantidade</label>
                                            <input type="number" class="form-control" />
                                        </div>
                                        <div class="form-group col-md-2 form-check">
                                            <input type="checkbox" class="form-check-input" />
                                            <label>Aprovado</label>
                                        </div>
                                    </div>
                                </fieldset>
                                <button class="btn btn-primary">Salvar</button>
                                <button class="btn btn-primary">Gerar <span title="Declaração de Bagagem Acompanhada">DBA</span></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>