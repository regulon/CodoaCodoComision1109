
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author regul
 */
public class Conectar {
    Connection con;
    public Connection getConnection(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/comision1109", "root", "");
        } catch (Exception e) {
        }
        return con;
    }
}
