// let nombre = prompt("Ingresá tu nombre!");
let miDiv = document.getElementById("principal");
// miDiv.innerHTML="Hola "+nombre;

let btn = document.getElementById("btn");
btn.addEventListener("click", calcular);

function calcular(){
    let num = Number(prompt("Ingresa un número"));
    let num2 = Number(prompt("Ingresa otro número"));
    let op = prompt("Escribier la operación a realizar \n + para sumar \n - para resta \n * para multiplicar \n / para dividir \n ** para exponenciales \n r para raices");
    let resultado = 0;

    switch (op) {

        case "+":
            resultado = num + num2;
            miDiv.innerHTML +="<p> El resultado de la suma de "+num +" y "+num2+ " es: = " + resultado + "</p>";
            break;

        case "-":
            resultado = num - num2;
            miDiv.innerHTML +="<p> El resultado de la resta de "+num +" y "+num2+ " es = " + resultado + "</p>";
            break;

        case "/":
            resultado = num / num2;
            miDiv.innerHTML +="<p> El resultado de la División de "+num +" y "+num2+ " es = " + resultado + "</p>";
            break;

        case "*":
            resultado = num * num2;
            miDiv.innerHTML +="<p> El resultado de la multiplicación de "+num +" por "+num2+ " es = " + resultado + "</p>";
            break;

        case "**":
            resultado = num ** num2;
            miDiv.innerHTML +="<p> El resultado de "+num +" elevado al exponente "+num2+ " es = " + resultado + "</p>";
            break;

        case "r":
            resultado = Math.pow(num, 1.0/num2);
            miDiv.innerHTML +="<p> El resultado de la raiz enésima "+"(n= "+num2 +") de "+num+ " es = " + resultado + "</p>";
            break;
    

        default:
            elemento.innerHTML="<p>Esta operación no se puede realizar!</p>"
            let mensaje = prompt("recuerde que solo puede hacer las siguientes \n + para sumar \n - para resta \n * para multiplicar \n / para dividir \n ** para exponenciales \n r para raices");
            break;
    }
 

    

}