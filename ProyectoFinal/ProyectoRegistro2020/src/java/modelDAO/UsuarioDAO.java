package modelDAO;

import configuration.Conexion;
import controller.Controlador;
import interfaces.ValidarUsuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Usuario;

public class UsuarioDAO implements ValidarUsuario{
    Conexion conect = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public boolean validar(Usuario us) {
        String sql = "select * from usuario where binary usuario = '"+us.getUsuario()+"' and password0 = '"+us.getPassword0()+"' and rol_codigoRol = "+us.getRol_codigoRol();
        try{
            con = conect.getConection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            if(rs.next()){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
    
}
