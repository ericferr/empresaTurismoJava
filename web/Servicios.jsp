
<jsp:include page="validar.jsp" flush="true"/> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<jsp:include page="headerindex.jsp" flush="true"/> 

  
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
                <h3 class="card-title">Agregar un servicio</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="agregarServicio" method="POST"> 
                   <div class="card-body">
                    
                    
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
                  <button type="submit" class="btn btn-primary">Agregar</button>
                </div>
            </div>
                 
              </form>
                 
               

        </section> 
   </div>
        
</body>
 
<jsp:include page="footer.jsp" flush="true"/>
 <%-- // <jsp:include page="footer.jsp" flush="true"/> --%>
