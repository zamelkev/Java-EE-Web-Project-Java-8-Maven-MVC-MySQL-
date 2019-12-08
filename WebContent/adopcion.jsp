<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="Es-es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Adopcion</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body id="adop">
	<header class="main-header">
		<nav class="navbar navbar-expand-md navbar-dark bg-dark mynav">
			<div class="container">
				<div class="navbar-header">
					<img src="images/logo3.png" class="logo"> <a
						class="navbar-brand text-warning font-weight-bold" href="#"></a>
					<button type="button" class="navbar-toggler" data-toggle="collapse"
						data-target="#collapsenavbar">
						<span class="navbar-toggler-icon"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse justify-content-center"
					id="collapsenavbar">
					<ul class="navbar-nav ml-auto ">
						<li class="nav-item"><a id="toIndex"
							class="nav-link text-white"><i class="fas fa-home"></i> Incio</a></li>
						<li class="nav-item active"><a id="toAdopcion"
							class="nav-link text-white"><i class="fas fa-dog"></i>
								Adopcion</a></li>
						<li class="nav-item"><a id="toEventos"
							class="nav-link text-white"><i class="far fa-calendar-alt"></i>
								Eventos</a></li>
						<li class="nav-item"><a id="toSignUp"
							class="nav-link text-white"><i class="fas fa-user"></i>
								Sign-Up</a></li>

					</ul>
				</div>
			</div>

		</nav>

	</header>
	<div class="container-fluid adopage">
		<jsp:useBean id="m" class="modelo.Modelo" scope="page"></jsp:useBean>
		<%
			int cont = 0;
		%>
		<c:forEach items="${m.mascotas}" var="ms">

			<%
				if (cont == 0 || cont % 4 == 0) {
						cont++;
			%>
			<div class="row">
				<div class="col-md-3 card adopag" style="width: 18rem;">

					<img src="${ms.images }" class="card-img-top" alt="${ms.id }">
					<div class="card-body">
						<p class="card-text">${ms.descMascota }</p>
						<p class="card-text">${ms.nombre }</p>
						<p class="card-text">${ms.fechaNacimento}</p>

					</div>
				</div>
				<%
					} else {
				%>
				<div class="col-md-3 card adopag" style="width: 18rem;">

					<img src="${ms.images }" class="card-img-top" alt="${ms.id }">
					<div class="card-body">
						<p class="card-text">${ms.descMascota }</p>
						<p class="card-text">${ms.nombre }</p>
						<p class="card-text">${ms.fechaNacimento}</p>

					</div>
				</div>

				<%
					}
				%>

				<%
					if (cont == 4) {
				%>

			</div>
			<%
				}
			%>

		</c:forEach>
	</div>


	<div class="foot">
		<div class="row">
			<div class="p-4 col-md-3 social">
				<h2 class="mb-4">Social Media</h2>
				<a href="https://www.facebook.com/" target="_blank"><i
					class="fab fa-facebook-square"></i></a> <a href="https://twitter.com/"
					target="_blank"><i class="fab fa-twitter-square"></i></a> <a
					href="https://www.instagram.com/" target="_blank"><i
					class="fab fa-instagram"></i></a> <a
					href="https://www.youtube.com/?hl=es&gl=ES" target="_blank"><i
					class="fab fa-youtube"></i></a>
			</div>
			<div class="p-4 col-md-3 footli">
				<h2 class="mb-4">Mapsite</h2>
				<ul class="list-unstyled">
					<li><a id="toIndex1"><i class="fas fa-home"></i> Incio</a></li>
					<br>
					<li><a id="toAdopcion1"><i class="fas fa-dog"></i>
							Adopcion</a></li>
					<br>
					<li><a id="toEventos1"><i class="far fa-calendar-alt"></i>
							Eventos</a></li>
					<br>
					<li><a id="toSignUp1"><i class="fas fa-user"></i> Sign-Up</a></li>
				</ul>
			</div>
			<div class="p-4 col-md-3 cont">
				<h2 class="mb-4">Contacto</h2>
				<p>
					<a href="tel:+34-678942577" class="text-white"> <i class="fa fa-phone"></i>
								+34-678942577

					</a>
				</p>
				<p>
					<a href="mailto:adoptame.cs@gmail.com" class="text-white"> <i class="fa fa-envelope-o"></i>
						adoptame.cs@gmail.com
					</a>
				</p>
				<p>
					<a href="toGoogleMaps" class="text-white"> <i class="fa fa-map "></i> Av.
						Hermanos Bou, numero 79, 12003 Castellon de la Plana.

					</a>
				</p>
			</div>
			<div class="p-4 col-md-3">
				<h2 class="mb-4">Suscribirse</h2>
				<form>
					<fieldset class="form-group">
						<label for="exampleInputEmail1"></label> Suscribirse a nuestro
						newsletter <input type="email" class="form-control"
							placeholder="Enter email">
					</fieldset>
					<button type="submit" class="btn btn-success">Submit</button>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 mt-3">
				<p class="text-center">© Copyright 2019 AdoptaMe - All rights
					reserved.</p>
			</div>
		</div>
	</div>




	<script type="text/javascript" src="/js/adoption.js">
		
	</script>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/22e0b86cee.js"></script>

	<script>
		document.getElementById("toIndex").addEventListener("click",
				function() {
					location.href = "MuestraIndexController?=";

				});
	</script>
	<script>
		document.getElementById("toAdopcion").addEventListener("click",
				function() {
					location.href = "MuestraAdopcionController?=";

				});
	</script>
	<script>
		document.getElementById("toEventos").addEventListener("click",
				function() {
					location.href = "MuestraEventosController?=";

				});
	</script>
	<script>
		document.getElementById("toSignUp").addEventListener("click",
				function() {
					location.href = "MuestraSignUpController?=";

				});
	</script>

	<script>
		document.getElementById("toIndex1").addEventListener("click",
				function() {
					location.href = "MuestraIndexController?=";

				});
	</script>
	<script>
		document.getElementById("toAdopcion1").addEventListener("click",
				function() {
					location.href = "MuestraAdopcionController?=";

				});
	</script>
	<script>
		document.getElementById("toEventos1").addEventListener("click",
				function() {
					location.href = "MuestraEventosController?=";

				});
	</script>
	<script>
		document.getElementById("toSignUp1").addEventListener("click",
				function() {
					location.href = "MuestraSignUpController?=";

				});
	</script>
	<script>
		document.getElementById("toGoogleMaps").addEventListener("click",
				function() {
					location.href = "MuestraGoogleMapsController?=";

				});
	</script>
</body>
</html>