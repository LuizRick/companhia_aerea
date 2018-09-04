
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
              pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <jsp:include page="layout/header.jsp"></jsp:include>
  </head>

  <body>
    <jsp:include page="layout/navigation.jsp" />

    <body background="img/asa_do_aviao.jpg" style="width: 100%; height: 100%; overflow-x: hidden">

      <div class="conteiner">
        <div class="row">
          <div class="fundo-amarelo margem-esquerda-100 margem-cima-20 margem-baixo-20" style="width: 350px; height: 450px">
            <form>
              <div class="form-group margem-cima-20 margem-esquerda-10">
                <b>Pesquise suas viagens</b>
              </div>
              <div class="form-group margem-esquerda-20">
                <input type="radio" name="tipoViagem" checked><label class="margem-esquerda-10">Somente Ida</label>
                <input type="radio" class="margem-esquerda-20" name="tipoViagem"><label class="margem-esquerda-10">Ida e
                  Volta</label>
              </div>

              <div class="form-group margem-esquerda-20">
                <label class="margem-direita-10"><b>Origem</b></label><input class="input-largura-300" id="origem" type="text">

              </div>
              <div class="form-group margem-esquerda-20">
                <label class="margem-direita-10"><b>Destino</b></label><input class="input-largura-300" id="origem" type="text">

              </div>
              <div class="form-group margem-esquerda-30">
                <label class="margem-direita-10"><b>Ida</b></label><input class="input-largura-80 texto-input-centro" id="origem"
                  type="text">
                <label class="margem-direita-10 margem-esquerda-20"><b>Volta</b></label><input class="texto-input-centro input-largura-80"
                  id="origem" type="text">

              </div>
              <div class="form-group margem-esquerda-15 margem-cima-40">
                <input type="button" value="Buscar" class="fundo-azul botao-borda-arredondada input-largura-320 input-altura-50">
              </div>
            </form>

          </div>

        </div>

      </div>
      <footer class="page-footer font-small fundo-cinza pt-4">

        <!-- Footer Links -->
        <div class="container-fluid text-center text-md-left">

          <!-- Grid row -->
          <div class="row">

            <!-- Grid column -->
            <div class="col-md-6 mt-md-0 mt-3">

              <!-- Content -->
              <h5 class="text-uppercase">Footer Content</h5>
              <p>Here you can use rows and columns here to organize your footer content.</p>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none pb-3">

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

              <!-- Links -->
              <h5 class="text-uppercase">Links</h5>

              <ul class="list-unstyled">
                <li>
                  <a href="#!"></a>
                </li>
                <li>
                  <a href="#!"></a>
                </li>
                <li>
                  <a href="#!"></a>
                </li>
                <li>
                  <a href="#!"></a>
                </li>
              </ul>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

              <!-- Links -->
              <h5 class="text-uppercase">Links</h5>

              <ul class="list-unstyled">
                <li>
                  <a href="#!"></a>
                </li>
                <li>
                  <a href="#!"></a>
                </li>
                <li>
                  <a href="#!"></a>
                </li>
                <li>
                  <a href="#!"></a>
                </li>
              </ul>

            </div>
            <!-- Grid column -->

          </div>
          <!-- Grid row -->

        </div>
        <!-- Footer Links -->

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© 2018 Copyright

        </div>
        <!-- Copyright -->

      </footer>
      <!-- Footer -->
    </body>
  </body>

  </html>