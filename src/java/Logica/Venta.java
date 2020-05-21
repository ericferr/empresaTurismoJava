/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.ControladoraPersistencia;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author topli_000
 */
@Entity
public class Venta implements Serializable{
    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int codigo;
    @Temporal (TemporalType.DATE)
    private Date fecha;
    @OneToOne
    private Cliente unCliente;
    @Basic
    private String medioPago;
    @OneToOne
    private Paquete unPaquete = null;
    @OneToMany
    private List<Servicio> listaServicios = new ArrayList<>();
    private Double valor;

    public Double getValor() {
        return valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public Venta() {
    }

    public Venta(int codigo, Date fecha, Cliente unCliente, String medioPago, Paquete unPaquete, ArrayList<Servicio> listaServicios) {
        this.codigo = codigo;
        this.fecha = fecha;
        this.unCliente = unCliente;
        this.medioPago = medioPago;
        this.unPaquete = unPaquete;
        this.listaServicios = listaServicios;
    }

    public Venta(Date fecha, Cliente unCliente, String medioPago) {
        this.fecha = fecha;
        this.unCliente = unCliente;
        this.medioPago = medioPago;
 
    }
    

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Cliente getUnCliente() {
        return unCliente;
    }

    public void setUnCliente(Cliente unCliente) {
        this.unCliente = unCliente;
    }

    public String getMedioPago() {
        return medioPago;
    }

    public void setMedioPago(String medioPago) {
        this.medioPago = medioPago;
    }




    public Paquete getUnPaquete() {
        return unPaquete;
    }

    public void setUnPaquete(Paquete unPaquete) {
        this.unPaquete = unPaquete;
    }

    public List<Servicio> getListaServicios() {
        return listaServicios;
    }

    public void setListaServicios(List<Servicio> listaServicios) {
        this.listaServicios = listaServicios;
    }
    
      public List<Venta> getListaVentas() {
ControladoraPersistencia control = new ControladoraPersistencia ();
   return (control.getVentas());

}

}
