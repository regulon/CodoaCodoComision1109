<%-- 
    Document   : crear
    Created on : 26 dic. 2021, 09:46:43
    Author     : regul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Inmueble</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Amita:wght@700&family=Big+Shoulders+Inline+Display:wght@100&family=Big+Shoulders+Stencil+Display&family=Fontdiner+Swanky&family=Grand+Hotel&family=Kaushan+Script&family=Lobster&family=Mystery+Quest&family=Pacifico&family=Shizuru&family=Vujahday+Script&display=swap" rel="stylesheet">
        <link href="bootstrap/css/bootstrap-grid.min.css" rel="stylesheet">
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
        <h1>Registrar Inmueble</h1>  
    </header>
    <body>
        <form action="InmuebleController" method="post">
            <input type="hidden" name="opcion" value="guardar">
            <table class="table table-danger">
                <thead>
                    <tr>
                        <th scope="col" width="300"><h4>Tipo</h4></th>
                        <th scope="col" width="300"><h4>Objeto</h4></th>
                        <th scope="col" width="300"><h4>Precios</h4></th>
                        <th scope="col" width="300"><h4>Características</h4></th>
                        <th scope="col" width="400"><h4>Ubicación</h4></th>
                        <th scope="col" width="500"><h4>Información Adicional</h4></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="tipoinmueble" id="tipoinmueble1" value="Departamento" checked>
                                <label class="form-check-label" for="tipoinmueble1">
                                    Departamento
                                </label><br>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="tipoinmueble" id="tipoinmueble2" value="Casa">
                                <label class="form-check-label" for="tipoinmueble2">
                                    Casa
                                </label><br>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="tipoinmueble" id="tipoinmueble3" value="Penthouse">
                                <label class="form-check-label" for="tipoinmueble3">
                                    Penthouse
                                </label><br>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="tipoinmueble" id="tipoinmueble4" value="Cochera">
                                <label class="form-check-label" for="tipoinmueble4">
                                    Cochera
                                </label><br>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="tipoinmueble" id="tipoinmueble5" value="Local">
                                <label class="form-check-label" for="tipoinmueble5">
                                    Local
                                </label>
                            </div>
                        </td>
                        <td>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="objeto" id="objeto1" value="Venta" checked>
                                <label class="form-check-label" for="objeto1">
                                    Venta
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="objeto" id="objeto2" value="Alquiler">
                                <label class="form-check-label" for="objeto2">
                                    Alquiler
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="objeto" id="objeto3" value="Venta/Alquiler">
                                <label class="form-check-label" for="objeto3">
                                    Venta/Alquiler
                                </label>
                            </div>    
                        </td>
                        <td>
                            <h5 style="line-height: 5px">Venta</h5>
                            <div>Dólares(USD$): <input type="text" class="form-control ancho" name="ventadolares"></div>
                            <div>Pesos($ARS): <input type="text" class="form-control ancho" name ="ventapesos"></div><br>
                            <h5 style="line-height: 5px">Alquiler</h5>
                            <div>Dólares(USD$): <input type="text" class="form-control ancho" name="alquilerdolares"></div>
                            <div>Pesos($ARS): <input type="text" class="form-control ancho" name="alquilerpesos"></div><br>
                            <div><span id="negrita">Expensas</span>($ARS): <input type="text" class="form-control ancho1" name="expensas"></div>
                        </td>
                        <td>
                            <div>Area (M²): <input type="text" class="form-control ancho2" name="area"></div>
                            <div>Ambiente(s): <input type="number" class="form-control ancho3" min="0" max="10" name="ambiente"></div>
                            <div>Habitacion(es): <input type="number" class="form-control ancho3" min="0" max="10" name="habitacion"></div>
                            <div>Baño(s): <input type="number" class="form-control ancho3" min="0" max="10" name="bano"></div>
                            <div>Toilet(s):<input type="number" class="form-control ancho3" name="toilet" min="0" max="10"></div>     
                        </td>
                        <td>
                            <h6>Ciudad Autónoma de Buenos Aires</h6>
                            <select class="form-select ancho4" name="barrio" aria-label="Default select example">
                                <option selected style="font-weight: 700">Seleccionar barrio</option>
                                <option value="Almagro">Almagro</option>
                                <option value="Balvanera">Balvanera</option>
                                <option value="Barracas">Barracas</option>
                                <option value="Boedo">Boedo</option>
                                <option value="Caballito">Caballito</option>
                                <option value="Chacarita">Chacarita</option>
                                <option value="Coghlan">Coghlan</option>
                                <option value="8">Colegiales</option>
                                <option value="Colegiales">Constitución</option>
                                <option value="Flores">Flores</option>
                                <option value="Floresta">Floresta</option>
                                <option value="La Boca">La Boca</option>
                                <option value="La Paternal">La Paternal</option>
                                <option value="Liniers">Liniers</option>
                                <option value="Mataderos">Mataderos</option>
                                <option value="Montserrat">Montserrat</option>
                                <option value="Nueva Pompeya">Nueva Pompeya</option>
                                <option value="Nuñez">Nuñez</option>
                                <option value="Palermo">Palermo</option>
                                <option value="Parque Avellaneda">Parque Avellaneda</option>
                                <option value="Parque Chacabuco">Parque Chacabuco</option>
                                <option value="Parque Chas">Parque Chas</option>
                                <option value="Parque Patricios">Parque Patricios</option>
                                <option value="Puerto Madero">Puerto Madero</option>
                                <option value="Recoleta">Recoleta</option>
                                <option value="Retiro">Retiro</option>
                                <option value="Saavedra">Saavedra</option>
                                <option value="San Cristóbal">San Cristóbal</option>
                                <option value="San Nicolás">San Nicolás</option>
                                <option value="San Telmo">San Telmo</option>
                                <option value="Versalles">Versalles</option>
                                <option value="Villa Crespo">Villa Crespo</option>
                                <option value="Villa Devoto">Villa Devoto</option>
                                <option value="Villa Devoto">Villa General Mitre</option>
                                <option value="Villa Lugano">Villa Lugano</option>
                                <option value="Villa Luro">Villa Luro</option>
                                <option value="Villa Ortúzar">Villa Ortúzar</option>
                                <option value="Villa Pueyrredón">Villa Pueyrredón</option>
                                <option value="Villa Real">Villa Real</option>
                                <option value="Villa Riachuelo">Villa Riachuelo</option>
                                <option value="Villa Santa Rita">Villa Santa Rita</option>
                                <option value="Villa Soldati">Villa Soldati</option>
                                <option value="Villa Urquiza">Villa Urquiza</option>
                                <option value="Villa del Parque">Villa del Parque</option>
                                <option value="Vélez Sarsfield">Vélez Sarsfield</option>
                            </select>
                            <div class="mt-2">
                                Avenida/Calle:<input type="text" class="form-control ancho5" name="avecalle">
                            </div>
                            <div class="d-flex mt-2">
                                <div>
                                    Altura:<input type="text" class="form-control ancho6" name="altura">
                                </div>
                                <div class="ms-3">
                                    Código Postal:<input type="text" class="form-control ancho6" name="codigo">
                                </div>
                            </div>
                            <div class="d-flex mt-2">
                                <div>
                                    Depto./Casa:<input type="text" class="form-control ancho7" name="depocasa" placeholder="No.">
                                </div>
                                <div class="ms-3">  
                                    Piso:<input type="text" class="form-control ancho8" name="piso" placeholder="No.">               
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="input-group">
                                <textarea  class="form-control ancho9" name="infoadicional" maxlength="200" placeholder="Otros detalles resaltantes"></textarea></div><br>
                            <input type="submit" class="btn btn-danger" value="Registrar">
                        </td>
                    </tr>  
                </tbody>
            </table>   
        </form>
    </body>  
</html>
