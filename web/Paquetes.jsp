<jsp:include page="validar.jsp" flush="true"/>
<%@page import="Logica.Servicio"%>
<%@page import="java.util.List"%>
<%@page import="Persistencia.ControladoraPersistencia"%>
<jsp:include page="headerforms.jsp" flush="true"/> 




  
<body>
       
       <div class="content-wrapper">
        <!-- Main content -->
       <section class="content" > 
      <div class="container-fluid" >
        <div class="row">
          <!-- left column -->
          <div class="col-md-6"> 

        <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Agregar un Paquete</h3>
              </div>
            
            
            
            
            
            <form role="form" action="agregarPaquete" method="POST"> 
                <div class="card-body">
              <div class="form-group">
                 <label>Seleccione los Servicios a incluir en el paquete</label>
                 
                 
                 <div class="form-check">
                     
                     
                     <%
                      ControladoraPersistencia control = new ControladoraPersistencia();
                      
                       List<Servicio> listaServicios = control.getServicios();
                      
                      for (Servicio serv : listaServicios) {
                          int i = 0;
                          i++;
                          String servic = serv.getNomservicio();
                          Double costo = serv.getCosto();
                          


                     %>
                     <input class="form-check-input" type="checkbox" name="ck1" value="<%=servic%>">
                     <label class="form-check-label"><%=servic%></label>   <label> Costo: $<%=costo%> </label>
                    <BR>
                 <%}%>   
                 </div>
            </div>
                    
                    <div class="form-group">
                    <label for="dias">Rango de días</label>
                    <input type="text" class="form-control" name="dias" id="dias" placeholder="0">
                  </div>
                 
                 
                 <div class="form-group">
                    <label for="nom">Nombre del Paquete</label>
                    <input type="text" class="form-control" name="nom" id="nom" placeholder="Ingrese nombre del Paquete">
                  </div>
                 
                 
                

                               

    </div>
                  </div>
            
            
            
            
              <!-- /.card-header -->
              <!-- form start -->
              
              <%--
              <form role="form" action="agregarPaquete" method="POST"> 
                   <div class="card-body">
                    
                    
                <div class="form-group">
                  <label>Seleccione servicios</label>
                  <select class="select2" name="servics" multiple="multiple" data-placeholder="Seleccione" style="width: 100%;">
                      <%
                      ControladoraPersistencia control = new ControladoraPersistencia();
                      
                       List<Servicio> listaServicios = control.getServicios();
                      
                      for (Servicio serv : listaServicios) {
                          int i = 0;
                          i++;
                          %> <option value="<%=i%>" <% String servic = serv.getNomservicio();%> ><%=servic%> </option>
                          
                       <%   } %>
                      
                      
                      %>
                   
               
                  </select>
                </div>
              --%>

                               

                    </div>
                  </div>
              
                

                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Agregar</button>
                </div>
            </div>
                 
              </form>
        </div>
    
</div>    

        </section> 
   </div

        
</body>



 
<jsp:include page="footer.jsp" flush="true"/>