</div>
</div>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<footer class="page-footer orange">
	<div class="container">
		<div class="row">
			<div class="col l6 s12">
				<h5 class="white-text">Projeto de demonstração</h5>
				<p class="grey-text text-lighten-4">Este é apenas um projeto de demonstração. Tecnologias: Spring MVC, Spring Data JDBC
					Template, JSP utilizando Material Design no front-end.</p>


			</div>
			<div class="col l3 s12">
				<h5 class="white-text">APPESCOLA</h5>
				<ul>
					<li><a class="white-text"
						href=<c:url value="/escola/cadastro" />>Cadastrar Escola</a></li>
					<li><a class="white-text"
						href=<c:url value="/escola/listar" />>Listar Escolas</a></li>
					<li><a class="white-text"
						href=<c:url value="/curso/cadastro" />>Cadastrar Curso</a></li>
					<li><a class="white-text" 
					    href=<c:url value="/curso/listar" />>Listar Cursos</a></li>
				    <li><a class="white-text"
						href=<c:url value="/aluno/cadastro" />>Cadastrar Aluno</a></li>			
				</ul>
			</div>
		</div>
	</div>
	<div class="footer-copyright">
		<div class="container">
			© 2020 - Projeto de demonstração - Cadastro de Escolas/Cursos <a
				class="grey-text text-lighten-4 right" href="https://github.com/diegotpereira">github.com/diegotpereira</a>
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