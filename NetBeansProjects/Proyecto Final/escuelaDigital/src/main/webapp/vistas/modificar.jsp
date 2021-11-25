<%-- 
    Document   : modificar
    Created on : 23 nov. 2021, 10:57:25
    Author     : regul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Registro</title>
    </head>
    <body>
        <h1>Modificar Registro</h1>
        <div class = "container">
            <div class =" row">
                <form class="p-5" action="AlumnosController?accion-insert" method ="post">
                    <div class ="mb-3">
                        <label for="nombre" class="form-label">nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value=""/>
                    </div>
                    <div class ="mb-3">
                        <label for="apellido" class="form-label">apellido</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" value=""/>
                    </div>
                    <div class ="mb-3">
                        <label for="email" class="form-label">email</label>
                        <input type="text" class="form-control" id="email" name="email" value=""/> 
                    </div>
                    <div class ="mb-3">
                        <label for="telefono" class="form-label">telefono</label>
                        <input type="text" class="form-control" id="telefono" name="telefono" value=""/>
                    </div>
                    <button type="submit" class="btn btn-primary">Agregar</button>
                </form>
            </div>
    </body>
</html>
