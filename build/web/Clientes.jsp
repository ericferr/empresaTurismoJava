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
                <h3 class="card-title">Agregar un Cliente</h3>
              </div>
            
            
            
            
            
            <form role="form" action="agregarCliente" method="POST"> 
                <div class="card-body">
              <div class="form-group">
                 <label>Ingreso de Datos</label>
                 
                 
                
            </div>
                    
                    <div class="form-group">
                    <label for="dni">DNI</label>
                    <input type="text" class="form-control" name="dni" id="dni" placeholder="Ingrese DNI del Cliente sin puntos ni comas">
                  </div>
                 
                 
                 <div class="form-group">
                    <label for="nom">Nombre y Apellido</label>
                    <input type="text" class="form-control" name="nom" id="nom" placeholder="Joaquin Perez">
                  </div>
                 
                   <!-- <div class="form-group"> -->
                            <label>Número de Celular</label>
                      <div class="input-group">  
                    <div class="input-group-prepend">
                       
                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
                    </div>
                    <!--   -->
                     <input type="text" class="form-control" name="tel" id="tel" placeholder="(011)15000000">
                 </div>  
                            
                            <BR>
                            
                   <label>Fecha de Nacimiento</label> 
                   <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" id="fecha" name="fecha" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" im-insert="false">
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
       

        
</body>








<jsp:include page="footer.jsp" flush="true"/>