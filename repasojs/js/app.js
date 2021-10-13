// alert("Estamos en el archivo externo");
const nombres = [];
// const nombres = ["Luis", "Tomás", "Lilian", "Cecilia"]
// nombres.push("Régulo")
// console.log(nombres)
// // nombres = "Todos" //esto genera un error puesto que estamos declarando un nuevo valor a la constante, que en este caso es un arreglo.
// nombres.push("")
// console.log(nombres) //Mismo caso de "nombres = 'Todos'".
// // nombres.length = 10
// // nombres.push("Susana")
// // console.log(nombres)
// const manejoDeNombres=(b)=>{
//     nombres.push(b)
//     console.log(nombres)
// };
// function sumar(){
//     var num1 = 5;
//     var num2 = 8;
//     var suma = num1 + num2;
//    alert("La suma es: "+suma);
// }
//  sumar();
//  function Suma(num1,num2){
  
//     var resultado= num1 + num2;
//     alert("La suma es: "+ resultado);
// }
//   Suma(25,9);
// function Saludar(nombre, edad){
//     this.nombre = nombre;
//     this.edad = edad;  
//     console.log("Hola mi nombre es: "+ this.nombre + " y tengo: " + this.edad + " años." );
//   }
// Saludar("Juniors", 24);
// function Valores(a,b,c){
  
//     return a+b+c;
// }
      
// var suma = Valores(3,4,5); // esta función nos retorna el valor de 12
// let nombre ={};
//Objetos
const agregarNombre=()=>{
    let nombre={
        nombre: "Régulo",
        apellido: "Luna"
    };
        nombres.push(nombre);
        console.log(nombres);
    }
    const nomb=()=>{
        let nombre ={
            nombre:"luis",
            apellido: "navas"
        }
        console.log(nombre);
    }
    nomb();
    agregarNombre();
    class Persona{
        constructor(nombre,apellido){
            this.nombre=nombre;
            this.apellido=apellido;
        }
        mostrarNombre(){
            return this.nombre;
        }
    }
let nombre = prompt("Escribe tu nombre");
let persona1 = new Persona(nombre, "navas");
let persona2 = new Persona("Régulo", "Luna");
let persona3 = {
    nombre:"Pedro",
    apellido:"Mansilla"
}
console.log(persona1.mostrarNombre());
console.log(persona2.mostrarNombre());
class Vehiculo{
    encender(){
        return "el auto está encendido"
    }
}

let auto = new Vehiculo();
auto.velocidad=150;
let moto ={
    encender:()=>{
        return "está encendida la moto"
    }
}
console.log(auto.encender());
console.log(auto.velocidad);
console.log(moto.encender());


