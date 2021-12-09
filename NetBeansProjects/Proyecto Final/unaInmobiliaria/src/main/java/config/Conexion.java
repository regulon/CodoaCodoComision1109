package config;
import java.sql.*;

public class Conexion {
    
	public String driver = "com.mysql.cj.jdbc.Driver";
	
	public Connection getConection() {
		
		Connection conexion = null;
		
		try {
			Class.forName(driver);
			conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/comision1109", "reguloluna", "sql4554");
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e.toString());
		}
		
		return conexion;
			
	}
	
	public static void main(String args[]) throws SQLException {

		Connection c = null;
		Conexion con = new Conexion();
		c = con.getConection();
                PreparedStatement ps;
                ResultSet rs;
                ps = c.prepareStatement("SELECT * FROM inmuebles");
                rs = ps.executeQuery();
                
                while(rs.next()){
                    int id = rs.getInt("id");
                    String tipo = rs.getString("tipo");
                    String colocacion = rs.getString("colocacion");
                    String ventaDolares = rs.getString("precioVentaDolares");
                    String ventaPeso = rs.getString("precioVentaPesosArg");
                    String alquilerDolares = rs.getString("precioAlquilerDolares");
                    String alquilerPesos = rs.getString("precioAlquilerPesosArg");
                    String expensas = rs.getString("otrosDetallesExpensas");
                    String area = rs.getString("otrosDetallesArea");
                    String ambientes = rs.getString("otrosDetallesAmbientes");
                    String habitaciones = rs.getString("otrosDetallesHabitaciones");
                    String banos = rs.getString("otrosDetallesBanos");
                    String toilets = rs.getString("otrosDetallesToilets");
                    String barrio = rs.getString("ubicacionBarrio");
                    String avenidaOCalle = rs.getString("ubicacionAvenidaOCalle");
                    String altura = rs.getString("ubicacionAltura");
                    String codigoPostal = rs.getString("ubicacionCodigoPostal");
                    String departamento = rs.getString("ubicacionDepartamento");
                    String piso = rs.getString("ubicacionPiso");
                    String casa = rs.getString("ubicacionCasa");
                    String informacion = rs.getString("informacionAdicional");
                    
                    System.out.println("Id: " + id + " |Tipo de inmueble: " + tipo + " |Objeto de la negociación: " + colocacion + " |Venta en dolares precio: " + ventaDolares + " |Venta en Pesos Arg precio: " + ventaPeso + " |Alquiler en dolares precio: " + alquilerDolares 
                            + " |Alquiler en Pesos Arg precio: " + alquilerPesos + " |Valor de las expensas: " + expensas + " |Area del inmueble: " + area + " |Ambientes que tiene el inmueble: " + ambientes + " |Tiene " + habitaciones + " habitaciones  |" + banos + " Baño(s)  |" + toilets + " Toilet(s) " 
                            + " |El inmueble está ubicado en el barrio " + barrio + " |En la Av/Calle: " + avenidaOCalle + " |Altura: " + altura + " |Código Postal: " + codigoPostal + " |Departamento No. " + departamento + " |Piso " + piso + " |Casa No. " + casa + " |y además cuenta con: " + informacion);
                            
                }
	}

}

