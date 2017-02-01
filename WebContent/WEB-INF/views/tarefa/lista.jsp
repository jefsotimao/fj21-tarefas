<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
<script type="text/javascript" src="resources/js/jquery.js"></script>
</head>
<body>
	<script type="text/javascript">
	function finalizaAgora(id) {
		$.post("finalizaTarefa", {'id' : id}, function(resposta) {
		//selecionando o elemento html através da
		// id e alterando o html dele
		$("#tarefa_"+id).html(resposta);
	});
		
	}
</script>



	<a href="novaTarefa">Criar Nova Tarefa </a>
	</br>
	</br>

	<table>
		<tr>
			<th>ID</th>
			<th>DESCRIÇÃO</th>
			<th>FINALIZADO?</th>
			<th>DATA DE FINALIZAÇÃO</th>
		</tr>

		<c:forEach items="${tarefas}" var="tarefa">
			<tr id="tarefa_${tarefa.id}">
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<c:if test="${tarefa.finalizado eq false}">
					<td><a href="#" onclick="finalizaAgora(${tarefa.id})">Finalizar</a>
					</td>
				</c:if>
				<c:if test="${tarefa.finalizado eq true }">
					<td>Finalizado</td>
				</c:if>
				<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy" /></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="logout"> Logout </a>
</body>
</html>
