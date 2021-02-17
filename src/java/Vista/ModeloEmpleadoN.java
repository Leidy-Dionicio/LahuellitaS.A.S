
package Vista;

import Conexion.Nomina;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ModeloEmpleadoN {
    
    Nomina con=new Nomina();
    Connection cnn=con.conexiondb();
    PreparedStatement ps=null;
    ResultSet rs=null;
    
    public boolean insertarempleado(nomina1 i1){
        boolean dat=false;
        int x;
        try {
            ps=cnn.prepareStatement("INSERT INTO empleados values(?,?,?,?,?)");
            ps.setString(1, i1.getCedula());
            ps.setString(2, i1.getNombres());
            ps.setString(3, i1.getApellidos());
            ps.setString(4, i1.getTelefono());
            ps.setString(5, i1.getGenero());
            x=ps.executeUpdate();
            
            
            if(x>0){
                dat=true;
                
            }
            
        } catch (Exception e) {
        }
        return dat;
        
    }
    
    public boolean modificarempleado(nomina1 i1){
        int x;
        boolean dat=false;
        try {
            ps=cnn.prepareStatement("UPDATE empleados SET Nombres='"+i1.getNombres()+"', Apellidos='"+i1.getApellidos()+"',"
                + "Telefono='"+i1.getTelefono()+"',Genero='"+i1.getGenero()+"'"
                        + " WHERE Cedula='"+i1.getCedula()+"';");
                    
            x= ps.executeUpdate();
            
            if(x>0){
                dat=true;
            }
            
                    
        } catch (SQLException ex) {
            Logger.getLogger(ModeloEmpleadoN.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return dat;
    }
    
}
