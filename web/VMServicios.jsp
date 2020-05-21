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
                <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
              <li class="breadcrumb-item active">Tabla de Servicios</li>
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
              <h3 class="card-title">Tabla de Datos de Servicios registrados</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Código</th>
                  <th>Nombre del Servicio</th>
                  <th>Costo</th>
                </tr>
                </thead>
                <tbody>
                
                    
                    
                    
                         
                     <%
                      ControladoraPersistencia control2 = new ControladoraPersistencia();
                      
                       List<Servicio> listaServicios = control2.getServicios();
                      
                      for (Servicio serv : listaServicios) {
                        
                          int codigo = serv.getCodigo();
                          String servic = serv.getNomservicio();
                          Double costo = serv.getCosto();
                          %>


                    <tr>
                  <td><%=codigo%></td>
                  <td><%=servic%></td>
                  <td><%=costo%></td>
                </tr>
               
          
                 <%}%>   
                
                </tbody>
                
                
                <tfoot>
                <tr>
                    <th>Código</th>
                  <th>Nombre del Servicio</th>
                  <th>Costo</th>
        
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




<!-- probando añadir edicion -->
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
                <h3 class="card-title">Editar un Servicio</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="editarServicio" method="POST"> 
                   <div class="card-body">
                    
                          <div class="form-group">
                    <label for="codigo">Ingrese ID/Código del servicio a editar</label>
                    <input type="text" class="form-control" name="codigo" id="codigo" placeholder="00">
                  </div>
                    
                  <div class="form-group">
                    <label for="servicio">Servicio</label>
                    <input type="text" class="form-control" name="nombre" id="servicio" placeholder="Ingrese Servicio">
                  </div>
                    
                    <div class="form-group">
                    <label for="costo">Costo</label>
                    <input type="text" class="form-control" name="costo" id="costo" placeholder="$0000,00">
                  </div>

                               

                    </div>
                  </div>
              
                

                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Editar servicio</button>
                </div>
            </div>
                 
              </form>
                 
               

        </section> 
   </div>
        
</body>

        
















<jsp:include page="footer.jsp" flush="true"/>