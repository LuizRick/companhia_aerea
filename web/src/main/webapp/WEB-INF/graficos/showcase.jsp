<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="../layout/header.jsp"></jsp:include>
<script src="/resources/js/Chart.bundle.min.js"></script>
<script src="/resources/js/graficos.js"></script>
<link rel="stylesheet" href="/resources/css/graficos.css"/>
</head>
<body>
	<jsp:include page="../layout/navigation.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h3>paises com passagens mais compradas</h3>
				<div class="graphContainer">
					<canvas id="grafico1"></canvas>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h3>Quantidade de pessoas que compram passagem e fazem check in</h3>
				<div class="graphContainer">
					<canvas id="grafico2"></canvas>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h3>quantidade de pessoas que fazem check in e embarcam</h3>
				<div class="graphContainer">
					<canvas id="grafico3"></canvas>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h3>tempo médio do check in até o embarque</h3>
				<div class="graphContainer">
					<canvas id="grafico4"></canvas>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h3>quantidade de pessoas q compram passagem e embarcam</h3>
				<div class="graphContainer">
					<canvas id="grafico5"></canvas>
				</div>
			</div>
		</div>
	</div>
</body>
</html>