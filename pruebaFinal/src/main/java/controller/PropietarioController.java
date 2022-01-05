package controller;

import dao.PropietarioDAO;
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
import modelo.Propietario;

/**
 *
 * @author regul
 */
@WebServlet(name = "PropietarioController", urlPatterns = {"/PropietarioController"})
public class PropietarioController extends HttpServlet {

    public PropietarioController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String opcion = request.getParameter("opcion");

        switch (opcion) {
            case "crear":
                System.out.println("Usted ha presionado la opción crear");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/vistas/crearP.jsp");
                requestDispatcher.forward(request, response);
                break;
            case "listar": {
                PropietarioDAO propietarioDAO = new PropietarioDAO();
                List<Propietario> lista = new ArrayList<>();
                try {
                    lista = propietarioDAO.obtenerPropietario();
                    for (Propietario propietario : lista) {
                        System.out.println(propietario);

                    }

                    request.setAttribute("lista", lista);
                    requestDispatcher = request.getRequestDispatcher("/vistas/listarP.jsp");
                    requestDispatcher.forward(request, response);

                } catch (SQLException e) {

                    e.printStackTrace();
                }
                System.out.println("Usted ha presionado la opción listar");
                break;
            }
            case "meditar": {
                int id_propietario = Integer.parseInt(request.getParameter("id_propietario"));
                System.out.println("Editar id: " + id_propietario);
                PropietarioDAO propietarioDAO = new PropietarioDAO();
                Propietario Prop = new Propietario();

                try {
                    Prop = propietarioDAO.obtenerPropietario(id_propietario);
                    System.out.println(Prop);
                    request.setAttribute("propietario", Prop);
                    requestDispatcher = request.getRequestDispatcher("/vistas/editarP.jsp");
                    requestDispatcher.forward(request, response);
                } catch (SQLException e) {

                    e.printStackTrace();
                }
                break;
            }
            case "eliminar": {
                PropietarioDAO propietarioDAO = new PropietarioDAO();
                int id_propietario = Integer.parseInt(request.getParameter("id_propietario"));
                try {
                    propietarioDAO.eliminar(id_propietario);
                    System.out.println("Registro eliminado satisfactoriamente...");
                    requestDispatcher = request.getRequestDispatcher("/principal.jsp");
                    requestDispatcher.forward(request, response);
                } catch (SQLException e) {

                    e.printStackTrace();
                }
                break;
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
            PropietarioDAO propietarioDAO = new PropietarioDAO();
            Propietario propietario = new Propietario();
            propietario.setNombres(request.getParameter("nombres"));
            propietario.setApellidos(request.getParameter("apellidos"));
            propietario.setDni(request.getParameter("dni"));
            propietario.setEmail(request.getParameter("email"));
            propietario.setTelefono(request.getParameter("telefono"));
            propietario.setDireccion(request.getParameter("direccion"));

            try {
                propietarioDAO.guardar(propietario);
                System.out.println("Registro guardado satisfactoriamante");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/principal.jsp");
                requestDispatcher.forward(request, response);
            } catch (SQLException e) {

                e.printStackTrace();
            }
        } else if (opcion.equals("editar")) {
            Propietario propietario = new Propietario();
            PropietarioDAO propietarioDAO = new PropietarioDAO();

            propietario.setId_propietario(Integer.parseInt(request.getParameter("id_propietario")));
            propietario.setNombres(request.getParameter("nombres"));
            propietario.setApellidos(request.getParameter("apellidos"));
            propietario.setDni(request.getParameter("dni"));
            propietario.setEmail(request.getParameter("email"));
            propietario.setTelefono(request.getParameter("telefono"));
            propietario.setDireccion(request.getParameter("direccion"));

            try {
                propietarioDAO.editar(propietario);
                System.out.println("Registro editado satisfactoriamante");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/principal.jsp");
                requestDispatcher.forward(request, response);
            } catch (SQLException e) {

                e.printStackTrace();
            }
        }
    }
}
