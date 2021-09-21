alert("Hola Mundo") /*ventana emergente*/
        console.log("Estamos en la consola")

        let nombre = "Régulo Luna"; /*tipo string*/
        var numero = 10; /*tipo Numérica*/
        const PI = 3.1416; /*Constante*/
        let hayClases = true; /*Booleano*/
        console.log(numero + 25 + " " + nombre) /*Concatenar*/
        console.log(numero + 25 + nombre)
        console.log(5>3)
        let esFeriado=true;
        /* Condicionales*/
        console.log(hayClases)
        if(5>3){
            console.log("Es correcto")
        }else{ /* si es falso*/
            console.log("No es correcto")
        }
        console.log((5 > 3) ? "Es correcto 5 > 3": "No es correcto"); /*Ternario*/
        if(hayClases){
            console.log("Me conecto a la videollamada")
        }else{
            console.log("No me conecto a la videollamada")
        }
        if((hayClases == true) && esFeriado != true){ /*para que sea true ambas condiciones se tienen que cumplir*/

            console.log("Me conecto a la videollamada")
        }else{
            console.log("No me conecto a la videollamada")
        }
        if(25 < 32 && 12 > 20){
            console.log("se cumplió la consición")
        }
        if(25 < 32 || 12 > 20){ /*se cumple una de las condiciones*/
            console.log("se cumplió la condición")
        }
        let saludo = "Hola, ¿Cómo estás?"
        let saludar = saludo + nombre;

        let elemento = document.getElementById("principal");
        // console.log(elemento)
        elemento.innerHTML = "<h1 class='text-center bg-info'>" + saludar + "</h1>";