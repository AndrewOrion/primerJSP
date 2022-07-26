<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="plantillas/cabecera.jsp"></jsp:include>

<h1>Introduce los datos del empleado</h1>
    <form action="resumenEmpleado.jsp" method="get">
        <div>
        <label for="Nombre">Nombre:</label>
        <input type="text" name="nombre" id="nombre">
        </div>
        <div>
            <label for="apellidos">Apellidos:</label>
            <input type="text" name="apellidos" id="apellidos">
        </div>
        <div>
            <label for="provincia">Provincia:</label>
            <select name="provincia">
                <option value="4">Almería</option>
                <option value="11">Cádiz</option>
                <option value="14" selected>Córdoba</option>
                <option value="18">Granada</option>
                <option value="21">Huelva</option>
                <option value="23">Jaen</option>
                <option value="24">Málaga</option>
                <option value="41">Sevilla</option>
            </select>
        </div>
        <div>
            <label for="conocimientos">Conocimientos:</label>
            <label for="java">Java</label>
            <input type="checkbox" name="conocimientos" id="java" value="java">
            <label for="sql">SQL</label>
            <input type="checkbox" name="conocimientos" id="sql" value="sql">
            <label for="html">HTML</label>
            <input type="checkbox" name="conocimientos" id="html" value="html">
            <label for="css">CSS</label>
            <input type="checkbox" name="conocimientos" id="css" value="css">
        </div>
        <div>
           <label for="fecha_nac">Fecha de nacimiento:</label>
           <input type="date" name="fecha_nac" id="fecha_nac">
        </div>
        <div>
            <label for="experiencia">Experiencia (años):</label>
            <input type="number" name="experiencia" id="experiencia">
        </div>
        <div>
            <input type="submit" value="Enviar">
        </div>
    </form>

<jsp:include page="plantillas/pie.jsp"></jsp:include>