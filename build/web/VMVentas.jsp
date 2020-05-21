<jsp:include page="validar.jsp" flush="true"/>
<%@page import="Persistencia.ControladoraPersistencia"%>
<jsp:include page="headerforms.jsp" flush="true"/> 
  <%@page import="Logica.Paquete"%>   
<%@page import="Logica.Servicio"%>
   <%@page import="Logica.Cliente"%>
<%@page import="java.util.List"%>
  <%@page import="Logica.Reserva"%>
    <%@page import="Logica.Venta"%>
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
              <li class="breadcrumb-item active">Tabla de Ventas</li>
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
              <h3 class="card-title">Tabla de Datos de Ventas registradas</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Código</th>
                     <th>Fecha</th>
                  <th>Cliente</th>
                  <th>Medio de Pago</th>
                   <th>Paquete</th>   
                   <th>Valor de la Venta</th>
                  <th>Servicio 1</th>
                  <th>Servicio 2</th>
                  <th>Servicio 3</th>
                  <th>Servicio 4</th>
               
                </tr>
                </thead>
                <tbody>
                
                    
                    
                    
                         
                       <%
                      ControladoraPersistencia contrl = new ControladoraPersistencia();
                      
                      List<Venta> listaVentas = contrl.getVentas();
                      
                     for(Venta vent : listaVentas) {
                          int codigo = vent.getCodigo();
                          
                         
                               Date fecha = vent.getFecha();
                          String fech = ManejadorFechas.DateAString(fecha);
                          Cliente cli = vent.getUnCliente();
                          String nomb = cli.getNombreapellido();
                          String mediopago = vent.getMedioPago();
                          Paquete unpack = vent.getUnPaquete();
                          String nompack = unpack.getNomPaquete();
                          Double valorvent = vent.getValor();
                          %>  
                <tr>
                  <td><%=codigo%></td>
                  <td><%=fech%></td>
                  <td><%=nomb%></td>
                  <td><%=mediopago%></td>
                  <td><%=nompack%></td>
                      <td><%=valorvent%></td>
                   <%
                      List<Servicio> unaLista = vent.getListaServicios();
                      
                       int aux2 = 4;
                        int aux3;
                        String nom;
                        aux3 = unaLista.size();
                        int aux4 = aux2 - aux3;
                      for(Servicio serv : unaLista)
                      {
                         nom = serv.getNomservicio();
                          %>
                          <td><%=nom%></td>
                          
                      <%}%>
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
                     <th>Fecha</th>
                  <th>Cliente</th>
                  <th>Medio de Pago</th>
                   <th>Paquete</th>
                      <th>Valor de la Venta</th>
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
                <h3 class="card-title">Modificación de Ventas</h3>
              </div>
            
            
            
            
            
            <form role="form" action="editarVenta" method="POST"> 
                <div class="card-body">
              <div class="form-group">
                 <label>Edición de Ventas</label>
                 
                 
                
            </div>
                    
 
                        <div class="form-group">
                    <label for="codigo">Ingrese ID/Código de venta a editar</label>
                    <input type="text" class="form-control" name="codigo" id="codigo" placeholder="00">
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
                  <button type="submit" class="btn btn-primary">Modificar Venta</button>
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