<%-- 
    Document   : editarP
    Created on : 30 dic. 2021, 16:58:07
    Author     : regul
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Editar Propietario</title>
        <link href="bootstrap/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css2?family=Amita:wght@700&family=Big+Shoulders+Inline+Display:wght@100&family=Big+Shoulders+Stencil+Display&family=Fontdiner+Swanky&family=Grand+Hotel&family=Kaushan+Script&family=Lobster&family=Mystery+Quest&family=Pacifico&family=Shizuru&family=Vujahday+Script&display=swap" rel="stylesheet">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="bootstrap/css/estilosP.css">
    </head>
    <body>
    <header>
        <div class="col-4 text-center">
            <figure>
                <figcaption><div style="line-height: 15px"><span id="segmento1">Carol</span><span id="segmento2">Inmuebles</span></div></figcaption>
                <img src="img/img_home.svg" width="400" alt="img_home"/>
                <figcaption> <div style="line-height: 20px"><span id="segmento3">Confianza, Perseverancia y Buen Servicio</span></div></figcaption>
            </figure>
        </div>
        <h1>Editar Propietario</h1>  
    </header>
        <form action="PropietarioController" method="post">
            <c:set var="propietario" value="${propietario}"/>
            <input type="hidden" name="opcion" value="editar">
            <input type="hidden" name="id_propietario" value="${propietario.id_propietario}">
            <table class="table table-danger" id="edita">
                <thead>
                    <tr>
                        <th class="col-2"><h4>Nombres</h4></th>
                        <th class="col-2"><h4>Apellidos</h4></th>
                        <th class="col-1"><h4>Dni</h4></th>
                        <th class="col-2"><h4>Email</h4></th>
                        <th class="col-2"><h4>Teléfono</h4></th>
                        <th class="col-3"><h4>Dirección</h4></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="nombres" value="${propietario.nombres}">
                            </div>
                        </td>
                        <td>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="apellidos" value="${propietario.apellidos}">
                            </div>
                        </td>
                        <td>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="dni" value="${propietario.dni}">
                            </div>
                        </td>
                        <td>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="email" value="${propietario.email}">
                            </div>
                        </td>
                        <td>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="telefono" value="${propietario.telefono}">
                            </div>
                        </td>
                        <td>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="direccion" value="${propietario.direccion}"></div><br>
                            <input type="submit" class="btn btn-danger" value="Guardar cambios">
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>     
    </body>
</html>
