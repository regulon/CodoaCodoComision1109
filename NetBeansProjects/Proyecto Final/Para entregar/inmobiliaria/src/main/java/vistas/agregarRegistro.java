
package vistas;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author regul
 */
@WebServlet(name = "agregarRegistro", urlPatterns = {"/agregarRegistro"})
public class agregarRegistro extends HttpServlet {


    


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ventadolares = request.getParameter("ventadolares");
        String ventapesos = request.getParameter("ventapesos");
        String alquilerdolares = request.getParameter("alquilerdolares");
        String alquilerpesos = request.getParameter("alquilerpesos");
        
        response.setContentType("text,html;charset=UTF-8");
        try(PrintWriter out = response.getWriter()){
            out.println("El precio de venta en dólares es: " + ventadolares);
            out.println("El precio de venta en pesos es: " + ventapesos);
            out.println("El precio del alquiler en dólares es: " + alquilerdolares);
            out.println("El precio del alquiler en pesos es: " + alquilerpesos);
        }  
    }
}
