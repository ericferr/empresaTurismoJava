<jsp:include page="validar.jsp" flush="true"/>
<%@page import="Persistencia.ControladoraPersistencia"%>
<jsp:include page="headerforms.jsp" flush="true"/> 
  <%@page import="Logica.Paquete"%>   
<%@page import="Logica.Servicio"%>
<%@page import="Logica.Reserva"%>
   <%@page import="Logica.Cliente"%>
<%@page import="java.util.List"%>

<%@page import="java.util.Date"%>
<%@page import="Logica.ManejadorFechas"%>













<body class="hold-transition sidebar-mini">
<div class="wrapper">


  <!-- Main Sidebar Container -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>DataTables</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="Bienvenido.jsp">Home</a></li>
              <li class="breadcrumb-item active">Tabla de Paquetes</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          

          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Tabla de Datos de Paquetes registrados</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Código</th>
                  <th>Nombre del Servicio</th>
                  <th>Rango de dias</th>
                     <th>Valor</th>
                  
                  <th>Servicio 1</th>
                  <th>Servicio 2</th>
                  <th>Servicio 3</th>
                  <th>Servicio 4</th>
                
               
                 
                </tr>
                </thead>
                <tbody>
                
                    
                    
                    
                         
                       <%
                      ControladoraPersistencia contrl = new ControladoraPersistencia();
                      
                      List<Paquete> listaPaquetes = contrl.getPaquetes();
                      Double valorpack;
                      String nom;
                     for(Paquete list : listaPaquetes) {
                          int codigo = list.getCodigo();
                          
                          String nombre = list.getNomPaquete();
                          int rangodias = list.getRangodias();
                          List<Servicio> unaLista = list.getListaServicios();
                          valorpack = list.getValor();
                          %>  
                <tr>
                  <td><%=codigo%></td>
                  <td><%=nombre%></td>
                  <td><%=rangodias%></td>
                    <td><%=valorpack%></td>
                  <%    
                       int aux2 = 4;
                        int aux3;
                        
                        aux3 = unaLista.size();
                        int aux4 = aux2 - aux3;
                      for(Servicio serv : unaLista)
                      {
                          
                              
                         
                          nom = serv.getNomservicio();
                          Double monserv = serv.getCosto();
                          Double valortotal =+ monserv;
                     
                        
                              
                          %>
                          <td><%=nom%></td>
                          
                      <%}   %>
                  
                        <%   
                 if(aux4!=0)
                 {
                     
                 for(int i=0;i<aux4;i++)
                          {
                              nom= "null";
                               %><td><%=nom%></td><%
                                   
                          }
                    }
                %>
                </tr>

                
               
          <%   } %>
                
                </tbody>
                
                
                <tfoot>
                <tr>
                    <th>Código</th>
                  <th>Nombre del Servicio</th>
                  <th>Rango de dias</th>
                          <th>Valor</th>
                    <th>Servicio 1</th>
                  <th>Servicio 2</th>
                  <th>Servicio 3</th>
                  <th>Servicio 4</th>
                 
              
        
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>







<!-- probando añadir editar -->

  
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
                <h3 class="card-title">Editar un Paquete</h3>
              </div>
            
              
                
            
            
            
            <form role="form" action="editarPaquete" method="POST"> 
                <div class="card-body">
                    
                    
                    
                      
                   <div class="form-group">
                    <label for="codigo">Ingrese Codigo/ID del paquete a editar</label>
                    <input type="text" class="form-control" name="codigo" id="codigo" placeholder="00">
                  </div>
                    
                    
                    
              <div class="form-group">
                 <label>Seleccione los Servicios a incluir en el paquete</label>
                 <div class="form-check">
                     
                     
                     <%
                     
                      
                       List<Servicio> listaServicios = contrl.getServicios();
                      
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
                  <button type="submit" class="btn btn-primary">Editar Paquete</button>
                </div>
            </div>
                 
              </form>
        </div>
    
</div>    

        </section> 
   </div

        
</body>












<jsp:include page="footer.jsp" flush="true"/>