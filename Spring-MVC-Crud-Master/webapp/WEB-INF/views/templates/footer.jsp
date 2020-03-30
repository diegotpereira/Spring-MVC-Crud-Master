</div>
</div>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<footer class="page-footer orange">
	<div class="container">
		<div class="row">
			<div class="col l6 s12">
				<h5 class="white-text">Material de Estudo</h5>
				<p class="grey-text text-lighten-4">Este material é apenas um
					material de estudo. Tecnologias: Spring MVC, Spring Data JDBC
					Template, JSP utilizando Material Design no front-end.</p>


			</div>
			<div class="col l3 s12">
				<h5 class="white-text">DBESCOLA</h5>
				<ul>
					<li><a class="white-text"
						href=<c:url value="/escola/cadastro" />>Cadastrar Escola</a></li>
					<li><a class="white-text"
						href=<c:url value="/escola/listar" />>Listar Escolas</a></li>
					<li><a class="white-text"
						href=<c:url value="/curso/cadastro" />>Cadastrar Curso</a></li>
					<li><a class="white-text" href=<c:url value="/curso/listar" />>Listar
							Cursos</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="footer-copyright">
		<div class="container">
			© 2017 - Material de estudo - Cadastro de Escolas/Cursos <a
				class="grey-text text-lighten-4 right" href="github.com/hstrada">github.com/hstrada</a>
		</div>
	</div>
</footer>

<script>
	$(document).ready(function() {
		$('select').material_select();
	});
</script>

<script>
	$(document).ready(function() {
		$(".dropdown-button").dropdown();
	});
</script>

</body>
</html>