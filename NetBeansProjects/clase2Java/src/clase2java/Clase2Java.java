
package clase2java;

import java.util.Scanner;

/**
 *
 * @author Regulo R Luna Aponte
 */
public class Clase2Java {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese su nombre");
        String nombre = scanner.nextLine();
        System.out.println("Ingrese una contraseña");
        String password = scanner.nextLine();
                
        if("Regulo".equals(nombre)){
            System.out.println("Bienvenido " + nombre);      
        }else{
            
        }
    }
    
}
