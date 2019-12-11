<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="Es-es">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Incio</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body id="inicio">
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
						<li class="nav-item"><a id="toAdopcion"
							class="nav-link text-white"><i class="fas fa-dog"></i>
								Adopcion</a></li>
						<li class="nav-item"><a id="toEventos" class="nav-link text-white"><i
								class="far fa-calendar-alt"></i> Eventos</a></li>
						<li class="nav-item"><a id="toSignUp"
							class="nav-link text-white"><i class="fas fa-user"></i>
								Sign-Up</a></li>

					</ul>
				</div>
			</div>

		</nav>
	</header>
	<div class="container-fluid">
		<div class="col-sm-1"><br></div>
		<div class="row">
			<div class="col-sm-1"></div>

			<div class="col-sm-10">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3057.
				193559669703!2d-0.026772784617273563!3d39.981779579418095!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.
				1!3m3!1m2!1s0xd5fffd89c0f2021%3A0xf25ca9c4300b0f13!2sAv.
				%20dels%20Germans%20Bou%2C%2079%2C%2012003%20Castell%C3%B3%20de%20la%20Plana%2C%20Castell%C3%B3!5e0!3m2!1sen!2ses!4v1575808833772!5m2!1sen!2ses" 
				width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>				
			</div>


			<div class="col-sm-1"></div>


		</div>

	</div>

			<div class="foot">
				<div class="row">
					<div class="p-4 col-md-3 social">
						<h2 class="mb-4">Social Media</h2>
						<a href="https://www.facebook.com/" target="_blank"><i
							class="fab fa-facebook-square"></i></a> <a
							href="https://twitter.com/" target="_blank"><i
							class="fab fa-twitter-square"></i></a> <a
							href="https://www.instagram.com/" target="_blank"><i
							class="fab fa-instagram"></i></a> <a
							href="https://www.youtube.com/?hl=es&gl=ES" target="_blank"><i
							class="fab fa-youtube"></i></a>
					</div>
					<div class="p-4 col-md-3 footli">
						<h2 class="mb-4">Mapsite</h2>
						<ul class="list-unstyled">
							<li><a id="toIndex1"><i class="fas fa-home"></i>
									Incio</a></li>
							<br>
							<li><a id="toAdopcion1"><i class="fas fa-dog"></i>
									Adopcion</a></li>
							<br>
							<li><a id="toEventos1"><i class="far fa-calendar-alt"></i>
									Eventos</a></li>
							<br>
							<li><a id="toSignUp1"><i class="fas fa-user"></i>
									Sign-Up</a></li>
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
							<a href="#" class="text-white"> <i class="fa fa-map "></i>
								Av. Hermanos Bou, numero 79, 12003 Castellon de la Plana.

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