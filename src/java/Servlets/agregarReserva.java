/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Cliente;
import Logica.ManejadorFechas;
import Logica.Paquete;
import Logica.Reserva;
import Logica.Servicio;
import Persistencia.ControladoraPersistencia;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
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
@WebServlet(name = "agregarReserva", urlPatterns = {"/agregarReserva"})
public class agregarReserva extends HttpServlet {
   Double valor2 = 00.0;
        Double valort = 00.0;
        Double valorpack = 00.0;
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
       
        
        ControladoraPersistencia control = new ControladoraPersistencia();
        Reserva reserva = new Reserva();
        
        Date fechinicio = ManejadorFechas.deStringToDate2(request.getParameter("fecha"));
        reserva.setFecha(fechinicio);
        List<Paquete> pack = control.getPaquetes();
        
        for (Paquete paquete : pack) {
            
            String nom = request.getParameter("sk2");
            
            if(nom.equals(paquete.getNomPaquete()))
            {
                reserva.setUnPaquete(paquete);
                valorpack = paquete.getValor();
            }
        }
        
        List<Cliente> cli = control.getClientes();
        
        for (Cliente cliente : cli) {
            String nombre = request.getParameter("sk1");
            
            if(nombre.equals(cliente.getNombreapellido()))
            {
                reserva.setUnCliente(cliente);
            }
        }
        
        
        Double monto = Double.parseDouble(request.getParameter("senia"));
        reserva.setSenia(monto);
        
        Date fechavenc = ManejadorFechas.deStringToDate2(request.getParameter("fechaven"));
        reserva.setFechaVenc(fechavenc);
        
           String[] nomb = request.getParameterValues("ck1");
        List<Servicio> listaservic = control.getServicios();
        List<Servicio> serviciosreserva = new ArrayList<>();
       
        for (Servicio servicio : listaservic) {

               for(int i=0;i<nomb.length;i++)
          {
                       
              String nombreserv = nomb[i];
              if(nombreserv.equals(servicio.getNomservicio()))
              {
                  serviciosreserva.add(servicio);
                  valor2 = servicio.getCosto();
                  
                  valort = valort + valor2;
                 
                  System.out.println("este es el valor 2  " +valor2);
                   System.out.println("este es el valor total" +i +valort);
                   
                 //  valort = valort + valorpack;
              }else { }
              
            }
               
          }
          valort = valort + valorpack;
          reserva.setValor(valort);   
          reserva.setListaServicios(serviciosreserva);
    
        
 String state = request.getParameter("sp1");
 
 reserva.setEstado(state);
 
 control.crearReserva(reserva);
         valor2 = 00.0;
        valort = 00.0;
        valorpack = 00.0;
            response.sendRedirect("Reservas.jsp");   
        
        
        
        
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
