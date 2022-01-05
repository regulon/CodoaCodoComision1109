<%-- 
    Document   : crearP
    Created on : 30 dic. 2021, 15:32:22
    Author     : regul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Propietario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Amita:wght@700&family=Big+Shoulders+Inline+Display:wght@100&family=Big+Shoulders+Stencil+Display&family=Fontdiner+Swanky&family=Grand+Hotel&family=Kaushan+Script&family=Lobster&family=Mystery+Quest&family=Pacifico&family=Shizuru&family=Vujahday+Script&display=swap" rel="stylesheet">
        <link href="bootstrap/css/bootstrap-grid.min.css" rel="stylesheet">
        <link href="bootstrap/css/estilosP.css" rel="stylesheet" type="text/css"/>
    </head>
    <header>
        <div class="col-4 text-center">
            <figure>
                <figcaption><div style="line-height: 15px"><span id="segmento1">Carol</span><span id="segmento2">Inmuebles</span></div></figcaption>
                <img src="img/img_home.svg" width="400" alt="img_home"/>
                <figcaption> <div style="line-height: 20px"><span id="segmento3">Confianza, Perseverancia y Buen Servicio</span></div></figcaption>
            </figure>
        </div>
        <h1>Registrar Propietario</h1>  
    </header>
    <body>
        <form action="PropietarioController" method="post">
            <input type="hidden" name="opcion" value="guardar">
            <table class="table table-danger">
                <thead>
                    <tr>
                        <th scope="col" width="300"><h4>Nombres</h4></th>
                        <th scope="col" width="300"><h4>Apellidos</h4></th>
                        <th scope="col" width="300"><h4>DNI</h4></th>
                        <th scope="col" width="300"><h4>Email</h4></th>
                        <th scope="col" width="400"><h4>Telefono</h4></th>
                        <th scope="col" width="500"><h4>Dirección</h4></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div><input type="text" class="form-control ancho" name="nombres"></div>
                        </td>
                        <td>
                            <div><input type="text" class="form-control ancho" name="apellidos"></div>
                        </td>
                        <td>
                            <div><input type="text" class="form-control ancho" name="dni"></div>
                        </td>
                        <td>
                            <div><input type="text" class="form-control ancho" name="email"></div>
                        </td>
                        <td>
                            <div><input type="text" class="form-control ancho" name="telefono"></div>
                        </td>
                        <td>
                            <div><input type="text" class="form-control ancho" name="direccion"></div><br>
                            <input type="submit" class="btn btn-danger" value="Registrar">
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
                        
                        
