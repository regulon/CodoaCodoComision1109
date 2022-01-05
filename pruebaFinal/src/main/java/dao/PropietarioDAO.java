
package dao;

import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.Propietario;

/**
 *
 * @author regul
 */
public class PropietarioDAO {
    
    private Connection connection;
	private PreparedStatement statement;
	private boolean estadoOperacion;
	
	//Guardar propietario
        public boolean guardar(Propietario propietario) throws SQLException {
		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();
                
                try {
			connection.setAutoCommit(false);
			sql ="INSERT INTO propietarios (id_propietario, nombres, apellidos, dni, email, telefono, direccion) VALUES (?, ?, ?, ?, ?, ?, ?)";
			statement = connection.prepareStatement(sql);
			
			statement.setString(1, null);
			statement.setString(2, propietario.getNombres());
			statement.setString(3, propietario.getApellidos());
                        statement.setString(4, propietario.getDni());
			statement.setString(5, propietario.getEmail());
			statement.setString(6, propietario.getTelefono());
			statement.setString(7, propietario.getDireccion());
                        
                        estadoOperacion = statement.executeUpdate()>0;
			connection.commit();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}
		
		return estadoOperacion;
	}
	//Editar propietario
        public boolean editar(Propietario propietario) throws SQLException {
			String sql = null;
			estadoOperacion = false;
			connection = obtenerConexion();
			try {
				connection.setAutoCommit(false);
				sql ="UPDATE propietarios SET nombres=?, apellidos=?, dni=?, email=?, telefono=?, direccion=? WHERE id_propietario=?";
				statement = connection.prepareStatement(sql);
				
				statement.setString(1, propietario.getNombres());
				statement.setString(2, propietario.getApellidos());
                                statement.setString(3, propietario.getDni());
				statement.setString(4, propietario.getEmail());
				statement.setString(5, propietario.getTelefono());
				statement.setString(6, propietario.getDireccion());
                                statement.setInt(7, propietario.getId_propietario());
                                
                                estadoOperacion = statement.executeUpdate()>0;
				connection.commit();
				statement.close();
				connection.close();
				
			} catch (SQLException e) {
				connection.rollback();
				e.printStackTrace();
			}
		return estadoOperacion;
	}
        
        //Eliminar propietario
	public boolean eliminar(int idPropietario) throws SQLException {
		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();
		try {
			connection.setAutoCommit(false);
			sql ="DELETE FROM propietarios WHERE id_propietario=?";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, idPropietario);
			
			estadoOperacion = statement.executeUpdate()>0;
			connection.commit();
			statement.close();
			connection.close();
			
		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}
	return estadoOperacion;
	}
        
        //Obtener lista de propietarios
	public List<Propietario> obtenerPropietario() throws SQLException {
		ResultSet resultSet = null;
		List<Propietario> listaPropietario = new ArrayList<>();
		
		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();
		try {
			sql = "SELECT * FROM propietarios";
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				Propietario prop = new Propietario();
				prop.setId_propietario(resultSet.getInt(1));
				prop.setNombres(resultSet.getString(2));
				prop.setApellidos(resultSet.getString(3));
                                prop.setDni(resultSet.getString(4));
				prop.setEmail(resultSet.getString(5));
				prop.setTelefono(resultSet.getString(6));
				prop.setDireccion(resultSet.getString(7));
                                listaPropietario.add(prop);
                                
                                }
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listaPropietario;
	}
	//Obtener propietario
        public Propietario obtenerPropietario(int idPropietario) throws SQLException {
			ResultSet resultSet = null;
			Propietario prop = new Propietario();
			
			String sql = null;
			estadoOperacion = false;
			connection = obtenerConexion();
			try {
				sql = "SELECT * FROM propietarios WHERE id_propietario=?";
				statement = connection.prepareStatement(sql);
				statement.setInt(1, idPropietario);
				
				resultSet = statement.executeQuery();
				
				if(resultSet.next()) {
					
					prop.setId_propietario(resultSet.getInt(1));
					prop.setNombres(resultSet.getString(2));
					prop.setApellidos(resultSet.getString(3));
                                        prop.setDni(resultSet.getString(4));
					prop.setEmail(resultSet.getString(5));
					prop.setTelefono(resultSet.getString(6));
					prop.setDireccion(resultSet.getString(7));
                                        
                                        }
			} catch (SQLException e) {
				e.printStackTrace();
			}

			return prop;
	}
				
        //Obtener conexión pool
	private Connection obtenerConexion() throws SQLException {
		return Conexion.getConnection();
	}  
}

