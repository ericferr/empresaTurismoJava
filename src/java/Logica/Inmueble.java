package Logica;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Inmueble implements Serializable {
    @Id
    private int codigo;
    @Basic
    private String direccion;
    private String localidad;
    private String provincia;
    private String tipoServ;
    private String tipoInmu;
    private Double valor;
    @OneToOne
    private Cliente unCliente;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getTipoServ() {
        return tipoServ;
    }

    public void setTipoServ(String tipoServ) {
        this.tipoServ = tipoServ;
    }

    public String getTipoInmu() {
        return tipoInmu;
    }

    public void setTipoInmu(String tipoInmu) {
        this.tipoInmu = tipoInmu;
    }

    public Double getValor() {
        return valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public Cliente getUnCliente() {
        return unCliente;
    }

    public void setUnCliente(Cliente unCliente) {
        this.unCliente = unCliente;
    }

    public Inmueble(int codigo, String direccion, String localidad, String provincia, String tipoServ, String tipoInmu, Double valor, Cliente unCliente) {
        this.codigo = codigo;
        this.direccion = direccion;
        this.localidad = localidad;
        this.provincia = provincia;
        this.tipoServ = tipoServ;
        this.tipoInmu = tipoInmu;
        this.valor = valor;
        this.unCliente = unCliente;
    }

    public Inmueble() {
    }
    
}
