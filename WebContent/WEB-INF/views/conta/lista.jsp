<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="resources/js/jquery.js"></script>
<script type="text/javascript">
	function pagaAgora(id) {
		$.get("pagaConta/?id=" + id);
	}
</script>
</head>
<body>
	<table>
		<th>
			<td>Codigo</td>
			<td>Descricao</td>
			<td>Valor</td>
			<td>Tipo</td>
			<td>Paga</td>
			<td>Data pagamento</td>
		</th>
		
		<c:forEach items="${contas}" var="conta">
			<tr>
				<td>${conta.id}</td>
				<td>${conta.descricao}</td>
				<td>${conta.valor}</td>
				<td>${conta.tipo}</td>
				<td>
					<c:if test="${conta.paga eq false}">
						Nao
					</c:if>
					<c:if test="${conta.paga eq true}">
						Sim
					</c:if>
				</td>
				<td>
					<a href="#" onclick="pagaAgora(${conta.id});">Pagar</a>
				</td>
				<td><fmt:formatDate value="${conta.dataPagamento.time}" pattern="dd/MM/yyyy" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>