
           <jsp:include page="header.jsp" flush="true"/> 
      
 
 <!-- Horizontal Form -->
 <div style=" align-content: center; text-align: center;   margin:100px">
 <section style="justify-content: center">
            <div class="card card-info" style="width: 50%;  margin-top:100px; margin-left:300 ">
              <div class="card-header">
                <h3 class="card-title">Ingrese en el sistema de turismo</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <%--// ControladoraPersistencia control = new ControladoraPersistencia();--%>
              <form action="validarSesion" method ="POST" class="form-horizontal" style="align-items: center; align-content: center">
          
                <div class="card-body"; style="align-items: center">
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">User</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="txtuser" placeholder="Usuario">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-10">
                      <input type="password" class="form-control" name="txtpass" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="offset-sm-2 col-sm-10">
                      <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck2">
                        <label class="form-check-label" for="exampleCheck2">Recuérdame</label>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer" style="align-items: center">
                  <button style="align-items: center" type="submit" class="btn btn-info">Ingresar</button>
                </div>
              </form>
            </div>
              
 </section>
 </div>
              
           