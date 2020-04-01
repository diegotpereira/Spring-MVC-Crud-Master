<jsp:include page="../templates/header.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="grid-example col s12">
		<span class="flow-text">Incluir Aluno</span>
	</div>
</div>

<div class="row">

	<form class="col s12" action=<c:url value="/cadaluno"/> method="post">

		<div class="row">
			<div class="input-field col s12">
				<input id="id" type="text" name="id" class="validate"> <label
					for="id">ID do Aluno</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s12">
				<input id="nome" type="text" name="nome" class="validate">
				<label for="nome">Nome do Aluno</label>
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
				<input id="telefone" type="text" name="telefone" class="validate">
				<label for="telefone">Telefone</label>
			</div>
		</div>

		<div class="input-field col s12">
			<select name="idc">
				<option value="" disabled selected>Selecione</option>
				<c:forEach var="e" items="${escolas}">
					<option value="${e.id}">${e.descricao}</option>
				</c:forEach>
			</select> <label>Selecione a escola</label>
		</div>

		${msg}

		<button class="btn waves-effect waves-light" type="submit"
			name="action">Salvar</button>

	</form>

</div>

<jsp:include page="../templates/footer.jsp" />