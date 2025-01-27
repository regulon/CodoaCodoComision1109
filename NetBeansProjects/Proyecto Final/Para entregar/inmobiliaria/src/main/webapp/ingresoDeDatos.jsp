<%-- 
    Document   : ingresoDeDatos
    Created on : 26 nov. 2021, 09:01:23
    Author     : regul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro del Inmueble</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <form method="POST" action="agregarRegistro">
            <table class="table">
                <h1>Registro del Inmueble</h1>
                <thead>
                    <tr style = "width: 300px">
                        <th scope="col"><h4>Tipo</h4></th>
                        <th scope="col"><h4>Colocación</h4></th>
                        <th scope="col"><h4>Precio</h4></th>
                        <th scope="col"><h4>Otros detalles</h4></th>
                        <th scope="col"><h4>Ubicación</h4></th>
                        <th scope="col"><h4>Observaciones</h4></th>
                    </tr>
                </thead>
                <tbody>
                <td>
                    <input class="form-check-input" type="radio" name="tipoinmueble" id="departamento" checked="">
                    <label class="form-check-label" for="tipoinmueble">
                        Departamento
                    </label><br>
                    <input class="form-check-input" type="radio" name="tipoinmueble" id="casa">
                    <label class="form-check-label" for="casa">
                        Casa
                    </label><br>
                    <input class="form-check-input" type="radio" name="tipoinmueble" id="penthouse">
                    <label class="form-check-label" for="penthouse">
                        Penthouse
                    </label><br>
                    <input class="form-check-input" type="radio" name="tipoinmueble" id="cochera">
                    <label class="form-check-label" for="cochera">
                        Cochera
                    </label><br>
                    <input class="form-check-input" type="radio" name="tipoinmueble" id="local">
                    <label class="form-check-label" for="local">
                        Local
                    </label>
                    <div><br><br><br><br><br><br>
                        <input type="submit" value="Registrar" class="btn btn-primary"/>
                    </div>
                <td>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="tipocolocacion" id="venta">
                        <label class="form-check-label" for="venta1">
                            Venta
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="tipocolocacion" id="alquiler" checked>
                        <label class="form-check-label" for="alquiler">
                            Alquiler
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="tipocolocacion" id="ventaalquiler">
                        <label class="form-check-label" for="ventaalquiler">
                            Venta/Alquiler
                        </label>
                    </div>
                </td>
                <td>
                    <h6 style="line-height: 5px">Venta</h6>
                    <div>Dólares(USD$): <input type="texto" class="form-control" name="ventadolares" style = "width: 134.5px; height: 35px; text-align: center"></div>
                    <div>Pesos($ARS): <input type="texto" class="form-control" name ="ventapesos" style = "width: 134.5px; height: 35px; text-align: center"></div><br>
                    <h6 style="line-height: 5px">Alquiler</h6>
                    <div>Dólares(USD$): <input type="text" class="form-control" name="alquilerdolares" style = "width: 134.5px; height: 35px; text-align: center"></div>
                    <div>Pesos($ARS): <input type="text" class="form-control" name="alquilerpesos" style = "width: 134.5px; height: 35px; text-align: center"></div><br>
                </td>
                <td>
                    <div>Expensas($ARS): <input type="text" class="form-control" name="espensas" style = "width: 100px; height: 35px; text-align: center"></div>
                    <div>Area (M2): <input type="text" class="form-control" style = "width: 80px; height: 35px; text-align: center"></div>

                    <div>Ambiente(s): <input type="number" class="form-control" min="0" max="10" name="ambiente" style = "width: 60px; height: 35px; text-align: center"></div>
                    <div>Habitacion(es): <input type="number" class="form-control" min="0" max="10" name="habitacion" style = "width: 60px; height: 35px; text-align: center"></div>
                    <div class="d-flex">
                        <div>Baño(s): <input type="number" class="form-control" min="0" max="10" name="baño" style = "width: 60px; height: 35px; text-align: center"></div>
                        <div class="ms-3">Toilet(s):<input type="number" class="form-control" name="toilet" min="0" max="10" style = "width: 60px; height: 35px; text-align: center"></div>
                </td>
                <td>
                    <h6>Ciudad Autónoma de Buenos Aires</h6>
                    <select class="form-select" aria-label="Default select example" style="width: 200px; height: 35px; text-align: center; vertical-align: middle">
                        <option selected style="font-weight: 700">Seleccionar barrio</option>
                        <option value="1">Almagro</option>
                        <option value="2">Balvanera</option>
                        <option value="3">Barracas</option>
                        <option value="4">Boedo</option>
                        <option value="5">Caballito</option>
                        <option value="6">Chacarita</option>
                        <option value="7">Coghlan</option>
                        <option value="8">Colegiales</option>
                        <option value="9">Constitución</option>
                        <option value="10">Flores</option>
                        <option value="11">Floresta</option>
                        <option value="12">La Boca</option>
                        <option value="13">La Paternal</option>
                        <option value="14">Liniers</option>
                        <option value="15">Mataderos</option>
                        <option value="16">Montserrat</option>
                        <option value="17">Nueva Pompeya</option>
                        <option value="18">Nuñez</option>
                        <option value="19">Palermo</option>
                        <option value="20">Parque Avellaneda</option>
                        <option value="21">Parque Chacabuco</option>
                        <option value="22">Parque Chas</option>
                        <option value="23">Parque Patricios</option>
                        <option value="24">Puerto Madero</option>
                        <option value="25">Recoleta</option>
                        <option value="26">Retiro</option>
                        <option value="27">Saavedra</option>
                        <option value="28">San Cristóbal</option>
                        <option value="29">San Nicolás</option>
                        <option value="30">San Telmo</option>
                        <option value="31">Versalles</option>
                        <option value="32">Villa Crespo</option>
                        <option value="33">Villa Devoto</option>
                        <option value="34">Villa General Mitre</option>
                        <option value="35">Villa Lugano</option>
                        <option value="36">Villa Luro</option>
                        <option value="37">Villa Ortúzar</option>
                        <option value="38">Villa Pueyrredón</option>
                        <option value="39">Villa Real</option>
                        <option value="40">Villa Riachuelo</option>
                        <option value="41">Villa Santa Rita</option>
                        <option value="42">Villa Soldati</option>
                        <option value="43">Villa Urquiza</option>
                        <option value="44">Villa del Parque</option>
                        <option value="45">Vélez Sarsfield</option>
                    </select>
                    <div class="mt-2">
                        Avenida/Calle:<input type="text" class="form-control" style="width: 150px; height: 40px">
                    </div>
                    <div class="d-flex mt-2">
                        <div>
                            Altura:<input type="text" class="form-control" style="width: 100px; height: 40px">
                        </div>
                        <div class="ms-3">
                            Código Postal:<input type="text" class="form-control" style="width: 100px; height: 40px">
                        </div>
                    </div>
                    <div class="d-flex mt-2">
                        <div>
                            Depto.:<input type="text" class="form-control" style="width: 50px; height: 40px; line-height: 5px">
                        </div>
                        <div class="ms-3">  
                            Piso:<input type="text" class="form-control" style="width: 50px; height: 40px">               
                        </div>
                        <div class="ms-3">
                            Casa:<input type="text" class="form-control" style="width: 50px; height: 40px">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="input-group">
                        <textarea  class="form-control" style="width: 300px; height: 240px" maxlength="200"></textarea><br></div>
                </td>
                </tbody>
        </form>
        <table class="table b-primary">
            <h1>Datos del Propietario</h1>
            <thead>
                <tr style = "width: 300px">
                    <th scope="col" style="font-size: 20px">Nombres</th>
                    <th scope="col" style="font-size: 20px">Apellidos</th>
                    <th scope="col" style="font-size: 20px">DNI</th>
                    <th scope="col" style="font-size: 20px">Teléfono</th>
                    <th scope="col" style="font-size: 20px">Dirección</th>
                </tr>
            </thead>
            <tbody>
            <td><input type="text" class="form-control" style="width: 150px">
                <div class="mt-2"><button type="button" class="btn btn-primary">Guardar</button></div>
            </td>
            <td><input type="text" class="form-control" style="width: 150px"></td>
            <td><input type="text" class="form-control" style="width: 120px"></td>
            <td><input type="text" class="form-control" style="width: 130px"></td>
            <td><input type="text" class="form-control" placeholder="Av/Calle, Altura, Departamento/Casa, No., Código Postal, Sector." style="width: 630px"></td>
        </tbody>
    </table>
</form>
</body>       
</html>
