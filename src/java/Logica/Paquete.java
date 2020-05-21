/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.ControladoraPersistencia;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

//import javax.persistence.ManyToOne;


/**
 *
 * @author topli_000
 */
@Entity
public class Paquete implements Serializable{
    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int codigo;
        @OneToMany
    private List<Servicio> listaServicios = new ArrayList<>();
    @Basic
    private int rangodias;
    private String nomPaquete;
    private Double valor;

    public Double getValor() {
        return valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public Paquete() {
    }

    public Paquete(int rangodias, String nomPaquete) {
        this.rangodias = rangodias;
        this.nomPaquete = nomPaquete;
    }

    public String getNomPaquete() {
        return nomPaquete;
    }

    public void setNomPaquete(String nomPaquete) {
        this.nomPaquete = nomPaquete;
    }
    

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public List<Servicio> getListaServicios() {
        return listaServicios;
    }

    public void setListaServicios(List<Servicio> listaServicios) {
        this.listaServicios = listaServicios;
    }

    public int getRangodias() {
        return rangodias;
    }

    public void setRangodias(int rangodias) {
        this.rangodias = rangodias;
    }
    
      public List<Paquete> getListaPaquetes() {
ControladoraPersistencia control = new ControladoraPersistencia ();
   return (control.getPaquetes());

}

}
