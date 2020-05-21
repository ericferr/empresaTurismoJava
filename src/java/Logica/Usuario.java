package Logica;


import Persistencia.ControladoraPersistencia;
import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author topli_000
 */
@Entity
public class Usuario implements Serializable{
    @Id
    private String usuario;
    @Basic
    private String password;
    private String nombre;

    public Usuario() {
    }

    public Usuario(String usuario, String password, String nombre) {
        this.usuario = usuario;
        this.password = password;
        this.nombre = nombre;
    }

    public Usuario(String usuario, String password) {
        this.usuario = usuario;
        this.password = password;
    }
    
    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

 

    

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
  
  public List<Usuario> getListaUsuarios() {
ControladoraPersistencia control = new ControladoraPersistencia ();
   return (control.getUsuarios());

}

}
