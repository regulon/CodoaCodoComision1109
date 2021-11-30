package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author regul
 */
public class Conexion {

    public String driver = "com.mysql.cj.jdbc.Driver";

    public Connection getConnection() throws SQLException {
        Connection conexion = null;
        try {
            Class.forName(driver);
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/comision1109",
                    "reguloluna", "4554");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.toString());
        }
        return conexion;
    }

    /*public static void main(String[] args) throws SQLException {
        Connection c = null;
        Conexion con = new Conexion();
        c = con.getConnection();
        PreparedStatement ps;
        ResultSet rs;

        ps = c.prepareStatement("SELECT * FROM registrosinmuebles");
        rs = ps.executeQuery();

        while (rs.next()) {
            int id = rs.getInt("id");
            String tipo = rs.getString("tipo");
            String colocacion = rs.getString("colocacion");
            String precioDolares = rs.getString("precioDolares");
            Double otrosDetallesExpensas = rs.getDouble("otrosDetallesExpensas");

            System.out.println("Id: " + id + " Tipo de Inmueble: " + tipo + " Colocación: " + colocacion + " Precio en dólares: " + precioDolares + " Expensas: " + otrosDetallesExpensas);
        }
    }*/
}
