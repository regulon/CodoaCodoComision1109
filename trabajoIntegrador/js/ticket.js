var capturar = function(){
    let lstNumero = document.getElementsByClassName("form-control"),
            arrayGuardar = [];         
        for (var i = 0; i < lstNumero.length; i++) {    
            arrayGuardar[i] = lstNumero[i].value;
            console.log (lstNumero[i].value);     
            }
            document.getElementById("escribir").innerHTML= `<h6><b><i>**Detalle de la compra**</i></b></h6><b>Nombre: </b> ${lstNumero[0].value} ${lstNumero[1].value} \n <br> <b>Correo:</b> ${lstNumero[2].value} \n <br><b> Cantidad: </b> ${lstNumero[3].value} tickets\n <br><b>Categoria: </b> ${lstNumero[4].value}`;         
            
            if((lstNumero[4].value) == "Estudiante"){
                var descuento1= 0.20;
                var descuentoDato1 = 80;
                
            }else if(lstNumero[4].value === "Trainee"){
                var descuento1= 0.50;
                var descuentoDato1 = 50;
                
            }else{ var descuento1 = 0.85;
                var descuentoDato1 = 15;
                
            }
            const m1 = 200;
                let total = parseInt(lstNumero[3].value) * m1 * descuento1;
               
                document.getElementById("escribir").innerHTML+= `\n <br> <b>Descuento según categoría:</b> ${descuentoDato1}% \n <br> <b>Total a pagar: </b> $ ${total}`;
                console.log(total);


        
            
              


    }
