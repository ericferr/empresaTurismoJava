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
                  <th>C�digo</th>
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
                  <th>C�digo</th>
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


<!-- probando a�adir eliminar -->

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
                <h3 class="card-title">Eliminaci�n de ventas</h3>
              </div>
            
       
            <form role="form" action="eliminarVenta" method="POST"> 
                <div class="card-body">
              <div class="form-group">
                 <label>Eliminaci�n de Ventas</label>
         
            </div>
         
                    <div class="form-group">
                    <label for="id">ID de venta a eliminar</label>
                    <input type="text" class="form-control" name="id" id="id">
                  </div>
                    
                    
                 
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Eliminar Venta</button>
                </div>
            </div>
                 
              </form>
        </div>
    
</div>    
        </div>
      </div>
        </section> 
       </div>

        














<jsp:include page="footer.jsp" flush="true"/>