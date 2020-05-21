
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Empresa de Turismo | Gestion</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    </head>
<div class="wrapper">
<body class="hold-transition sidebar-mini layout-fixed">
    
    
  
    
        
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="Bienvenido.jsp" class="nav-link">Inicio</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="VBVentas.jsp" class="nav-link">Ventas</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="VBReservas.jsp" class="nav-link">Reservas</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="VBPaquetes.jsp" class="nav-link">Paquetes</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="VBServicios.jsp" class="nav-link">Servicios</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="VBClientes.jsp" class="nav-link">Clientes</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="Soporte.jsp" class="nav-link">Diagrama de Clases</a>
      </li>
       <li class="nav-item d-none d-sm-inline-block">
        <a href="cerrarSesion" class="nav-link">Cerrar Sesion</a>
      </li>
    </ul>

  
    
    
    
    
    
    
    <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="dist/img/turismo.png" alt="Turismo Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Empresa Turismo</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Encargado de Ventas</a>
        </div>
      </div>
      
      
      
      
      
      
    
      
      
      
      
      
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
         
             
              
       <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Agregar
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
           
            <ul class="nav nav-treeview">
                
              <li class="nav-item">
                <a href="Ventas.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Venta</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="Reservas.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Reserva</p>
                </a>
              </li>
              
              
              <li class="nav-item">
                <a href="Paquetes.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Paquete</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="Servicios.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Servicios</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="Clientes.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Clientes</p>
                </a>
              </li>
              
            </ul>
          </li>
    
        </ul>
          
          
          
          <!-- probando -->
          
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
         
             
              
       <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
                <i class="nav-icon fas fa-edit"></i>
              <p>
                Modificar
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
           
            <ul class="nav nav-treeview">
                
              <li class="nav-item">
                <a href="Ventas.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Venta</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="Reservas.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Reserva</p>
                </a>
              </li>
              
              
              <li class="nav-item">
                <a href="Paquetes.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Paquete</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="Servicios.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Servicios</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="Clientes.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Clientes</p>
                </a>
              </li>
              
            </ul>
          </li>
    

          
          
          
          
          
          
          
          
          
          
          
          
          
      
      </nav>
    </div>
  </aside>
</div>
</head>

