<%-- 
    Document   : alumnos
    Created on : 23 nov. 2021, 10:56:56
    Author     : regul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Listado de Alumnos</title>
    </head>
    <body>
        <h1>Listado de Alumnos</h1>
        
        <div class="container">
            <div class="row">
                <a class="btn btn-primary col-md-4 m-4" href="AlumnosController?accion=nuevo">Agregar Alumno</a>
                <table class="table table-primary">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>nombre</th>
                            <th>apellido</th>
                            <th>email</th>
                            <th>telefono</th>
                            <th>modificar</th>
                            <th>eliminar</th>
                         </tr>
                        
                    </thead>
                    
                </table>
            </div>
            
        </div>
    </body>
</html>
