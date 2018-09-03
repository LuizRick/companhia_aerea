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
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header">
                            Gerenciamento de voo
                            <a href="/voos/criar" class="btn btn-primary">Adicionar</a>
                        </div>
                        <div class="card-body">
                            <form action="javascript:void(0)" id="frmPesquisa">
                                <div class="form-row">
                                    <div class="form-group col-md-5">
                                        <input type="text" placeholder="pesquisa" class="form-control" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <table class="table table-hover">
                                	<thead>
                                		<tr>
                                			<td>Descrição</td>
                                			<td>Origem/Destino</td>
                                			<td>Horario e dias da semana</td>
                                			<td>assentos/ beso</td>
                                			<td>Status</td>
                                		</tr>
                                	</thead>
                                	<tbody>
                                		<tr>
                                			<td>VOO 300</td>
                                			<td>SÃO PAULO -> BRASILIA</td>
                                			<td>S/T/Q</td>
                                			<td>16 assentos/500kg</td>
                                			<td>Ativo</td>
                                		</tr>
                                	</tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>