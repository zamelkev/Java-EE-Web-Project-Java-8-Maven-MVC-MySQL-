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
						<li class="nav-item"><a id="toIndex"
							class="nav-link text-white"><i class="fas fa-home"></i> Incio</a></li>
						<li class="nav-item"><a id="toAdopcion"
							class="nav-link text-white"><i class="fas fa-dog"></i>
								Adopcion</a></li>
						<li class="nav-item"><a id="toEventos"
							class="nav-link text-white"><i class="far fa-calendar-alt"></i>
								Eventos</a></li>
						<li class="nav-item active"><a id="toSignUp"
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
									placeholder="Escribe tu dirección" required>
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
							<label for="usuario" class="col-sm-3 col-form-label text-white">Usuario:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="usuario"
									placeholder="Escribe tu dirección" required>
								<!-- <span id="infoApel">Segundo Apellidos es incorrecto!!!</span> -->
							</div>

						</div>
						<div class="form-group row">
							<label for="password" class="col-sm-3 col-form-label text-white">Password:</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="password"
									placeholder="Escribe una usuario" required>
								<!-- <span id="infoCo">Correo incorrecto!!!!</span> -->
							</div>
						</div>
						<div class="form-group row">
							<label for="telefono" class="col-sm-3 col-form-label text-white">Teléfono:</label>
							<div class="col-sm-9">
								<input type="tel" class="form-control" id="telefono"
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
									<jsp:useBean id="m" class="modelo.Modelo" scope="page"></jsp:useBean>
									<c:forEach items="${m.tipoTelefonos}" var="tt">
										<option value="${tt.id }">${tt.descTipotel }</option>

									</c:forEach>

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
					<a href="mailto:adoptame.cs@gmail.com" class="text-white"> <i
						class="fa fa-envelope-o"></i> adoptame.cs@gmail.com
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






	<script>
		var idTipoTelefono = "";

		document.getElementById("tipoTel").addEventListener(
				"change",
				function() {
					idTipoTelefono = this.options[this.selectedIndex].value;

					console.log("Id del tipoTelefono.Seleccionado ="
							+ idTipoTelefono);
				});

		/*para guardar los datos en formato ajax y json */

		document
				.getElementById("form1")
				.addEventListener(
						"submit",
						function() {
							event.preventDefault();
							event.stopPropagation();

							var objPersona = new Object();

							objPersona.id = 0;
							objPersona.nombre = document
									.getElementById("nombre").value;
							objPersona.primerApellido = document
									.getElementById("primerApellido").value;
							objPersona.segundoApellido = document
									.getElementById("segundoApellido").value;
							objPersona.direccion = document
									.getElementById("direccion").value;
							objPersona.correo = document
									.getElementById("correo").value;
							objPersona.usuario = document
									.getElementById("usuario").value;
							objPersona.password = document
									.getElementById("password").value;
							objPersona.telefono = document
									.getElementById("telefono").value;
							objPersona.tipoTelefono = idTipoTelefono;

							console.log(objPersona);

							var strObjPersonaJSON = JSON.stringify(objPersona);
							console.log(strObjPersonaJSON);

							var http = new XMLHttpRequest();
							http.onreadystatechange = function() {
								if (this.readyState == 4 && this.status == 200) {
									var rtaRecibida = this.responseText;

									/* var objRtaRecibida = JSON.parse(rtaRecibida);
									console.log("JSON convertido a Objecto JavaScript");
									console.log(objRtaRecibida);  */
									if (rtaRecibida == "SavedCorrectly") {
										location.href = "http://localhost:8080/ProyectoTransverWeb/welcome.jsp"
									} else {
										location.href = "http://localhost:8080/ProyectoTransverWeb/index.jsp"
									}

								}

							}

							http.open("POST", "InsertaPersona", true);

							http.setRequestHeader("Content-type",
									"application/x-www-form-urlencoded");
							http.send("persona=" + strObjPersonaJSON);

						});
	</script>

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

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/22e0b86cee.js"></script>
</body>
</html>