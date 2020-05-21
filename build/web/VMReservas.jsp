<jsp:include page="validar.jsp" flush="true"/>
<%@page import="Persistencia.ControladoraPersistencia"%>
<jsp:include page="headerforms.jsp" flush="true"/> 
  <%@page import="Logica.Paquete"%>   
<%@page import="Logica.Servicio"%>
   <%@page import="Logica.Cliente"%>
<%@page import="java.util.List"%>
  <%@page import="Logica.Reserva"%>
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
              <li class="breadcrumb-item active">Tabla de Reservas</li>
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
              <h3 class="card-title">Tabla de Datos de Reservas registradas</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Código</th>
                     <th>Estado</th>
                  <th>Fecha de Reserva</th>
                  <th>Cliente solicitante</th>
                  <th>Seña</th>
                   <th>Fecha de Vencimiento</th>
                   <th>Paquete</th>
                     <th>Valor de la Reserva</th>
                   
                  <th>Servicio 1</th>
                  <th>Servicio 2</th>
                  <th>Servicio 3</th>
                  <th>Servicio 4</th>
              
                  
                </tr>
                </thead>
                <tbody>
                
                    
                    
                    
                         
                       <%
                      ControladoraPersistencia contrl = new ControladoraPersistencia();
                      
                      List<Reserva> listaReservas = contrl.getReservas();
                      
                     for(Reserva reser : listaReservas) {
                          int codigo = reser.getCodigo();
                          
                         
                               Date fecha = reser.getFecha();
                          String fech = ManejadorFechas.DateAString(fecha);
                          Cliente cli = reser.getUnCliente();
                          String nomb = cli.getNombreapellido();
                          Double sen = reser.getSenia();
                           Date fecha2 = reser.getFechaVenc();
                          String fechvenc = ManejadorFechas.DateAString(fecha2);
                          Paquete unpack = reser.getUnPaquete();
                          String nompack = unpack.getNomPaquete();
                          String estado = reser.getEstado();
                          Double valorreserva = reser.getValor();
                          %>  
                <tr>
                  <td><%=codigo%></td>
                  <td><%=estado%></td>
                  <td><%=fech%></td>
                  <td><%=nomb%></td>
                  <td><%=sen%></td>
                  <td><%=fechvenc%></td>
                  <td><%=nompack%></td>
                <td><%=valorreserva%></td>
                  <%
                     
                      List<Servicio> unaLista = reser.getListaServicios();
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
                     <th>Estado</th>
                  <th>Fecha de Reserva</th>
                  <th>Cliente solicitante</th>
                  <th>Seña</th>
                   <th>Fecha de Vencimiento</th>
                   <th>Paquete</th>
                       <th>Valor de la Reserva</th>
                   
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








<!-- probando añadir eliminar -->

<
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
                <h3 class="card-title">Edición de Reservas</h3>
              </div>
            
            
            
            
            
            <form role="form" action="editarReserva" method="POST"> 
                <div class="card-body">
              <div class="form-group">
                 <label>Edición de Reserva</label>
                 
                 
                
            </div>
                    
                    
                          <div class="form-group">
                    <label for="codigo">Ingrese ID o Código de la reserva a Editar</label>
                    <input type="text" class="form-control" name="codigo" id="codigo" placeholder="00">
                  </div>
                   
                    <label>Fecha de Inicio</label> 
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
                  <select name="sk1" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                      <%
                      
                      List<Cliente> listaClientes = contrl.getClientes();
                      
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
                    <label for="senia">Monto señado</label>
                    <input type="text" class="form-control" name="senia" id="senia" placeholder="$0000,00">
                  </div>

                         <label>Fecha de Vencimiento (La seña no será devuelta de no pagar el total antes de dicha fecha)</label> 
                   <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" id="fechaven" name="fechaven" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" im-insert="false">
                  </div>
                         
                         <br>
                 

                    
                 
                     
                
                       
                       
                                <div class="form-group">
                 <label>En caso de no seleccionar un paquete, puede elegir servicios individualmente</label>
                 
                 
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
                  <label>Estado</label>
                  <select name="sp1" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                     <option id="sc1" name="sc1" value="Confirmada">Confirmada</option>
                           <option id="sc2" name="sc2" value="Cancelada">Cancelada</option>
                             <option id="sc3" name="sc3" value="Pendiente">Pendiente</option>
                               <option id="sc4" name="sc4" value="Activa">Activa</option>
                        </select> 
                </div>
           
           
                    
                    
                    
                    
                    
                    
      
               
                

                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Editar Reserva</button>
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