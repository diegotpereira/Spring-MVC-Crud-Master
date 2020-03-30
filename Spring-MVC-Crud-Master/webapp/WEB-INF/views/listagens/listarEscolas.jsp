<jsp:include page="../templates/header.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<table class="highlight">
		<thead>
			<tr>
				<th>ID</th>
				<th>DESCRIÇÃO</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="e" items="${escolas}">
				<tr>
					<td>${e.id}</td>
					<td>${e.descricao}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<jsp:include page="../templates/footer.jsp" />