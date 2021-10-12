alert("¡Hola Mundo!"); //ventana emergente que muestra el mensaje dentro del "alert"
console.log("Estamos en la consola");

//Establecer variables según su tipo
let nombre= "Régulo Luna"; //tipo string: es una cadena de caracteres.
var numero = 10; //tipo numérica: es reconocida así porque se coloca sin las comillas, en caso contrario, la asimila como un string.
//Diferencia entre declarar una variable con let y otra con var:
//Cuando usamos let dentro de un bloque, podemos limitar el alcance de la variable a dicho bloque, ver ejemplo:

/*var a = 5;
var b = 10;

if (a === 5) {
  let a = 4; // El alcance es dentro del bloque if
  var b = 1; // El alcance es global

  console.log(a);  // 4
  console.log(b);  // 1
} 

console.log(a); // 5
console.log(b); // 1
*/
//Otro ejemplo:

//Cuando las variables se declaran dentro de un ámbito local, como dentro de una función, sucede lo siguiente:}

/*{
  let variable_let = 'valor variable let';
  var variable_var = 'valor variable var';
  console.log('var dentro de bloque: ' + variable_var);
  console.log('let dentro de bloque: ' + variable_let);
}

console.log('var fuera de bloque: ' + variable_var);
console.log('let fuera de bloque: ' + variable_let);

/*Al ejecutar fuera del bloque, muestra este resultado:

var dentro de bloque: valor variable var
let dentro de bloque: valor variable let
var fuera de bloque: valor variable var
{
  "message": "Uncaught ReferenceError: variable_let is not defined",

}
*/
const PI = 3.141592653589793; //tipo constante, estas no pueden ser reasignadas.
let hayClases = true; //tipo boolean. Estas solo puedenser true o false.
let esFeriado = false;
console.log(nombre);
console.log(numero);
console.log(PI);
console.log(hayClases);
console.log(esFeriado);
console.log(numero + 25);
console.log(numero + 25 +  50 + 30 +" "+ nombre);
console.log((numero + 25 +  50 + 30) +" "+ nombre);
console.log(5<3);
console.log(5>3);

//Condicionales.

//if -> ésta es una estructura de control y se utiliza para tomar decisiones. Con ella se evalúan expresiones que pudiera resultar positiva, con lo
//cual se ejecuta una acción u otra si resultare negativa.

//La sintaxis es:

/*if (expresión) {

//acciones a realizar en caso positivo

//...

} else {

//acciones a realizar en caso negativo

//...

}
*/
if(8>=8){
    console.log("Es correcto");
}else{
    console.log('No es correcto');
}

//Operador condicional ternario. Se usa como atajo a la instrucción if y es el único operador con tres operandos => condición ? expr1 : expr2.

//condición
//Una expresión que se evalúa como true o false.

//expr1, expr2
//Expresión con valores de algún tipo.

// let isMember= true;
// console.log("La cuota es de: " + (isMember ? "$ 200" : "$ 350"));

//Se puede asignar variables dependiendo del resultado de la condición ternaria:

// let constante = Math.PI > 4 ? "si" : "no";
// console.log(constante);

//También es posible realizar evaluaciones ternarias múltiples (Nota: El operador condicional es asociativo):

// var firstCheck = false,
// secondCheck = false,
//     access = firstCheck ? "Acceso Denegado" : secondCheck ? "Acceso Denegado" : "Acceso Permitido";

// console.log( access ); // muestra "Acceso Permitido"

//También puede usar operaciones ternarias en espacio vacío con el propósito de realizar diferentes operaciones:

// var stop = false, age = 16;

// age > 18 ? location.assign("continue.html") : stop = true;

// console.log(stop);

//También puede realizar más de una operación por caso, separándolas con una coma:

// var stop = false, age = 23;
// age < 18 ? (
//     alert("OK, puedes continuar."),
//     location.assign("continue.html")
// ) : (
//     stop = true,
//     alert("Disculpa, eres menor de edad!")
// );

//Otro ejemplo de este mismo caso.

var edad = 14;
edad > 18 ? (
alert("Bueno, puedes ingresar."),
window.open("www.devcode.la")
) : (
alert("Hey, espera."),
alert("Disculpa, eres menor de edad!")
)

//Operadores lógicos => && Y lógico, || O lógico y ! negación lógica. 
//Recuerda que el operador de negación lógica devuelve falso para la sentencias que son verdaderas y verdadero para las que son falsas

//  var x = 5;
//  var y = 8;
//  document.getElementById("compara").innerHTML = !(x === "5") + "<br>" + !(x < y);


/*Operador lógico AND (&&)
Este operador lógico compara dos expresiones. Si la primera se evalúa como "verdadera" (truthy), la sentencia devolverá el valor de la 
segunda expresión. Si la primera expresión se evalúa como "falsa"(falsy), la sentencia devolverá el valor de la primera expresión.
Cuando solo se incluyen valores booleanos (true o false), se devuelve verdadero si las dos expresiones son verdaderas. Si una o ambas 
expresiones son falsas, la sentencia completa se devolverá como falsa.

true && true //devuelve el segundo valor, verdadero
true && false //devuelve el segundo valor, falso
false && false //devuelve el primer valor, falso
123 && 'abc' // devuelve el segundo valor, 'abc'
'abc' && null //devuelve el segundo valor, nulo
undefined && 'abc' //devuelve el primer valor, indefinido
0 && false //devuelve el primer valor, 0*/

if (hayClases === true && esFeriado != true) {
    console.log("Me conecto a la videollamada");
} else {
    console.log("No me conecto a la vodeollamada");
}

/*Operador lógico OR ( || )
Este operador lógico compara dos expresiones. Si la primera se evalúa como "falsa", la sentencia devolverá el valor de la segunda expresión.
Si la primera se evalúa como "verdadera", la sentencia devolverá el valor de la primera expresión. Cuando solo se incluyen valores booleanos 
(true o false), se devuelve como true si cualquiera de las dos expresiones son verdaderas. Ambas expresiones pueden ser verdaderas, pero solo 
se necesita una para que el resultado sea verdadero.

true || true //devuelve el primer valor, verdadero
true || false //devuelve el primer valor, verdadero
false || false //devuelve el segundo valor, falso
123 || 'abc' //devuelve el primer valor, 123
'abc' || null //devuelve el primer valor, 'abc'
undefined || 'abc' //devuelve el segundo valor, 'abc'
0 || false //devuelve el segundo valor, falso

Evaluación de "corto circuito"
&& y || funcionan como operadores de corto circuito.

Con el operador lógico AND, si el primer operando se devuelve como falso, el segundo nunca será evaluado y se devolverá el primer operando.

Con el operador lógico OR, si el primer valor se devuelve como verdadero, el segundo nunca será evaluado y el primer operando será devuelto.*/

let saludo = "Régulo Luna";
let saludar = "Hola " + saludo + " ¿Cómo estás?";
console.log(saludar);
document.write(saludar + "<br>");

function calc(){
    var argOne=document.getElementById('arg1').value; 
    var argTwo=document.getElementById('arg2').value;
    var ans=(argOne*argTwo); 
    document.getElementById('result').innerHTML=argOne + ' multiplicado por ' + argTwo + ' es igual a ' + ans;
}

    calc();

let lista = document.getElementById('compara');

var i;

for (i=0;i<=10;i++) {

    document.write(i)

    document.write("<br>")
}

for (i=1;i<=1000;i+=2)

document.write(i, " "); 

for (i=200;i>=10;i--)

document.write(i, " ");

var color = ""

while (color != "rojo"){

color = prompt("dame un color (escribe rojo para salir)","")

}

for (i=1;i<10;i++){

    document.write("<br><b>La tabla del " + i + ":</b><br>")
    
    for (j=1;j<10;j++) {
    
    document.write(i + " x " + j + ": ")
    
    document.write(i*j)
    
    document.write("<br>")
    
    }
    
    }


