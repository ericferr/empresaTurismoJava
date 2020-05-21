/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.ControladoraPersistencia;
import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author topli_000
 */
@Entity
public class Servicio implements Serializable{
    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int codigo;
    @Basic
    private String nomservicio;
    private Double costo;

    public Servicio() {
    }

    public Servicio(int codigo, String nomservicio, Double costo) {
        this.codigo = codigo;
        this.nomservicio = nomservicio;
        this.costo = costo;
    }

    public Servicio(String nombre, Double costo) {
        this.nomservicio=nombre;
        this.costo=costo;
    }

    

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNomservicio() {
        return nomservicio;
    }

    public void setNomservicio(String nomservicio) {
        this.nomservicio = nomservicio;
    }

    public Double getCosto() {
        return costo;
    }

    public void setCosto(Double costo) {
        this.costo = costo;
    }
    
      public List<Servicio> getListaServicios() {
ControladoraPersistencia control = new ControladoraPersistencia ();
   return (control.getServicios());

}

    
}
