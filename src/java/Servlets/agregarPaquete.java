/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Paquete;
import Logica.Servicio;
import Persistencia.ControladoraPersistencia;
import com.sun.prism.impl.BufferUtil;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author topli_000
 */
@WebServlet(name = "agregarPaquete", urlPatterns = {"/agregarPaquete"})
public class agregarPaquete extends HttpServlet {
 Double valor = 00.0;
Double valort = 00.0;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet agregarPaquete</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet agregarPaquete at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       String[] cadena = request.getParameterValues("ck1");
          for(int i=0;i<cadena.length;i++)
          {
              String hola = cadena[i];
              System.out.println(hola);
          }
          int cantidad = Integer.parseInt(request.getParameter("dias"));
          String nombre = request.getParameter("nom");
          ControladoraPersistencia control = new ControladoraPersistencia();
          Paquete pack = new Paquete(cantidad, nombre);
          
          List<Servicio> servic = control.getServicios();
          List<Servicio> servic2 = new ArrayList<>();
          
          for(Servicio servici : servic)
          {
              
               for(int i=0;i<cadena.length;i++)
          {
                       
              String nomb = cadena[i];
              if(nomb.equals(servici.getNomservicio()))
              {
                  servic2.add(servici);
                  valor = servici.getCosto();
                  valort = valort + valor;
                 
              }
              
               }
            
          }
           pack.setValor(valort);
          pack.setListaServicios(servic2);
          
          
          
  
          
          
          control.crearPaquete(pack);
          
valor = 00.0;
valort = 00.0;
            response.sendRedirect("Paquetes.jsp");    
        //System.out.println(Arrays.toString(hola));

 
}

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
