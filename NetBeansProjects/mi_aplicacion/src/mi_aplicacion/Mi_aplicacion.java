/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mi_aplicacion;

import niveles.Niveles;

/**
 *
 * @author Regulo R Luna Aponte
 */
public class Mi_aplicacion {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Niveles niveles=new Niveles("media","principiante","dos");
        System.out.println(niveles.checkpoint);
// TODO code application logic here
    }
    
}
