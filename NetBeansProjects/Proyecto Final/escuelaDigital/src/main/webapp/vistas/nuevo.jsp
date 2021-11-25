<%-- 
    Document   : nuevo
    Created on : 23 nov. 2021, 10:57:37
    Author     : regul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar alumnos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="text-center">Agregar Alumnos</h1>
        <div class = "container">
            <div class =" row">
                <form class="p-5" action="AlumnosController?accion-insert" method ="post">
                    <div class ="mb-3">
                        <label for="nombre" class="form-label">nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre"/>
                    </div>
                    <div class ="mb-3">
                        <label for="apellido" class="form-label">apellido</label>
                        <input type="text" class="form-control" id="apellido" name="apellido"/>
                    </div>
                    <div class ="mb-3">
                        <label for="email" class="form-label">email</label>
                        <input type="text" class="form-control" id="email" name="email"/> 
                    </div>
                    <div class ="mb-3">
                        <label for="telefono" class="form-label">telefono</label>
                        <input type="text" class="form-control" id="telefono" name="telefono"/>
                    </div>
                    <button type="submit" class="btn btn-primary">Agregar</button>
                </form>
            </div>
            
        </div>
    </body>
</html>
