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
                    <form action="javascript:void(0)" id="frmCadastroBagagem">
                    <fieldset>
                    	<legend>Cliente/Voo</legend>
                    	<div class="form-row">
                    		<div class="form-group col-md-6">
                    			<label>CPF:</label>
                    			<input type="text" id="txt-cpf" class="form-control" required/>
                    		</div>
                    		<div class="form-group col-md-6">
                    			<label>Numero Voo:</label>
                    			<input type="text" id="txt-voo" class="form-control" required/>
                    		</div>
                    	</div>
                    </fieldset>
                        <fieldset>
                            <legend>Medidas</legend>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="txt-altura">*Altura</label>
                                    <input type="text" id="txt-altura" class="form-control" required="required" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="txt-largura">*Largura</label>
                                    <input type="text" id="txt-largura" class="form-control" required="required" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="txt-comprimento">*Comprimento</label>
                                    <input type="text" id="txt-comprimento" class="form-control" required="required" />
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Infor.</legend>
                            <div class="form-row">
                                <div class="col-md-4 mb-3">
                                    <label for="txt-peso">Peso</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="txt-peso" required>
                                        <div class="input-group-append">
                                            <span class="input-group-text">KG</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="sel-status">*Status:</label>
                                    <select id="sel-status" class="form-control">
                                        <option value="true">Ativo</option>
                                        <option value="false">Inativo</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-2">
                                	<label>*Qtd.</label>
                                	<input type="number" class="form-control" id="txt-quantidade" required/>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="txt-taxa">*Taxa</label>
                                    <input type="text" id="txt-taxa" class="form-control" disabled="disabled" required="required" />
                                </div>
                            </div>
                        </fieldset>
                        <button class="btn btn-primary" id="btnSalvar" type="submit">Salvar</button>
                    </form>
                </div>
            </div>
        </div>
    </body>

    </html>