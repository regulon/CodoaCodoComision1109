
package clase3;
import personal.Personal;
import personal.Departamento;
/**
 *
 * @author Regulo R Luna Aponte
 */
public class Clase3 {

  
    public static void main(String[] args) {
        Personal persona = new Personal("Regulo", "Lun", 64);
        persona.setSueldo(250000);
        Personal administrativo = new Personal("Juan", "Perez", 48);
        administrativo.setSueldo(80000);
        System.out.println("El sueldo del personal administrativo es " + administrativo.getSueldo());
        Personal mantenimiento = new Personal("Alberto", "martinez", 35);
        mantenimiento.setSueldo(60000);
        System.out.println("El sueldo del personal de mantenimiento es " + mantenimiento.getSueldo());
        Departamento it = new Departamento("Veronica", "Furlan", 32, "Desarrollo");
        it.setSueldo(500000);
        System.out.println(it.nombre + " está ganando " + it.getSueldo());
        it.depto = ("Gerencia General");
        System.out.println(it.MostrarDatos());
    }
    
}
