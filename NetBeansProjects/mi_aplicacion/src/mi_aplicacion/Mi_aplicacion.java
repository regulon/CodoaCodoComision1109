/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mi_aplicacion;

import niveles.Niveles;
public class Mi_aplicacion {
  
    public static void main(String[] args) {
       Juego jugador = new Juego(0,3,"ak45","Juan","Netbeans");
       Juego jugador1 = new Juego(0,3,"ak45","Pedro","Netbeans");
        System.out.println("Soy "+jugador.personaje);
        System.out.println(jugador1.personaje);
        System.out.println(jugador.mostrar_vidas());
        Niveles niveles = new Niveles("media","dos");
        niveles.setDificultad("principiante");
        System.out.println(niveles.getDificultad());
        jugador.vidas=jugador.vidas--;
        
        if(jugador.vidas==0){
            System.out.println(niveles.reiniciar()); 
        }
      
    }
}
