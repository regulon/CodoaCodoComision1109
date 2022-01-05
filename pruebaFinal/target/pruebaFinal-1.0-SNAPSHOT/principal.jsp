<%-- 
    Document   : index
    Created on : 26 dic. 2021, 08:23:37
    Author     : regul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Menú de opciones</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Amita:wght@700&family=Big+Shoulders+Inline+Display:wght@100&family=Big+Shoulders+Stencil+Display&family=Fontdiner+Swanky&family=Grand+Hotel&family=Kaushan+Script&family=Lobster&family=Mystery+Quest&family=Pacifico&family=Shizuru&family=Vujahday+Script&display=swap" rel="stylesheet">
        
        <link href="bootstrap/css/estilosIx.css" rel="stylesheet" type="text/css"/>
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
        </header>
        <nav class="navbar navbar-light bg-danger fixed-center">
            <div class="container-fluid">
                <a class="navbar-brand text-white" href="#"><h4>Bienvenido al sistema.....<strong>Usuario: ${usuario}</strong></h4></a>
                <button class=" navbar-toggler text-white" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                    <span class="navbar-toggler-icon"></span>
                    <label>Mostrar menú</label>
                </button>
                <div class="offcanvas offcanvas-end text-white bg-danger" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                    <div class="offcanvas-header">
                        <h3 class="offcanvas-title text-white" id="offcanvasNavbarLabel">Menú de opciones</h3>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <div class="navbar-nav">
                            <u class="text-decoration-none nav-item dropdown">

                            <div>
                                <li><a class="text-white ex2" style="font-size: 150%" href="InmuebleController?opcion=crear">Registrar inmueble</a></li>
                                    <hr class="dropdown-divider">
                                <li><a class="text-white ex2" style="font-size: 150%" href="InmuebleController?opcion=listar">Listar inmuebles</a></li>
                                    <hr class="dropdown-divider">
                                <li><a class="text-white ex2" style="font-size: 150%"  href="PropietarioController?opcion=crear">Registrar Propietario</a></li>
                                    <hr class="dropdown-divider">
                                <li><a class="text-white ex2" style="font-size: 150%" href="PropietarioController?opcion=listar">Listar Propietarios</a></li>
                                    <hr class="dropdown-divider">
                            </div>
                            <div class="col-md nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" id="offcanvasNavbarDropdown" style="font-size: 150%" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Cerrar sesión
                                </a>
                            <ul class="dropdown-menu text-center" aria-labelledby="offcanvasNavbarDropdown">
                                <li><img src="https://upload.wikimedia.org/wikipedia/commons/6/67/Crystal_Clear_app_Login_Manager.svg" alt="" width="100" height="auto"/></li>
                                <li>Usuario autorizado</li>
                                <li>${usuario}</li>
                                    <hr class="dropdown-divider">
                                <li><a class=" text-decoration-none text-black-50 ex2" style="font-size: 150%; font-weight: 600" href="UsuarioController?accion=Salir">Salir</a></li>
                            </ul>
                        </div>
                        </div>
                    </div>
                </div>
        </div>
        </nav>
        <div class="container-fluid" style="background-color: papayawhip">
            <div class="row">
                <div class="col-6">
                    <a href="InmuebleController?opcion=crear" style=" text-decoration: none; color: black; font-weight: 600; font-size:larger ">Registrar Inmueble</a>
                    <img src="img/pngtree-wooden-house-building-illustration-image_1460896_preview_rev_1.png" alt=""/>
                    
                </div>
                <div class="col-6">
                    <img src="img/0600300000006_Tiposdeviviendas_0_preview_rev_1.png" alt=""/>
                    <a href="InmuebleController?opcion=listar" style=" text-decoration: none; color: black; font-weight: 600; font-size:larger">Listar Inmuebles</a>
                </div>
            </div>
            <div class="row">
                <div class="col-6" style="vertical-align: bottom">
                    <a href="PropietarioController?opcion=crear" style=" text-decoration: none; color: black; font-weight: 600; font-size:larger">Registrar Propietario</a>
                    <img src="img/depositphotos_444521584-stock-illustration-real-estate-concept-in-flat (1).jpg" alt="" width="400"/>
                </div>
                <div class="col-6">
                    <img src="img/Imagen-2-ALT-la-propiedad-horizontal-1170x869 (1).jpg" alt="" width="400"/>
                    <a href="PropietarioController?opcion=listar" style=" text-decoration: none; color: black; font-weight: 600; font-size:larger">Listar Propietarios</a>
                </div>
            </div>
        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
