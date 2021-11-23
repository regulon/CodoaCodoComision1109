/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Regulo R Luna Aponte
 */
public class BaseDeDatos {
    
public String driver = "com.mysql.cj.jdbc.Driver";

    public Connection getConection() {
        Connection conexion = null;
        try {
            conexion = DriverManager.getConnection("jbdc:mysql://localhost:3306/comision 1109");
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return conexion;
    }

    public static void main(String[] args) {
        
        BaseDeDatos con = new BaseDeDatos();
        con.getConection();
        System.out.println("Hola");
    }

}

