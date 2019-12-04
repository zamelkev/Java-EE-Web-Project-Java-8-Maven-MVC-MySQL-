<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<li class="nav-item"><a href="" class="nav-link text-white"><i
								class="far fa-calendar-alt"></i> Eventos</a></li>
						<li class="nav-item active"><a href="signup.jsp"
							class="nav-link text-white"><i class="fas fa-user"></i>
								Sign-Up</a></li>

					</ul>
				</div>
			</div>

		</nav>

		<div class="container formcon">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<h3 class="text-warning">Registrarse</h3>
					<form action="" id="form1">

						<div class="form-group row">

							<label for="nombre" class="col-sm-3 col-form-label text-white">Nombre:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="nombre"
									placeholder="Escribe tu nombre"
									pattern="^([A-Z]{1}[a-zñáéíóú]+[\s]*)+$" required>
								<!---   <span id="infoNomb">Nombre es incorrecto!!!</span>-->
							</div>

						</div>
						<!---div for surnames -->
						<div class="form-group row">
							<label for="primerApellido"
								class="col-sm-3 col-form-label text-white">Primer
								Apellido:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="primerApellido"
									placeholder="Escribe tu Primer Apellido" required
									pattern="^([A-Z]{1}[a-zñáéíóú]+[\s]*)+$">
								<!-- <span id="infoApel">primero Apellidos es incorrecto!!!</span> -->
							</div>

						</div>

						<div class="form-group row">
							<label for="segundoApellido"
								class="col-sm-3 col-form-label text-white">Segundo
								Apellido:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="segundoApellido"
									placeholder="Escribe tu Segundo Apellido" required
									pattern="^([A-Z]{1}[a-zñáéíóú]+[\s]*)+$">
								<!-- <span id="infoApel">Segundo Apellidos es incorrecto!!!</span> -->
							</div>

						</div>
						<div class="form-group row">
							<label for="direccion" class="col-sm-3 col-form-label text-white">Dirección:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="direccion"
									placeholder="Escribe tu dirección" required
									pattern="^([A-Z]{1}[a-zñáéíóú]+[\s]*)+$">
								<!-- <span id="infoApel">Segundo Apellidos es incorrecto!!!</span> -->
							</div>

						</div>

						<!---div for mail -->
						<div class="form-group row">
							<label for="correo" class="col-sm-3 col-form-label text-white">Correo:</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" id="correo"
									placeholder="Escribe tu Correo" required
									pattern="^[\w]+@{1}[\w]+\.[a-z]{2,3}$">
								<!-- <span id="infoCo">Correo incorrecto!!!!</span> -->
							</div>
						</div>
						<div class="form-group row">
							<label for="tel" class="col-sm-3 col-form-label text-white">Teléfono:</label>
							<div class="col-sm-9">
								<input type="tel" class="form-control" id="tel"
									placeholder="Escribe tu Teléfono de contacto"
									pattern="^[9|6]{1}([\d]{2}[-]*){3}[\d]{2}$" required>
								<!-- <span id="infoTel">Numero de telefono es incorrecto!!!</span> -->
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-3 col-form-label text-white">Elige
								tu TipoTelefono</label>
							<div class="col-sm-9">
								<select class="custom-select my-1 mr-sm-4" id="tipoTel">
									<option></option>
								</select>
							</div>
						</div>
						<div class="col-md-10">
							<input type="submit" class="btn btn-primary" value="Enviar">
						</div>


					</form>

				</div>
				<div class="col-md-1"></div>

			</div>
		</div>

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






	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/22e0b86cee.js"></script>
</body>
</html>