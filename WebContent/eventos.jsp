<%@page import="modelo.TipoTelefono"%>
<%@page import="modelo.Modelo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="Es-es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Signup</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body id="main-body">

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
						<li class="nav-item"><a href="index.jsp"
							class="nav-link text-white"><i class="fas fa-home"></i> Incio</a></li>
						<li class="nav-item"><a href="adopcion.jsp"
							class="nav-link text-white"><i class="fas fa-dog"></i>
								Adopcion</a></li>
						<li class="nav-item active"><a href="eventos.jsp" class="nav-link text-white"><i
								class="far fa-calendar-alt"></i> Eventos</a></li>
						<li class="nav-item "><a href="signup.jsp"
							class="nav-link text-white"><i class="fas fa-user"></i>
								Sign-Up</a></li>

					</ul>
				</div>
			</div>

		</nav>
	</header>
	<div class="foot">
		<div class="row">
			<div class="p-4 col-md-3 social">
				<h2 class="mb-4">Social Media</h2>
				<a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-square"></i></a>
			<a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter-square"></i></a>
			<a href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a>
			<a href="https://www.youtube.com/?hl=es&gl=ES" target="_blank"><i class="fab fa-youtube"></i></a>
			</div>
			<div class="p-4 col-md-3 footli">
				<h2 class="mb-4">Mapsite</h2>
				<ul class="list-unstyled">
					<li><a href="index.jsp" ><i class="fas fa-home"></i> Incio</a></li>
					<br>
					<li><a href="adopcion.jsp"><i class="fas fa-dog"></i> Adopcion</a></li>
					<br>
					<li><a href="#" ><i
								class="far fa-calendar-alt"></i> Eventos</a></li>
					<br>
					<li><a href="signup.jsp"><i class="fas fa-user"></i>
								Sign-Up</a></li>
				</ul>
			</div>
			<div class="p-4 col-md-3 cont">
				<h2 class="mb-4">Contacto</h2>
				<p>
					<a href="#" class="text-white"> <i
						class="fa fa-phone"></i> +34-678942577
						
					</a>
				</p>
				<p>
					<a href="#" class="text-white"> <i
						class="fa fa-envelope-o"></i> adoptame.cs@gmail.com
					</a>
				</p>
				<p>
					<a href="#" class="text-white"> <i
						class="fa fa-map "></i> Av. Hermanos Bou, numero 79, 
						12003 Castellon de la Plana.
						
					</a>
				</p>
			</div>
			<div class="p-4 col-md-3">
				<h2 class="mb-4">Suscribirse</h2>
				<form>
					<fieldset class="form-group">
						<label for="exampleInputEmail1"></label> Suscribirse a nuestro newsletter <input
							type="email" class="form-control" placeholder="Enter email">
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
</body>
</html>