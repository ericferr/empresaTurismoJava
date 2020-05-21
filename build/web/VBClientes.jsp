<jsp:include page="validar.jsp" flush="true"/>
<%@page import="Persistencia.ControladoraPersistencia"%>
<jsp:include page="headerforms.jsp" flush="true"/> 
  <%@page import="Logica.Paquete"%>   
<%@page import="Logica.Servicio"%>
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
              <li class="breadcrumb-item active">Tabla de Clientes</li>
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
              <h3 class="card-title">Tabla de Datos de Clientes registrados</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>DNI</th>
                  <th>Nombre y Apellido</th>
                  <th>Celular</th>
                  <th>Fecha de Nacimiento</th>
                </tr>
                </thead>
                <tbody>
                
                    
                    
                    
                      <%
                      ControladoraPersistencia control = new ControladoraPersistencia();
                      
                      List<Cliente> listaClientes = control.getClientes();
                      
                      for (Cliente cli : listaClientes) {
                          int i = 0;
                          i++;
                          System.out.println(i);
                          int dni = cli.getDni();
                          String nomapellido = cli.getNombreapellido();
                          String celular = cli.getCelular();
                          Date fecha = cli.getFechanac();
                          String fech = ManejadorFechas.DateAString(fecha);
                          %> 
                    <tr>
                  <td><%=dni%></td>
                  <td><%=nomapellido%></td>
                  <td><%=celular%></td>
                  <td><%=fech%></td>
                </tr>
               <%   } %>
             
                
                </tbody>
                
                
                <tfoot>
                <tr>
                    <th>DNI</th>
                  <th>Nombre y Apellido</th>
                  <th>Celular</th>
                  <th>Fecha de Nacimiento</th>
        
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






<!-- probando añadir eliminar -->

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
                <h3 class="card-title">Eliminación de Clientes</h3>
              </div>
            
       
            <form role="form" action="eliminarCliente" method="POST"> 
                <div class="card-body">
              <div class="form-group">
                 <label>Eliminación de Clientes</label>
         
            </div>
         
                    <div class="form-group">
                    <label for="id">DNI de cliente a eliminar</label>
                    <input type="text" class="form-control" name="id" id="id">
                  </div>
                    
                    
                 
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Eliminar Cliente</button>
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