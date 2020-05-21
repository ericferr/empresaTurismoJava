/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.ControladoraPersistencia;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author topli_000
 */
@Entity
public class Cliente implements Serializable{
    @Id
    private int dni;
    @Basic
    private String nombreapellido;
    private String celular;
    @Temporal (TemporalType.DATE)
    private Date fechanac;

    public Cliente() {
    }

    public Cliente(int dni, String nombreapellido, String celular, Date fechanac) {
        this.dni = dni;
        this.nombreapellido = nombreapellido;
        this.celular = celular;
        this.fechanac = fechanac;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public String getNombreapellido() {
        return nombreapellido;
    }

    public void setNombreapellido(String nombreapellido) {
        this.nombreapellido = nombreapellido;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public Date getFechanac() {
        return fechanac;
    }

    public void setFechanac(Date fechanac) {
        this.fechanac = fechanac;
    }
    
      public List<Cliente> getListaClientes() {
ControladoraPersistencia control = new ControladoraPersistencia ();
   return (control.getClientes());

}


}
