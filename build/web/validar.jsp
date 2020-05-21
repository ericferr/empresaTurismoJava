
<%@page import="Logica.Usuario"%>
<%@page import="Servlets.validarSesion"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>




<%
    

  
    
         session = request.getSession();
  
       
      
       
       Usuario usu = (Usuario)session.getAttribute("usuario");
        
        
        if(usu==null)
        {

             request.getRequestDispatcher("Error.jsp").forward(request, response);

        } 
        
%>
