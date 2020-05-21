<jsp:include page="validar.jsp" flush="true"/>
<%@page import="Logica.Paquete"%>   
<%@page import="Logica.Servicio"%>
   <%@page import="Logica.Cliente"%>
<%@page import="java.util.List"%>
   <%@page import="Logica.Venta"%>
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
                <h3 class="card-title">Ventas</h3>
              </div>
            
            
            
            
            
            <form role="form" action="agregarVenta" method="POST"> 
                <div class="card-body">
              <div class="form-group">
                 <label>Alta de Ventas</label>
                 
                 
                
            </div>
                    
 
                   
                    <label>Fecha de Venta</label> 
                   <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" id="fecha" name="fecha" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" im-insert="false">
                  </div>
                    <br>
                    
                    
                        
            <div class="form-group">
                  <label>Paquetes disponibles:</label>
                  <select name="sk2" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                      <%
                      ControladoraPersistencia contrl = new ControladoraPersistencia();
                      
                      List<Paquete> listaPaquetes = contrl.getPaquetes();
                      
                     for(Paquete list : listaPaquetes) {
                          int i = 0;
                          i++;
                          System.out.println(i);
                          String nombre = list.getNomPaquete();
                          %> <option id="sl2" name="sl2" value="<%=nombre%>"><%=nombre%> </option>   <%   } %>
                          
                    

                        </select> 
                </div>
                          
                   
                    
                     <div class="form-group">
                  <label>Seleccione el Cliente asignado a la reserva</label>
                  <select name="sk1" id="sk1" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                      <%
                      ControladoraPersistencia control = new ControladoraPersistencia();
                      
                      List<Cliente> listaClientes = control.getClientes();
                      
                      for (Cliente cli : listaClientes) {
                          int i = 0;
                          i++;
                          System.out.println(i);
                          String nomapellido = cli.getNombreapellido();
                          %> <option id="sl1" name="sl1" value="<%=nomapellido%>"><%=nomapellido%> </option>
                          
                       <%   } %>

                        </select> 
                </div>
                    
                    

   
                 
                     
                
                       
                       
                                <div class="form-group">
                 <label>Puede añadir servicios al paquete elegido, o seleccionarlos individualmente</label>
                 
                 
                 <div class="form-check">
                     
                     
                     <%
                      ControladoraPersistencia control2 = new ControladoraPersistencia();
                      
                       List<Servicio> listaServicios = control2.getServicios();
                      
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
                  <label>Seleccione el medio de pago</label>
                  <select name="mpago" id="mpago" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                  <option id="Efectivo" name="Efectivo" value="Efectivo">Efectivo (10% OFF)</option>
                           <option id="Debito" name="Debito" value="Debito">Tarjeta de Débito (Precio normal)</option>
                     <option id="Credito" name="Credito" value="Credito">Tarjeta de Crédito (Recargo 6%)</option>
                        </select> 
                </div>
                 
                 
                 
                     
                  
                 
               
                

                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Agregar Reserva</button>
                </div>
            </div>
                 
              </form>
        </div>
    
</div>    
        </div>
      </div>
        </section> 
   </div

        
</body>








<jsp:include page="footer.jsp" flush="true"/>