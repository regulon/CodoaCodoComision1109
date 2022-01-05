
package dao;

import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.Usuario;

/**
 *
 * @author regul
 */
public class UsuarioDAO implements Validar {
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    

    @Override
    public int validar(Usuario user) {
        int r = 0;
        String sql = "SELECT * FROM usuarios WHERE usuario=? and password=?"; 
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsuario());
            ps.setString(2, user.getPassword());
            rs = ps.executeQuery();
            while(rs.next()){
                r = r+1;
                user.setUsuario(rs.getString("usuario"));
                user.setPassword(rs.getString("password"));
            }
            if(r == 1){
                return 1;
            }else{
                return 0;
            }
        } catch (Exception e) {
            return 0;
        }
    }
    
}
