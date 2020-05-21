/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.Cliente;
import Logica.Paquete;
import Logica.Reserva;
import Logica.Servicio;
import Logica.Usuario;
import Logica.Venta;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author topli_000
 */
public class ControladoraPersistencia {
    ClienteJpaController jpaCliente = new ClienteJpaController();
    PaqueteJpaController jpaPaquete = new PaqueteJpaController();
    ReservaJpaController jpaReserva = new ReservaJpaController();
    ServicioJpaController jpaServicio = new ServicioJpaController();
    VentaJpaController jpaVenta = new VentaJpaController();
     UsuarioJpaController jpaUsuario = new UsuarioJpaController();

     
public void crearUsuario(Usuario usuario)
{
        try {
            jpaUsuario.create(usuario);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}

public void borrarUsuario(String id)
{
        try {
            jpaUsuario.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}
public void crearCliente(Cliente cliente)
{
        try {
            jpaCliente.create(cliente);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}
    
public void borrarCliente(int codigo)
{
        try {
            jpaCliente.destroy(codigo);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}
public void crearPaquete(Paquete paquete)
{
        try {
            jpaPaquete.create(paquete);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}

public void borrarPaquete(int codigo)
{
        try {
            jpaPaquete.destroy(codigo);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}

public void crearReserva(Reserva reserva)
{
        try {
            jpaReserva.create(reserva);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}

public void borrarReserva(int codigo)
{
        try {
            jpaReserva.destroy(codigo);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}

public void crearServicio(Servicio servicio)
{
        try {
            jpaServicio.create(servicio);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}

public void borrarServicio(int codigo)
{
        try {
            jpaServicio.destroy(codigo);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}

public void crearVenta(Venta venta)
{
        try {
            jpaVenta.create(venta);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}

public void borrarVenta(int codigo)
{
        try {
            jpaVenta.destroy(codigo);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
}

  public List<Paquete> getPaquetes() {
      
     return (jpaPaquete.findPaqueteEntities());                   
 }
    
   public List<Reserva> getReservas() {

     return (jpaReserva.findReservaEntities());
 }
  public List<Servicio> getServicios() {

     return (jpaServicio.findServicioEntities());                
 }
    
   public List<Venta> getVentas() {

     return (jpaVenta.findVentaEntities());                   
 }

   public List<Usuario> getUsuarios()
   {
       return (jpaUsuario.findUsuarioEntities());
       
   }
          public List<Cliente> getClientes()
   {
       return (jpaCliente.findClienteEntities());
       
   }

    public void editarReserva(Reserva reserva) {
        try {
            jpaReserva.edit(reserva);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
   
    
    
    public void editarVenta(Venta venta) {
        try {
            jpaVenta.edit(venta);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public void editarCliente(Cliente cliente) {
        try {
            jpaCliente.edit(cliente);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public void editarPaquete(Paquete paquete) {
        try {
            jpaPaquete.edit(paquete);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public void editarServicio(Servicio servicio) {
        try {
            jpaServicio.edit(servicio);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
 
}
        
   
 



