
package configuration;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    
    Connection conexion;

    public Conexion() {
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBRegistroProyecto?useSSL=false","root","root");
            
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("No se pudo establecer la conexión"+e);
        }
    }
       
    public Connection getConection(){
        return conexion;
    }
    
}
