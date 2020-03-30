<jsp:include page="../templates/header.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="row">
	<div class="grid-example col s12">
		<span class="flow-text">Incluir Escola</span>
	</div>
</div>

<div class="row">

	<form class="col s12" action=<c:url value="/cadescola"/> method="post">

		<div class="row">
			<div class="input-field col s12">
				<input id="nome" type="text" name="descricao" class="validate">
				<label for="nome">Nome da Escola</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s12">
				<input id="endereco" type="text" name="endereco" class="validate">
				<label for="endereco">Endereço</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s12">
				<input type="date" class="datepicker" name="dataString"> <label
					class="active" for="dataString">Data de Fundação</label>
			</div>
		</div>

		${msg}

		<button class="btn waves-effect waves-light" type="submit"
			name="action">Salvar</button>

	</form>

</div>

<script>
	$('.datepicker').pickadate({
		selectMonths : true, // Creates a dropdown to control month
		selectYears : 15
	// Creates a dropdown of 15 years to control year
	});
</script>

<jsp:include page="../templates/footer.jsp" />