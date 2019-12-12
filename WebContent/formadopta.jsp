<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="Es-es">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>AdotpaMe</title>
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
						<li class="nav-item active"><a id="toIndex"
							class="nav-link text-white"><i class="fas fa-home"></i> Incio</a></li>
						<li class="nav-item"><a id="toAdopcion"
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
	<div class="container formcon">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
			<jsp:useBean id="m" class="modelo.Modelo" scope="page"></jsp:useBean>
				<h3 class="text-warning">Please fill the form</h3>
				<form action="" id="form2">



					
					<div class="form-group row">
						<label class="col-sm-3 col-form-label text-white">Elige tu
							Tipo De Mascota</label>
						<div class="col-sm-9">
							<select class="custom-select my-1 mr-sm-4" id="tipoMas">
								<option></option>

								<c:forEach items="${m.tipoMascotas}" var="tm">
									<option value="${tm.id}">${tm.descMascota}</option>

								</c:forEach>

							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 col-form-label text-white">Elige tu
							Mascota</label>
						<div class="col-sm-9">
							<select class="custom-select my-1 mr-sm-4" id="Mas">
								<option></option>

								<c:forEach items="${m.mascotas}" var="m">
								<option value="${m.id}">${m.nombre}</option>

								</c:forEach>

							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 col-form-label text-white">persona
							</label>
						<div class="col-sm-9">
							<select class="custom-select my-1 mr-sm-4" id="per">
								<option></option>

								<c:forEach items="${m.personas}" var="p">
								<option value="${p.id}">${p.nombre}</option>

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
	<script type="text/javascript">
		
	</script>
</body>
</html>