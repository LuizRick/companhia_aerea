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
                    <fieldset>
                        <legend>Novo voo</legend>
                        <form action="javascript:void(0)">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label>Descrição</label> <input type="text" placeholder="descrição" class="form-control"
                                    />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Inicio</label> <input type="date" class="form-control"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Fim</label> <input type="date" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Origem</label> <select class="form-control"></select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Destino</label> <select class="form-control"></select>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-7">
                                    <label>Dias da semana</label> <select class="form-control"></select>
                                </div>
                                <div class="form-group col-md-5">
                                    <label>Peso maximo</label>
                                    <input type="number" class="form-control" />
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label>Min.assentos</label>
                                    <input type="number" class="form-control" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Max.assentos</label>
                                    <input type="number" class="form-control" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Horario</label>
                                    <input type="time" class="form-control" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group form-check col-md-2">
                                    <input type="checkbox" class="form-check-input" />
                                    <label>Ida e Volta</label>
                                </div>
                                <div class="form-group col-md-2 form-check">
                                    <input type="checkbox" class="form-check-input" />
                                    <label>Ativo</label>
                                </div>
                            </div>
                            <button class="btn btn-primary">Salvar</button>
                        </form>
                    </fieldset>
                </div>
            </div>
        </div>
    </body>

    </html>