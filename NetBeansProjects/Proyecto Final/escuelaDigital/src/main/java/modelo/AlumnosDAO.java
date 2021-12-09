package modelo;

import config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AlumnosDAO {

    Connection conexion;

    public AlumnosDAO() {
        Conexion con = new Conexion();
        conexion = con.getConnection();
    }

    public List<Alumnos> listarAlumnos() {
        PreparedStatement ps;
        ResultSet rs;
        List<Alumnos> lista = new ArrayList<>();
        try {
            ps = conexion.prepareStatement("SELECT * FROM participantes");
            rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombres");
                String apellido = rs.getString("apellidos");
                String email = rs.getString("email");
                String telefono = rs.getString("telefono");
                Alumnos alumnos = new Alumnos(id, nombre, apellido, email, telefono);
                lista.add(alumnos);
            }
            return lista;
        } catch (SQLException e) {
            System.out.println("e.toString");
            return null;
        }
    }
    
    public Alumnos mostrarAlumno(int _id){
       PreparedStatement ps;
       ResultSet rs; 
       Alumnos alumno = null;
       
        try {
            ps = conexion.prepareStatement("SELECT id, nombres, apellidos, email, telefono * FROM participantes WHERE id = ?");
            ps.setInt(1, _id);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombres");
                String apellido = rs.getString("apellidos");
                String email = rs.getString("email");
                String telefono = rs.getString("telefono");
                alumno = new Alumnos (id, nombre, apellido, email, telefono);
            }
            return alumno;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return null;
        }
    }
    public boolean insertarAlumno(Alumnos alumno){
        PreparedStatement ps;
        try {
            ps = conexion.prepareStatement("INSERT INTO participantes(nombre, apellido, email, telefono) VALUES(?,?,?,?)");
            ps.setString(1,alumno.getNombre());
            ps.setString(2,alumno.getApellido());
            ps.setString(3,alumno.getEmail());
            ps.setString(4,alumno.getTelefono());
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
            
        }
    
    
    }
    public boolean actualizarAlumno(Alumnos alumno){
        PreparedStatement ps;
        try {
            ps = conexion.prepareStatement("UPDATE participantes SET nombre=?, apellido=?, email=?, telefono=?) WHERE id=?");
            ps.setString(1,alumno.getNombre());
            ps.setString(2,alumno.getApellido());
            ps.setString(3,alumno.getEmail());
            ps.setString(4,alumno.getTelefono());
            ps.setInt(5, alumno.getId());
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
            
        }
    }
    public boolean eliminarAlumno(int _id){
    PreparedStatement ps;
        try {
            ps = conexion.prepareStatement("DELETE FROM participantes WHERE id=?");

            ps.setInt(1,_id);
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
            
        }
    }
}
