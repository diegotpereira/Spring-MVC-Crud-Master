<jsp:include page="../templates/header.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">

	<form action=<c:url value="/listar"/> method="post">

		<div class="input-field col s12">
			<select name="idc">
				<option value="" disabled selected>Selecione</option>
				<c:forEach var="e" items="${escolas}">
					<option value="${e.id}">${e.descricao}</option>
				</c:forEach>
			</select> <label>Selecione a escola</label>
		</div>

		<button class="btn waves-effect waves-light" type="submit"
			name="action">Listar</button>

	</form>

</div>

<div class="row">
	<table class="striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>DESCRIÇÃO</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${cursos}">
				<tr>
					<td>${c.id}</td>
					<td>${c.descricao}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<jsp:include page="../templates/footer.jsp" />