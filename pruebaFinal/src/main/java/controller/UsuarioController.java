
package controller;

import dao.UsuarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;

/**
 *
 * @author regul
 */
public class UsuarioController extends HttpServlet {
    UsuarioDAO dao = new UsuarioDAO();
    Usuario u = new Usuario();
    int r;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        if(accion.equals("Ingresar")){
           String usuario = request.getParameter("txtUsuario");
           String password = request.getParameter("txtPasword");
           u.setUsuario(usuario);
           u.setPassword(password);
           r = dao.validar(u);
           if(r == 1){
               request.getSession().setAttribute("usuario", usuario);
               request.getRequestDispatcher("principal.jsp").forward(request, response);    
           }else{
               request.getRequestDispatcher("index.jsp").forward(request, response);
           }
        }else{
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
