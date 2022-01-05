
package modelo;

/**
 *
 * @author regul
 */
public class Inmueble {
    private int id;
	private String tipoinmueble;
	private String objeto;
	private String precioVentaDolares;
	private String precioVentaPesosArg;
	private String precioAlquilerDolares;
	private String precioAlquilerPesosArg;
	private String precioExpensas;
	private String caracteristicaArea;
	private String caracteristicaAmbientes;
	private String caracteristicaHabitaciones;
	private String caracteristicaBanos;
	private String caracteristicaToilets;
	private String ubicacionBarrio;
	private String ubicacionAvenidaOCalle;
	private String ubicacionAltura;
	private String ubicacionCodigoPostal;
	private String numDepOCasa;
	private String piso;
	private String informacionAdicional;

    public Inmueble() {
    }

    public Inmueble(int id, String tipoinmueble, String objeto, String precioVentaDolares, String precioVentaPesosArg, String precioAlquilerDolares, String precioAlquilerPesosArg, String precioExpensas, String caracteristicaArea, String caracteristicaAmbientes, String caracteristicaHabitaciones, String caracteristicaBanos, String caracteristicaToilets, String ubicacionBarrio, String ubicacionAvenidaOCalle, String ubicacionAltura, String ubicacionCodigoPostal, String numDepOCasa, String piso, String informacionAdicional) {
        this.id = id;
        this.tipoinmueble = tipoinmueble;
        this.objeto = objeto;
        this.precioVentaDolares = precioVentaDolares;
        this.precioVentaPesosArg = precioVentaPesosArg;
        this.precioAlquilerDolares = precioAlquilerDolares;
        this.precioAlquilerPesosArg = precioAlquilerPesosArg;
        this.precioExpensas = precioExpensas;
        this.caracteristicaArea = caracteristicaArea;
        this.caracteristicaAmbientes = caracteristicaAmbientes;
        this.caracteristicaHabitaciones = caracteristicaHabitaciones;
        this.caracteristicaBanos = caracteristicaBanos;
        this.caracteristicaToilets = caracteristicaToilets;
        this.ubicacionBarrio = ubicacionBarrio;
        this.ubicacionAvenidaOCalle = ubicacionAvenidaOCalle;
        this.ubicacionAltura = ubicacionAltura;
        this.ubicacionCodigoPostal = ubicacionCodigoPostal;
        this.numDepOCasa = numDepOCasa;
        this.piso = piso;
        this.informacionAdicional = informacionAdicional;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipoinmueble() {
        return tipoinmueble;
    }

    public void setTipoinmueble(String tipoinmueble) {
        this.tipoinmueble = tipoinmueble;
    }

    public String getObjeto() {
        return objeto;
    }

    public void setObjeto(String objeto) {
        this.objeto = objeto;
    }

    public String getPrecioVentaDolares() {
        return precioVentaDolares;
    }

    public void setPrecioVentaDolares(String precioVentaDolares) {
        this.precioVentaDolares = precioVentaDolares;
    }

    public String getPrecioVentaPesosArg() {
        return precioVentaPesosArg;
    }

    public void setPrecioVentaPesosArg(String precioVentaPesosArg) {
        this.precioVentaPesosArg = precioVentaPesosArg;
    }

    public String getPrecioAlquilerDolares() {
        return precioAlquilerDolares;
    }

    public void setPrecioAlquilerDolares(String precioAlquilerDolares) {
        this.precioAlquilerDolares = precioAlquilerDolares;
    }

    public String getPrecioAlquilerPesosArg() {
        return precioAlquilerPesosArg;
    }

    public void setPrecioAlquilerPesosArg(String precioAlquilerPesosArg) {
        this.precioAlquilerPesosArg = precioAlquilerPesosArg;
    }

    public String getPrecioExpensas() {
        return precioExpensas;
    }

    public void setPrecioExpensas(String precioExpensas) {
        this.precioExpensas = precioExpensas;
    }

    public String getCaracteristicaArea() {
        return caracteristicaArea;
    }

    public void setCaracteristicaArea(String caracteristicaArea) {
        this.caracteristicaArea = caracteristicaArea;
    }

    public String getCaracteristicaAmbientes() {
        return caracteristicaAmbientes;
    }

    public void setCaracteristicaAmbientes(String caracteristicaAmbientes) {
        this.caracteristicaAmbientes = caracteristicaAmbientes;
    }

    public String getCaracteristicaHabitaciones() {
        return caracteristicaHabitaciones;
    }

    public void setCaracteristicaHabitaciones(String caracteristicaHabitaciones) {
        this.caracteristicaHabitaciones = caracteristicaHabitaciones;
    }

    public String getCaracteristicaBanos() {
        return caracteristicaBanos;
    }

    public void setCaracteristicaBanos(String caracteristicaBanos) {
        this.caracteristicaBanos = caracteristicaBanos;
    }

    public String getCaracteristicaToilets() {
        return caracteristicaToilets;
    }

    public void setCaracteristicaToilets(String caracteristicaToilets) {
        this.caracteristicaToilets = caracteristicaToilets;
    }

    public String getUbicacionBarrio() {
        return ubicacionBarrio;
    }

    public void setUbicacionBarrio(String ubicacionBarrio) {
        this.ubicacionBarrio = ubicacionBarrio;
    }

    public String getUbicacionAvenidaOCalle() {
        return ubicacionAvenidaOCalle;
    }

    public void setUbicacionAvenidaOCalle(String ubicacionAvenidaOCalle) {
        this.ubicacionAvenidaOCalle = ubicacionAvenidaOCalle;
    }

    public String getUbicacionAltura() {
        return ubicacionAltura;
    }

    public void setUbicacionAltura(String ubicacionAltura) {
        this.ubicacionAltura = ubicacionAltura;
    }

    public String getUbicacionCodigoPostal() {
        return ubicacionCodigoPostal;
    }

    public void setUbicacionCodigoPostal(String ubicacionCodigoPostal) {
        this.ubicacionCodigoPostal = ubicacionCodigoPostal;
    }

    public String getNumDepOCasa() {
        return numDepOCasa;
    }

    public void setNumDepOCasa(String numDepOCasa) {
        this.numDepOCasa = numDepOCasa;
    }

    public String getPiso() {
        return piso;
    }

    public void setPiso(String piso) {
        this.piso = piso;
    }

    public String getInformacionAdicional() {
        return informacionAdicional;
    }

    public void setInformacionAdicional(String informacionAdicional) {
        this.informacionAdicional = informacionAdicional;
    }
   
}
    

