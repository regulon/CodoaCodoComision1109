let elemento = document.querySelector("#principal");

//Arreglos

let mascotas = [];

//asignando valores a las posiciones (índices)

// mascotas [0] = "Loro";
// mascotas [1] = "Perro";
// mascotas [2] = "Gato";

const agregarMascota=()=>{
  let datos = document.querySelectorAll("input");
  console.log(datos[6].checked);
  let consulta = "";
  if(datos[6].checked){
      consulta = "urgencia";
  }else{
      consulta = "consulta"
  };
      let mascota= {
      propietario:datos[0].value,
      especie:datos[1].value,
      raza:datos[2].value,
      edad:datos[3].value,
      peso:datos[4].value,
      src:datos[5].value,
      consulta:consulta
  }
  mascotas.push(mascota);
 };

/*Mostrar el arreglo usando elemento.innnerHTML dentro de comillas francesas despues del igual
cuando usamos este tipo de comillas pedimos que nos muestre el arreglo
anteponiendo el símbolo peso ($) y el nombre de la variable entre llaves.*/

// elemento.innerHTML = `<h2> ${mascotas}</h2>`; //cuando queremos ver el arreglo completo.

/*si queremos ver uno solo de los índices, le colocamos entre corchetes después del nombre de la variable dentro del
elemento inner su posición dentro del arreglo -${mascotas[1]}, por ejemplo. */

/*Si queremos ver la longitud del arreglo, al último indice lo declaramos con la función push: ver arreglo arriba*/

//Mediante un ciclo "for" podemos recorrer el arreglo

const mostrarMascotas=()=>{  //Función (se construye siempre con "const") flecha (arrow). Se utiliza en varios lenguajes.
  for(let a = 0; a < mascotas.length; a++){
    elemento.innerHTML+= `
    <h2> ${a} ${mascotas[a]}</h2>`;
  }
}; 
// function mostrarMascotas(){}; //Así se declara normalmente un función.
// {propietario,especie,raza,edad,peso,imagen,tipoConsulta}
const CrearFormulario=()=>{
    elemento.innerHTML=`
    <form>
    <div class="mb-3">
        <label for="prop" class="form-label">
            propietario
        </label>
        <input type="txt" class="form-control" id="prop">
    <div class="mb-3">
        <label for="especie" class="form-label">Especie</label>
        <input type="txt" class="form-control" id="especie">
    </div>
    <div class="mb-3">
        <label for="raza" class="form-label">Raza</label>
        <input type="txt" class="form-control" id="raza">
    </div>
    <div class="mb-3">
        <label for="edad" class="form-label">Edad</label>
        <input type="txt" class="form-control" id="edad">
    </div>
    <div class="mb-3">
        <label for="peso" class="form-label">Peso</label>
        <input type="txt" class="form-control" id="peso">
    </div>
    <div class="mb-3">
        <label for="img" class="form-label">Imagen</label>
        <input type="txt" class="form-control" id="img">
    </div>
    <div class="mb-3 form-check">
        <input type="radio" class="form-check-input" name="tipo" id="urgencia">
        <label class="form-check-label" for="urgencia">Urgencia</label>
    </div>
    <div class="mb-3 form-check">
        <input type="radio" class="form-check-input" name="tipo" id="consulta" checked>
        <label class="form-check-label" for="consulta">Consulta</label>
  </div>
    <button type="button" class="btn btn-primary" id="btn" >Agregar Datos</button>
    </form>
  `;
    document.getElementById("btn").addEventListener('click',agregarMascota);
};

CrearFormulario();




