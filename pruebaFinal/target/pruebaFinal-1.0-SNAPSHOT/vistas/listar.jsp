<%-- 
    Document   : listar
    Created on : 26 dic. 2021, 09:56:52
    Author     : regul
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Listar Inmueble</title>
        <link href="bootstrap/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
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
        <h1>Listar Inmuebles</h1> 
        <p>(Para modificar haga click en el id y para eliminar haga click en la palabra eliminar de la columna Acción al final de la tabla)</p>
    </header>
    <body>
        <table class="table table-striped table-danger table-bordered border-danger">
            <thead>
                <tr>
                    <th width="100" style="font-size: smaller">id</th>
                    <th width="100" style="font-size: smaller">Tipo</th>
                    <th width="100" style="font-size: smaller">Opción de negocio</th>
                    <th width="100" style="font-size: smaller">Precio de Venta en US$</th>
                    <th width="100" style="font-size: smaller">Venta en ARGS$</th>
                    <th width="100" style="font-size: smaller">Alquiler en US$</th>
                    <th width="100" style="font-size: smaller">Alquiler en ARGS$</th>
                    <th width="100" style="font-size: smaller">Expensas en ARGS$</th>
                    <th width="100" style="font-size: smaller">Area(M²)</th>
                    <th width="100" style="font-size: smaller">Ambientes</th>
                    <th width="100" style="font-size: smaller">Habitaciones</th>
                    <th width="100" style="font-size: smaller">Baños</th>
                    <th width="100" style="font-size: smaller">Toilets</th>
                    <th width="100" style="font-size: smaller">Barrio</th>
                    <th width="100" style="font-size: smaller">Avenida/Calle</th>
                    <th width="100" style="font-size: smaller">Altura</th>
                    <th width="100" style="font-size: smaller">Código Postal</th>
                    <th width="100" style="font-size: smaller">Vivienda No./letra</th>
                    <th width="100" style="font-size: smaller">No. de Piso</th>
                    <th style="font-size: smaller">Información Adicional</th>
                    <th width="100">Acción</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="inmueble" items="${lista}">
                    <tr>
                        <td scope="col" width="100" style="font-size: smaller"><a href="InmuebleController?opcion=meditar&id=<c:out value="${inmueble.id}"/>"><c:out value="${inmueble.id}"/></a></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.tipoinmueble}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.objeto}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.precioVentaDolares}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.precioVentaPesosArg}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.precioAlquilerDolares}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.precioAlquilerPesosArg}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.precioExpensas}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.caracteristicaArea}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.caracteristicaAmbientes}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.caracteristicaHabitaciones}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.caracteristicaBanos}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.caracteristicaToilets}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.ubicacionBarrio}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.ubicacionAvenidaOCalle}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.ubicacionAltura}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.ubicacionCodigoPostal}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.numDepOCasa}"/></td>
                        <td width="100" style="font-size: smaller"><c:out value="${inmueble.piso}"/></td>
                        <td width="500" style="font-size: smaller"><c:out value="${inmueble.informacionAdicional}"/></td>
                        <td scope="col"><a href="InmuebleController?opcion=eliminar&id=<c:out value="${inmueble.id}"/>" style="font-size: smaller"> Eliminar</a></td>
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
