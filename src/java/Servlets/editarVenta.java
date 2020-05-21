/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Cliente;
import Logica.ManejadorFechas;
import Logica.Paquete;
import Logica.Servicio;
import Logica.Venta;
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
@WebServlet(name = "editarVenta", urlPatterns = {"/editarVenta"})
public class editarVenta extends HttpServlet {
Double valort = 00.0;
Double valorpack = 00.0;
Double valor2  = 00.0;
String mpago;
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
            out.println("<title>Servlet editarVenta</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editarVenta at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>"); */
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
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        
        Date fechventa = ManejadorFechas.deStringToDate2(request.getParameter("fecha"));
        Venta unaVenta = new Venta();
        unaVenta.setCodigo(codigo);
        unaVenta.setFecha(fechventa);
        List<Paquete> pack = control.getPaquetes();
        for (Paquete paquete : pack) {
            
            String nom = request.getParameter("sk2");
            
            if(nom.equals(paquete.getNomPaquete()))
            {
                unaVenta.setUnPaquete(paquete);
                   valorpack = paquete.getValor();
            }
        }
         List<Cliente> cli = control.getClientes();
        
        for (Cliente cliente : cli) {
            String nombre = request.getParameter("sk1");
            
            if(nombre.equals(cliente.getNombreapellido()))
            {
                unaVenta.setUnCliente(cliente);
            }
        }
              mpago = request.getParameter("mpago");
        unaVenta.setMedioPago(mpago);
        
         List<Servicio> listaservic = control.getServicios();
        List<Servicio> serviciosventa = new ArrayList<>();
        String[] nomb = request.getParameterValues("ck1");
        for (Servicio servicio : listaservic) {

               for(int i=0;i<nomb.length;i++)
          {
                       
              String nombreserv = nomb[i];
              if(nombreserv.equals(servicio.getNomservicio()))
              {
                  serviciosventa.add(servicio);
                  valor2 = servicio.getCosto();
                 valort = valort + valor2;

              }
              
            }
          }
        valort = valort + valorpack;
       if(mpago.equals("Efectivo"))
        {
            Double aux;
            aux = valort * 0.10;
            valort = valort - aux;
        }
        if(mpago.equals("Credito"))
        {
          
            valort = valort * 1.06;
        }
     
        unaVenta.setValor(valort);
        
        unaVenta.setListaServicios(serviciosventa);
        
   
        control.editarVenta(unaVenta);
       valort = 00.0;
valorpack = 00.0;
valor2  = 00.0;
        response.sendRedirect("VMVentas.jsp");
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
