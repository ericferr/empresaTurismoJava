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
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author topli_000
 */
@Entity
public class Reserva implements Serializable{
    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int codigo;
    @Temporal (TemporalType.DATE)
    private Date fecha;
    @OneToOne
    private Cliente unCliente;
    @Basic
    private Double senia;
    @Temporal (TemporalType.DATE)
    private Date fechaVenc;
        @OneToMany
    private List<Servicio> listaServicios = new ArrayList<>();
    @OneToOne
    private Paquete unPaquete = null;
    @Basic
    private String estado;
    private Double valor;

    public Double getValor() {
        return valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public Reserva() {
    }

    public Reserva(int codigo, Date fecha, Cliente unCliente, Double senia, Date fechaVenc, String estado) {
        this.codigo = codigo;
        this.fecha = fecha;
        this.unCliente = unCliente;
        this.senia = senia;
        this.fechaVenc = fechaVenc;
        this.estado = estado;
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

    public Double getSenia() {
        return senia;
    }

    public void setSenia(Double senia) {
        this.senia = senia;
    }

    public Date getFechaVenc() {
        return fechaVenc;
    }

    public void setFechaVenc(Date fechaVenc) {
        this.fechaVenc = fechaVenc;
    }

    public List<Servicio> getListaServicios() {
        return listaServicios;
    }

    public void setListaServicios(List<Servicio> listaServicios) {
        this.listaServicios = listaServicios;
    }

    public Paquete getUnPaquete() {
        return unPaquete;
    }

    public void setUnPaquete(Paquete unPaquete) {
        this.unPaquete = unPaquete;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
      public List<Reserva> getListaReservas() {
ControladoraPersistencia control = new ControladoraPersistencia ();
   return (control.getReservas());

}

}
