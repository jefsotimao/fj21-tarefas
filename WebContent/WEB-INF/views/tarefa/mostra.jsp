<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<head>
<link href="css/jquery-ui.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<body>
	<h3>Alterar Tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}">
		Descrição: <br />
		<textarea name="descricao" rows="5" cols="100">${tarefa.descricao}</textarea>
		<br /> Finalizado? <input type="checkbox" name="finalizado"
			value="true" ${tarefa.finalizado? 'checked' : ''} /><br /> Data de
		Finalização : <br /> <input type="text" name="dataFinalizacao"
			value="<fmt:formatDate 
      value="${tarefa.dataFinalizacao.time}" 
      pattern="dd/MM/yyyy" />" />

		<br /> <input type="submit" value="Alterar">
	</form>

</body>
</html>