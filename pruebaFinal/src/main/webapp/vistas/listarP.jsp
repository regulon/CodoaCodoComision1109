<%-- 
    Document   : listarP
    Created on : 30 dic. 2021, 18:15:02
    Author     : regul
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Listar Propietario</title>
        <link href="/bootstrap/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Amita:wght@700&family=Big+Shoulders+Inline+Display:wght@100&family=Big+Shoulders+Stencil+Display&family=Fontdiner+Swanky&family=Grand+Hotel&family=Kaushan+Script&family=Lobster&family=Mystery+Quest&family=Pacifico&family=Shizuru&family=Vujahday+Script&display=swap" rel="stylesheet">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="bootstrap/css/estilosI.css">
    </head>
    <header>
        <div class="col-4 text-center">
            <figure>
                <figcaption><div style="line-height: 15px"><span id="segmento1">Carol</span><span id="segmento2">Inmuebles</span></div></figcaption>
                <img src="img/img_home.svg" width="400" alt="img_home"/>
                <figcaption> <div style="line-height: 20px"><span id="segmento3">Confianza, Perseverancia y Buen Servicio</span></div></figcaption>
            </figure>
        </div>
        <h1>Listar Propietario</h1> 
        <p>(Para modificar haga click en el id y para eliminar haga click en la palabra eliminar de la columna Acción al final de la tabla)</p>
    </header>
    <body>
        <table class="table table-striped table-danger table-bordered border-danger">
            <thead>
            <tr>
                <th width="100" style="font-size: smaller">Id_propietario</th>
                <th width="100" style="font-size: smaller">Nombres</th>
                <th width="100" style="font-size: smaller">Apellidos</th>
                <th width="100" style="font-size: smaller">Dni</th>
                <th width="100" style="font-size: smaller">Email</th>
                <th width="100" style="font-size: smaller">Teléfono</th>
                <th width="100" style="font-size: smaller">Dirección</th>
                <th width="100" style="font-size: smaller">Acción</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="propietario" items="${lista}">
            <tr>
                <td scope="col" width="100" style="font-size: smaller"><a href="PropietarioController?opcion=meditar&id_propietario=<c:out value="${propietario.id_propietario}"/>"><c:out value="${propietario.id_propietario}"/></a></td>
                <td width="100" style="font-size: smaller"><c:out value="${propietario.nombres}"/></td>
                <td width="100" style="font-size: smaller"><c:out value="${propietario.apellidos}"/></td>
                <td width="100" style="font-size: smaller"><c:out value="${propietario.dni}"/></td>
                <td width="100" style="font-size: smaller"><c:out value="${propietario.email}"/></td>
                <td width="100" style="font-size: smaller"><c:out value="${propietario.telefono}"/></td>
                <td width="100" style="font-size: smaller"><c:out value="${propietario.direccion}"/></td>
                <td scope="col"><a href="PropietarioController?opcion=eliminar&id_propietario=<c:out value="${propietario.id_propietario}"/>" style="font-size: smaller"> Eliminar</a></td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="container-fluid">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-3"></div>
                <div class="col-3"></div>
                <div class="col-3 text-end">
            <form action="principal.jsp">
                <input type="submit" value="Regresar" class="btn btn-outline-danger "/>   
            </form>
                </div>
            </div>
        </div>
    </body>
</html>
