package model;

public class Usuario {
    private String usuario;
    private String password0;
    private int rol_codigoRol;

    public Usuario() {
    }

    public Usuario(String usuario, String password0, int rol_codigoRol) {
        this.usuario = usuario;
        this.password0 = password0;
        this.rol_codigoRol = rol_codigoRol;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword0() {
        return password0;
    }

    public void setPassword0(String password0) {
        this.password0 = password0;
    }

    public int getRol_codigoRol() {
        return rol_codigoRol;
    }

    public void setRol_codigoRol(int rol_codigoRol) {
        this.rol_codigoRol = rol_codigoRol;
    }
    
    
    
}
