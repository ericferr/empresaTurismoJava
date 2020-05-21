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
                <h3 class="card-title">Agregar un Cliente</h3>
              </div>
            
            
            
            
            
            <form role="form" action="editarCliente" method="POST"> 
                <div class="card-body">
              <div class="form-group">
                 <label>Ingreso de Datos</label>
                 
                 
                
            </div>
                    
                    <div class="form-group">
                    <label for="dni">Ingrese DNI del cliente a editar</label>
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
                  <button type="submit" class="btn btn-primary">Editar Cliente</button>
                </div>
            </div>
                 
              </form>
        </div>
    
</div>    

        </section> 
       </body>

        
















<jsp:include page="footer.jsp" flush="true"/>