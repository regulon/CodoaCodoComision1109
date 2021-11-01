/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package niveles;

/**
 *
 * @author Regulo R Luna Aponte
 */
public class Niveles {
    public String dificultad;
    public String experiencia;
    public String checkpoint;
    public Niveles(String dificultad, String experiencia, String checkpoint){
         this.dificultad=dificultad;
         this.experiencia=experiencia;
         this.checkpoint=checkpoint;
        
    }
    public String reiniciar(){
        return this.checkpoint;
    }
}
