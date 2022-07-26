<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="plantillas/cabecera.jsp"></jsp:include>

<% if (request.getParameter("experiencia")==null) //si accedo a la página directamente (viene sin datos) me redirije a altaempleado
	response.sendRedirect("altaEmpleado.jsp");
%>
<h2>Resumen del empleado:</h2>
<ul>
	<li>Nombre: <%= request.getParameter("nombre") %></li>
	<li>Apellidos: <%= request.getParameter("apellidos") %></li>
	<li>Cod Provincia: <%= request.getParameter("provincia") %></li>
	<li>Conocimientos: 
		<ul>
		<% String conocimientos []= request.getParameterValues("conocimientos"); 
		if (conocimientos == null || conocimientos.length==0) {
		%>
		<li>No se han registrado conocimientos</li>
		<%} else {
			for (String dato : conocimientos) {%>
				<li><%=dato %></li>
		<%	}
		}%>			
		</ul>
	<li>Fecha de nacimiento: <%= request.getParameter("fecha_nac") %></li>
	<li>Experiencia: <%= request.getParameter("experiencia") %></li>

</ul>

<jsp:include page="plantillas/pie.jsp"></jsp:include>