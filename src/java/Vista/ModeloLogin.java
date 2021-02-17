
package Vista;

import Conexion.Nomina;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;


public class ModeloLogin {
    
    Nomina con=new Nomina();
    Connection cnn=con.conexiondb();
    PreparedStatement ps=null;
    ResultSet rs=null;
    
    public ArrayList<Login> loginusu(Login log){
        ArrayList<Login> datos=new ArrayList();
        //JOptionPane.showMessageDialog(null, log.getNombre()+"  "+log.getNombre());
        
        try {
            ps=cnn.prepareStatement("SELECT empleados.Nombres, empleados.Cedula, realiza.Codigo FROM empleados INNER JOIN realiza USING(Cedula) WHERE Nombres= '"+log.getNombre()+"' AND Cedula= '"+log.getCedula()+"'");
            
            rs=ps.executeQuery();
            JOptionPane.showMessageDialog(null, "pasó la consulta");
            while(rs.next()){
                //JOptionPane.showMessageDialog(null, "en el while");
                Login logu=new Login(rs.getString(1), rs.getString(2), rs.getString(3));
                datos.add(logu);
            }
            
            /*int t=datos.size();
            JOptionPane.showMessageDialog(null, t);*/
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "ERROR EN EL LOGIN " +e);
            
        }
        return datos;
    }
    
}
