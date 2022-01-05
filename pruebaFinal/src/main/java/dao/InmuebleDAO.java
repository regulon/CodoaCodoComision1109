
package dao;

import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.Inmueble;

/**
 *
 * @author regul
 */
public class InmuebleDAO {
    private Connection connection;
	private PreparedStatement statement;
	private boolean estadoOperacion;
	
	//Guardar inmueble
	public boolean guardar(Inmueble inmueble) throws SQLException {
		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();
		
		try {
			connection.setAutoCommit(false);
			sql ="INSERT INTO inmuebles (id, tipoinmueble, objeto, precioVentaDolares, precioVentaPesosArg, precioAlquilerDolares, precioAlquilerPesosArg, precioExpensas, caracteristicaArea, caracteristicaAmbientes, caracteristicaHabitaciones, caracteristicaBanos, caracteristicaToilets, ubicacionBarrio, ubicacionAvenidaOCalle, ubicacionAltura, ubicacionCodigoPostal, numDepOCasa, piso, informacionAdicional) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			statement = connection.prepareStatement(sql);
			
			statement.setString(1, null);
			statement.setString(2, inmueble.getTipoinmueble());
			statement.setString(3, inmueble.getObjeto());
			statement.setString(4, inmueble.getPrecioVentaDolares());
			statement.setString(5, inmueble.getPrecioVentaPesosArg());
			statement.setString(6, inmueble.getPrecioAlquilerDolares());
			statement.setString(7, inmueble.getPrecioAlquilerPesosArg());
			statement.setString(8, inmueble.getPrecioExpensas());
			statement.setString(9, inmueble.getCaracteristicaArea());
			statement.setString(10, inmueble.getCaracteristicaAmbientes());
			statement.setString(11, inmueble.getCaracteristicaHabitaciones());
			statement.setString(12, inmueble.getCaracteristicaBanos());
			statement.setString(13, inmueble.getCaracteristicaToilets());
			statement.setString(14, inmueble.getUbicacionBarrio());
			statement.setString(15, inmueble.getUbicacionAvenidaOCalle());
			statement.setString(16, inmueble.getUbicacionAltura());
			statement.setString(17, inmueble.getUbicacionCodigoPostal());
			statement.setString(18, inmueble.getNumDepOCasa());
			statement.setString(19, inmueble.getPiso());
			statement.setString(20, inmueble.getInformacionAdicional());
			
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
	//Editar inmueble
	public boolean editar(Inmueble inmueble) throws SQLException {
			String sql = null;
			estadoOperacion = false;
			connection = obtenerConexion();
			try {
				connection.setAutoCommit(false);
				sql ="UPDATE inmuebles SET tipoinmueble=?, objeto=?, precioVentaDolares=?, precioVentaPesosArg=?, precioAlquilerDolares=?, precioAlquilerPesosArg=?, precioExpensas=?, caracteristicaArea=?, caracteristicaAmbientes=?, caracteristicaHabitaciones=?, caracteristicaBanos=?, caracteristicaToilets=?, ubicacionBarrio=?, ubicacionAvenidaOCalle=?, ubicacionAltura=?, ubicacionCodigoPostal=?, numDepOCasa=?, piso=?, informacionAdicional=? WHERE id=?";
				statement = connection.prepareStatement(sql);
				
				statement.setString(1, inmueble.getTipoinmueble());
				statement.setString(2, inmueble.getObjeto());
				statement.setString(3, inmueble.getPrecioVentaDolares());
				statement.setString(4, inmueble.getPrecioVentaPesosArg());
				statement.setString(5, inmueble.getPrecioAlquilerDolares());
				statement.setString(6, inmueble.getPrecioAlquilerPesosArg());
				statement.setString(7, inmueble.getPrecioExpensas());
				statement.setString(8, inmueble.getCaracteristicaArea());
				statement.setString(9, inmueble.getCaracteristicaAmbientes());
				statement.setString(10, inmueble.getCaracteristicaHabitaciones());
				statement.setString(11, inmueble.getCaracteristicaBanos());
				statement.setString(12, inmueble.getCaracteristicaToilets());
				statement.setString(13, inmueble.getUbicacionBarrio());
				statement.setString(14, inmueble.getUbicacionAvenidaOCalle());
				statement.setString(15, inmueble.getUbicacionAltura());
				statement.setString(16, inmueble.getUbicacionCodigoPostal());
				statement.setString(17, inmueble.getNumDepOCasa());
				statement.setString(18, inmueble.getPiso());
				statement.setString(19, inmueble.getInformacionAdicional());
				statement.setInt(20, inmueble.getId());
				
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
	//Eliminar inmueble
	public boolean eliminar(int idInmueble) throws SQLException {
		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();
		try {
			connection.setAutoCommit(false);
			sql ="DELETE FROM inmuebles WHERE id=?";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, idInmueble);
			
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
	//Obtener lista de inmuebles
	public List<Inmueble> obtenerInmuebles() throws SQLException {
		ResultSet resultSet = null;
		List<Inmueble> listaImnueble = new ArrayList<>();
		
		String sql = null;
		estadoOperacion = false;
		connection = obtenerConexion();
		try {
			sql = "SELECT * FROM inmuebles";
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				Inmueble in = new Inmueble();
				in.setId(resultSet.getInt(1));
				in.setTipoinmueble(resultSet.getString(2));
				in.setObjeto(resultSet.getString(3));
				in.setPrecioVentaDolares(resultSet.getString(4));
				in.setPrecioVentaPesosArg(resultSet.getString(5));
				in.setPrecioAlquilerDolares(resultSet.getString(6));
				in.setPrecioAlquilerPesosArg(resultSet.getString(7));
				in.setPrecioExpensas(resultSet.getString(8));
				in.setCaracteristicaArea(resultSet.getString(9));
				in.setCaracteristicaAmbientes(resultSet.getString(10));
				in.setCaracteristicaHabitaciones(resultSet.getString(11));
				in.setCaracteristicaBanos(resultSet.getString(12));
				in.setCaracteristicaToilets(resultSet.getString(13));
				in.setUbicacionBarrio(resultSet.getString(14));
				in.setUbicacionAvenidaOCalle(resultSet.getString(15));
				in.setUbicacionAltura(resultSet.getString(16));
				in.setUbicacionCodigoPostal(resultSet.getString(17));
				in.setNumDepOCasa(resultSet.getString(18));
				in.setPiso(resultSet.getString(19));
				in.setInformacionAdicional(resultSet.getString(20));
				listaImnueble.add(in);
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listaImnueble;
	}
	//Obtener inmueble
		public Inmueble obtenerInmueble(int idInmueble) throws SQLException {
			ResultSet resultSet = null;
			Inmueble in = new Inmueble();
			
			String sql = null;
			estadoOperacion = false;
			connection = obtenerConexion();
			try {
				sql = "SELECT * FROM inmuebles WHERE id=?";
				statement = connection.prepareStatement(sql);
				statement.setInt(1, idInmueble);
				
				resultSet = statement.executeQuery();
				
				if(resultSet.next()) {
					
					in.setId(resultSet.getInt(1));
					in.setTipoinmueble(resultSet.getString(2));
					in.setObjeto(resultSet.getString(3));
					in.setPrecioVentaDolares(resultSet.getString(4));
					in.setPrecioVentaPesosArg(resultSet.getString(5));
					in.setPrecioAlquilerDolares(resultSet.getString(6));
					in.setPrecioAlquilerPesosArg(resultSet.getString(7));
					in.setPrecioExpensas(resultSet.getString(8));
					in.setCaracteristicaArea(resultSet.getString(9));
					in.setCaracteristicaAmbientes(resultSet.getString(10));
					in.setCaracteristicaHabitaciones(resultSet.getString(11));
					in.setCaracteristicaBanos(resultSet.getString(12));
					in.setCaracteristicaToilets(resultSet.getString(13));
					in.setUbicacionBarrio(resultSet.getString(14));
					in.setUbicacionAvenidaOCalle(resultSet.getString(15));
					in.setUbicacionAltura(resultSet.getString(16));
					in.setUbicacionCodigoPostal(resultSet.getString(17));
					in.setNumDepOCasa(resultSet.getString(18));
					in.setPiso(resultSet.getString(19));
					in.setInformacionAdicional(resultSet.getString(20));	
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			return in;
	}
	//Obtener conexión pool
	private Connection obtenerConexion() throws SQLException {
		return Conexion.getConnection();
	}
}
