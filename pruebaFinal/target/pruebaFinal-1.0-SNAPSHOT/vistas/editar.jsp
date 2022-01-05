<%-- 
    Document   : editar
    Created on : 26 dic. 2021, 10:07:13
    Author     : regul
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Editar Inmueble</title>
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
        <h1>Editar Inmueble</h1>  
    </header>
    <body>
        <form action="InmuebleController" method="post">
            <c:set var="inmueble" value="${inmueble}"/>
            <input type="hidden" name="opcion" value="editar">
            <input type="hidden" name="id" value="${inmueble.id}">
            <table class="table table-danger">
                <thead>
                    <tr>
                        <th class="col-2"><h4>Tipo y Objeto</h4></th>
                        <th class="col-2"><h4>Precio</h4></th>
                        <th class="col-2"><h4>Características</h4></th>
                        <th class="col-3"><h4>Ubicación</h4></th>
                        <th class="col-2"><h4>Información Adicional</h4></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="7">
                            <div>
                                <div class="input-group input-group mb-3">
                                    <span class="input-group" id="inputGroup">Tipo de Inmueble</span>
                                    <input type="text" class="form-control" name="tipoinmueble" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" style = "width: 120px; height: 35px" value="${inmueble.tipoinmueble}">
                                </div>

                                <div class="input-group input-group-sm mb-3">
                                    <span class="input-group" id="inputGroup">Objeto del Negocio</span>
                                    <input type="text" class="form-control" name="objeto" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" style = "width: 120px; height: 35px" value="${inmueble.objeto}">
                                </div>
                            </div>
                        </td>
                        <td rowspan="7">
                            <h5 style="line-height: 5px">Venta</h5>
                            <div>Dólares(USD$):<br> <input type="text" class="form-control" name="ventadolares" style = "width: 134.5px; height: 35px" value="${inmueble.precioVentaDolares}"></div><br>
                            <div>Pesos($ARS):<br> <input type="text" class="form-control" name ="ventapesos" style = "width: 134.5px; height: 35px" value="${inmueble.precioVentaPesosArg}"></div><br>
                            <h5 style="line-height: 5px">Alquiler</h5>
                            <div>Dólares(USD$):<br> <input type="text" class="form-control" name="alquilerdolares" style = "width: 134.5px; height: 35px" value="${inmueble.precioAlquilerDolares}"></div><br>
                            <div>Pesos($ARS):<br> <input type="text" class="form-control" name="alquilerpesos" style = "width: 134.5px; height: 35px" value="${inmueble.precioAlquilerPesosArg}"></div><br>
                            <div>Expensas($ARS):<br> <input type="text" class="form-control" name="expensas" style = "width: 100px; height: 35px" value="${inmueble.precioExpensas}"></div>
                        </td>
                        <td rowspan="7">
                            <div>Area (M²):<br> <input type="text" class="form-control" name="area" style = "width: 80px; height: 35px" value="${inmueble.caracteristicaArea}"></div><br>
                            <div>Ambiente(s):<br> <input type="text" class="form-control" min="0" max="10" name="ambiente" style = "width: 60px; height: 35px" value="${inmueble.caracteristicaAmbientes}"></div><br>
                            <div>Habitacion(es):<br> <input type="text" class="form-control" min="0" max="10" name="habitacion" style = "width: 60px; height: 35px" value="${inmueble.caracteristicaHabitaciones}"></div><br>
                            <div>Baño(s):<br> <input type="text" class="form-control" min="0" max="10" name="bano" style = "width: 60px; height: 35px" value="${inmueble.caracteristicaBanos}"></div><br>
                            <div>Toilet(s):<br> <input type="text" class="form-control" name="toilet" min="0" max="10" style = "width: 60px; height: 35px" value="${inmueble.caracteristicaToilets}"></div>     
                        </td>
                        <td rowspan="7">
                            <h6>Ciudad Autónoma de Buenos Aires</h6>
                            <div class="mt-2">
                                Barrio:<br><input type="text" name="barrio" class="form-control" style="width: 150px; height: 40px" value="${inmueble.ubicacionBarrio}">
                            </div>
                            <div class="mt-2">
                                Avenida/Calle:<br><input type="text" name="avecalle" class="form-control" style="width: 150px; height: 40px" value="${inmueble.ubicacionAvenidaOCalle}">
                            </div>
                            <div class="d-flex mt-2">
                                <div>
                                    Altura:<br><input type="text" class="form-control" name="altura" style="width: 100px; height: 40px" value="${inmueble.ubicacionAltura}">
                                </div>
                                <div class="ms-3">
                                    Código Postal:<br><input type="text" class="form-control" name="codigo" style="width: 100px; height: 40px" value="${inmueble.ubicacionCodigoPostal}">
                                </div>
                            </div>
                            <div class="d-flex mt-2">
                                <div>
                                    Depto./Casa:<br><input type="text" class="form-control" name="depocasa"  style="width: 50px; height: 40px; line-height: 5px" value="${inmueble.numDepOCasa}">
                                </div>
                                <div class="ms-3">  
                                    Piso:<br><input type="text" class="form-control" name="piso" style="width: 50px; height: 40px" value="${inmueble.piso}">               
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="input-group">
                                <input class="form-control" name="infoadicional" style="width: 300px; height: 240px" value="${inmueble.informacionAdicional}"></input></div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" class="btn btn-primary" value="Guardar cambios"></td>
                    </tr>  
                </tbody>
            </table>   
        </form>
    </body>
</html>
