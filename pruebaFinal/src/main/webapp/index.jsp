<%-- 
    Document   : Principal
    Created on : 31 dic. 2021, 08:54:56
    Author     : regul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Menú de opciones</title>
        <link href="https://fonts.googleapis.com/css2?family=Amita:wght@700&family=Big+Shoulders+Inline+Display:wght@100&family=Big+Shoulders+Stencil+Display&family=Fontdiner+Swanky&family=Grand+Hotel&family=Kaushan+Script&family=Lobster&family=Mystery+Quest&family=Pacifico&family=Shizuru&family=Vujahday+Script&display=swap" rel="stylesheet">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="bootstrap/css/estilosIx.css" rel="stylesheet" type="text/css"/>
    </head>
    <header>
        <div class="col-4 text-center">
            <figure>
                <figcaption><div style="line-height: 15px"><span id="segmento1">Carol</span><span id="segmento2">Inmuebles</span></div></figcaption>
                <img src="img/img_home.svg" width="400" alt="img_home"/>
                <figcaption> <div style="line-height: 20px"><span id="segmento3">Confianza, Perseverancia y Buen Servicio</span></div></figcaption>
            </figure>
        </div>
    </header>
    <body>
        <h1 class="text-center">Página de acceso</h1>

        <div class="container col-lg-3">
            <form action="UsuarioController" method="post">
                <div class="form-group text-center">
                    <img src="img/user login.png" alt="" width="80" height="auto"/>
                    <h4><strong>Introduzca sus datos</strong></h4>
                </div>
                <div class="form-group">
                    <label for="usuario" class="form-label fw-bold">Usuario</label>
                    <input type="text" class="form-control" name="txtUsuario" placeholder="Escriba su nombre de usuario" id="usuario"/>
                </div>
                <div class="form-group">
                    <label for="pasword" class="form-label fw-bold">Password</label>
                    <input type="password" class="form-control" name="txtPasword" placeholder="Escriba la contraseña" id="pasword"/>
                </div><br>
                <div class="d-grid gap-2"">
                    <input class="btn btn-danger btn-block fw-bold" type="submit" name="accion" value="Ingresar"/>
                </div>
            </form>
    </body>
</html>
