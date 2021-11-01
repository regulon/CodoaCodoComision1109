let container = document.getElementById("seccion");

const comprarTicket=()=>{
    container.innerHTML=`
    <div class="container d-flex justify-content-center mt-4"> 
        <div class="row text-align-center">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body border border-primary">
                        <h5 class="card-title text-center">Estudiante</h5>
                        <p class="card-text text-center">Tiene descuento</p>
                        <p class="card-text text-center"><b>80%</b></p>
                        <p class="card-text text-muted text-center"><small>* presentar documentación</small></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body border border-primary">
                        <h5 class="card-title text-center">Trainee</h5>
                        <p class="card-text text-center">Tiene descuento</p>
                        <p class="card-text text-center"><b>50%</b></p>
                        <p class="card-text text-muted" text-center><small>* presentar documentación</small></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body border border-warning">
                        <h5 class="card-title text-center">Junior</h5>
                        <p class="card-text text-center">Tiene descuento</p>
                        <p class="card-text text-center"><b>15%</b></p>
                        <p class="card-text text-muted text-center"><small>* presentar documentación</small></p>
                    </div>
                </div>
            </div>
        </div>
    </div> <br>
    <div class="container mt-4 d-flex justify-content-center">
        <div class="row text-center">
            <p style="font-size: 14px; line-height : 10px;">VENTA</p>
            <h1>VENTA DE TICKET $200</h1>
        </div>
    </div> <br>
    <form class="container justify-content-center">
    <div class="form-row d-flex justify-content-center">
        <div class="form-group col-xl-4">
            <input type="text" class="form-control" id="inputnombre" placeholder="Nombre">
        </div>
        <div class="form-group col-xl-4">
            <input type="text" class="form-control" id="inputapellido" placeholder="Apellido">
        </div>
    </div>
    <div class="row d-flex justify-content-center">
        <div class="form-group col-xl-8">
            <input type="email" class="form-control" id="inputEmail4" placeholder="Correo">
        </div>
    </div>
    <div class="form-row d-flex justify-content-center">
        <div class="form-group col-xl-4">
            <label for="inputCantidad">Cantidad</label>
            <input type="text" class="form-control" id="inputCantidad" placeholder="Cantidad">
        </div>
        <div class="form-group col-xl-4">
            <label for="inputCategoria">Categoria</label>
            <select class="form-select" id="inputCategoria" class="form-control">
                <option selected>Elegir...</option>
                <option value="estudiante">Estudiante</option>
                <option value="trainee">Trainee</option>
                <option value="junior">Junior</option>
            </select>
        </div>
    </div>
    <div class="row d-flex justify-content-center">
        <div class="alert alert-primary col-xl-8" role="alert">
            Total a pagar: $
        </div>
    </div>
    <div class="form-row d-flex justify-content-center">
                       
        <button class="btn btn-lg col-xl-4 m-1" style="background-color: rgb(125, 175, 23)" >Borrar</button>
                        
                       
        <button class="btn btn-lg col-xl-4 m-1" onclick="getData()" style="background-color: rgb(125, 175, 23)">Resumen</button>
                        
    </div>
</form>
  `     
};
