package ejerciciosObligatorios;

import java.util.Scanner;
/**
 *
 * @author Regulo R Luna Aponte
 */
public class InfoUsuario {
    public static void main(String args[]){

    Scanner in = new Scanner(System.in);
    String nombre = "", apellido ="",  hobby = "", editCodigo ="", sistOperat ="";
    int edad =0;
    
    System.out.println("Bienvenido al Systema\n Por favor, ingrese los datos que se le solicitan a continuacion:");

    System.out.println("Nombre");
    nombre = in.nextLine();

    System.out.println("Apellido");
    apellido = in.nextLine();

    System.out.println("Edad");
    edad = in.nextInt();
    in.nextLine();

    System.out.println("Hobby");
    hobby = in.nextLine();

    System.out.println("Editor de codigo preferido");
    editCodigo = in.nextLine();

    System.out.println("Sistema operativo que utiliza");
    sistOperat = in.nextLine();

    System.out.println("\n\nBienvenido al Systema\n\n" +(char)27 + "[0;44mLos datos ingresados son:");
    System.out.println((char)27+"[31;0m\033[31m\nNombre: " + "\033[31m"+nombre + " \nApellido: " + "\033[31m"+apellido + "\nEdad: " + "\033[31m"+edad + " anos\nHobby:" + "\033[31m"+hobby + "\nEditor de codigo preferido: " + "\033[31m"+editCodigo + "\nSistema operativo: " + "\033[31m"+sistOperat);
 } 
}