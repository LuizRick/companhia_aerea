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
        	<div class="row" style="padding-top:50px">
        		<div class="col-lg-12">
        			<div class="card">
        				<div class="card-header">
        					Criar conta Operador
        				</div>
        				
        				<div class="card-body">
        					<form action="javascript:void(0)">
        						<div class="form-row">
        							<div class="form-group col-md-7">
        								<label>Nome:</label>
        								<input type="text" class="form-control">
        							</div>
        							<div class="form-group col-md-5">
        								<label>CPF</label>
        								<input type="text" class="form-control" />	
        							</div>
        						</div>
        						<div class="form-row">
        							<div class="form-group col-md-12">
        								<label>Email: </label>
        								<input type="text" class="form-control" />
        							</div>
        						</div>
        						<div class="form-row">
        						<div class="form-group col-md-6">
        								<label>Senha: </label>
        								<input type="password" class="form-control" />
        							</div>
        							<div class="form-group col-md-6">
        								<label>Repetir senha: </label>
        								<input type="password" class="form-control" />
        							</div>
        						</div>
        						<button class="btn btn-primary">
        							<i class="fa fa-plus"></i>
        							Criar conta
        						</button>
        					</form>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
    </body>

    </html>