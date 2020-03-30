<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0" />
<title>Escolas</title>

<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<link href="${pageContext.request.contextPath}/assets/css/style.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/assets/css/materialize.min.css"
	rel="stylesheet">

	
<!--  Scripts -->
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/materialize.js"></script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</head>
<body>
	<ul id="dropdown1" class="dropdown-content">
		<li><a href=<c:url value="/escola/cadastro" />>Cadastrar</a></li>
		<li><a href=<c:url value="/escola/listar" />>Listar</a></li>
	</ul>
	<ul id="dropdown2" class="dropdown-content">
		<li><a href=<c:url value="/curso/cadastro" />>Cadastrar</a></li>
		<li><a href=<c:url value="/curso/listar" />>Listar</a></li>
	</ul>

	<nav class="light-blue lighten-1" role="navigation">
		<div class="nav-wrapper container">
			<a id="logo-container" href="#" class="brand-logo">DBESCOLA</a>
			<ul class="right hide-on-med-and-down">

				<li><a class="dropdown-button" href="#!"
					data-activates="dropdown1">Escolas<i
						class="material-icons right">arrow_drop_down</i></a></li>
				<li><a class="dropdown-button" href="#!"
					data-activates="dropdown2">Cursos<i
						class="material-icons right">arrow_drop_down</i></a></li>
			</ul>

			<ul id="nav-mobile" class="side-nav">
				<li><a href=<c:url value="/escola/cadastro" />>Cadastrar
						Escola</a></li>
				<li><a href=<c:url value="/escola/listar" />>Listar Escolas</a></li>
				<li><a href=<c:url value="/curso/cadastro" />>Cadastrar
						Curso</a></li>
				<li><a href=<c:url value="/curso/listar" />>Listar Cursos</a></li>
			</ul>

			<a href="#" data-activates="nav-mobile" class="button-collapse"><i
				class="material-icons">menu</i></a>
		</div>
	</nav>

	<div class="container">
		<div class="section">