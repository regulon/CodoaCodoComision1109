package controller;

import dao.InmuebleDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Inmueble;

/**
 *
 * @author regul
 */
@WebServlet(name = "InmuebleController", urlPatterns = {"/InmuebleController"})
public class InmuebleController extends HttpServlet {

    public InmuebleController() {
        super();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        
        switch (opcion) {
            case "crear":
                System.out.println("Usted ha presionado la opción crear");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/vistas/crear.jsp");
                requestDispatcher.forward(request, response);
                break;
            case "listar":
                {
                    InmuebleDAO inmuebleDAO = new InmuebleDAO();
                    List<Inmueble> lista = new ArrayList<>();
                    try {
                        lista = inmuebleDAO.obtenerInmuebles();
                        for (Inmueble inmueble : lista) {
                            System.out.println(inmueble);
                            
                        }
                        
                        request.setAttribute("lista", lista);
                        requestDispatcher = request.getRequestDispatcher("/vistas/listar.jsp");
                        requestDispatcher.forward(request, response);
                        
                    } catch (SQLException e) {
                        
                        e.printStackTrace();
                    }       System.out.println("Usted ha presionado la opción listar");
                    break;
                }
            case "meditar":
                {
                    int id = Integer.parseInt(request.getParameter("id"));
                    System.out.println("Editar id: " + id);
                    InmuebleDAO inmuebleDAO = new InmuebleDAO();
                    Inmueble Inm = new Inmueble();
                    try {
                        Inm = inmuebleDAO.obtenerInmueble(id);
                        System.out.println(Inm);
                        request.setAttribute("inmueble", Inm);
                        requestDispatcher = request.getRequestDispatcher("/vistas/editar.jsp");
                        requestDispatcher.forward(request, response);
                    } catch (SQLException e) {
                        
                        e.printStackTrace();
                    }       break;
                }
            case "eliminar":
                {
                    InmuebleDAO inmuebleDAO = new InmuebleDAO();
                    int id = Integer.parseInt(request.getParameter("id"));
                    try {
                        inmuebleDAO.eliminar(id);
                        System.out.println("Registro eliminado satisfactoriamente...");
                        requestDispatcher = request.getRequestDispatcher("/principal.jsp");
                        requestDispatcher.forward(request, response);
                    } catch (SQLException e) {
                        
                        e.printStackTrace();
                    }       break;
                }
            default:
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String opcion = request.getParameter("opcion");

        if (opcion.equals("guardar")) {
            InmuebleDAO inmuebleDAO = new InmuebleDAO();
            Inmueble inmueble = new Inmueble();
            inmueble.setTipoinmueble(request.getParameter("tipoinmueble"));
            inmueble.setObjeto(request.getParameter("objeto"));
            inmueble.setPrecioVentaDolares(request.getParameter("ventadolares"));
            inmueble.setPrecioVentaPesosArg(request.getParameter("ventapesos"));
            inmueble.setPrecioAlquilerDolares(request.getParameter("alquilerdolares"));
            inmueble.setPrecioAlquilerPesosArg(request.getParameter("alquilerpesos"));
            inmueble.setPrecioExpensas(request.getParameter("expensas"));
            inmueble.setCaracteristicaArea(request.getParameter("area"));
            inmueble.setCaracteristicaAmbientes(request.getParameter("ambiente"));
            inmueble.setCaracteristicaHabitaciones(request.getParameter("habitacion"));
            inmueble.setCaracteristicaBanos(request.getParameter("bano"));
            inmueble.setCaracteristicaToilets(request.getParameter("toilet"));
            inmueble.setUbicacionBarrio(request.getParameter("barrio"));
            inmueble.setUbicacionAvenidaOCalle(request.getParameter("avecalle"));
            inmueble.setUbicacionAltura(request.getParameter("altura"));
            inmueble.setUbicacionCodigoPostal(request.getParameter("codigo"));
            inmueble.setNumDepOCasa(request.getParameter("depocasa"));
            inmueble.setPiso(request.getParameter("piso"));
            inmueble.setInformacionAdicional(request.getParameter("infoadicional"));
            
            try {
                inmuebleDAO.guardar(inmueble);
                System.out.println("Registro guardado satisfactoriamante");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/principal.jsp");
                requestDispatcher.forward(request, response);
            } catch (SQLException e) {
                
                e.printStackTrace();
            }
        } else if (opcion.equals("editar")) {
            Inmueble inmueble = new Inmueble();
            InmuebleDAO inmuebleDAO = new InmuebleDAO();

            inmueble.setId(Integer.parseInt(request.getParameter("id")));
            inmueble.setTipoinmueble(request.getParameter("tipoinmueble"));
            inmueble.setObjeto(request.getParameter("objeto"));
            inmueble.setPrecioVentaDolares(request.getParameter("ventadolares"));
            inmueble.setPrecioVentaPesosArg(request.getParameter("ventapesos"));
            inmueble.setPrecioAlquilerDolares(request.getParameter("alquilerdolares"));
            inmueble.setPrecioAlquilerPesosArg(request.getParameter("alquilerpesos"));
            inmueble.setPrecioExpensas(request.getParameter("expensas"));
            inmueble.setCaracteristicaArea(request.getParameter("area"));
            inmueble.setCaracteristicaAmbientes(request.getParameter("ambiente"));
            inmueble.setCaracteristicaHabitaciones(request.getParameter("habitacion"));
            inmueble.setCaracteristicaBanos(request.getParameter("bano"));
            inmueble.setCaracteristicaToilets(request.getParameter("toilet"));
            inmueble.setUbicacionBarrio(request.getParameter("barrio"));
            inmueble.setUbicacionAvenidaOCalle(request.getParameter("avecalle"));
            inmueble.setUbicacionAltura(request.getParameter("altura"));
            inmueble.setUbicacionCodigoPostal(request.getParameter("codigo"));
            inmueble.setNumDepOCasa(request.getParameter("depocasa"));
            inmueble.setPiso(request.getParameter("piso"));
            inmueble.setInformacionAdicional(request.getParameter("infoadicional"));
            try {
                inmuebleDAO.editar(inmueble);
                System.out.println("Registro editado satisfactoriamante");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/principal.jsp");
                requestDispatcher.forward(request, response);
            } catch (SQLException e) {
            
                e.printStackTrace();
            }

        }

    }

}
