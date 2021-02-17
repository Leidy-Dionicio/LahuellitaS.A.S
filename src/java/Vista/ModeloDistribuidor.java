
package Vista;


import Conexion.Inventario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


public class ModeloDistribuidor {
    
    Inventario con=new Inventario();
    Connection cnn=con.conexiona();
    PreparedStatement ps=null;
    ResultSet rs=null;
    
    public boolean insertardistribuidor(inventario1 in1){
        boolean dat=false;
        int x;
        //JOptionPane.showMessageDialog(null, "Esta entrando al modelo");
        try {
            ps=cnn.prepareStatement("INSERT INTO distribuidor values(?,?,?,?)");
            ps.setInt(1, in1.getIddistribuidor());
            ps.setString(2, in1.getNombre());
            ps.setString(3, in1.getContacto());
            ps.setString(4, in1.getDireccion());
            x=ps.executeUpdate();
            
            //JOptionPane.showMessageDialog(null, x);
            
            if(x>0){
                dat=true;
                
            }
            
        } catch (Exception e) {
        }
        return dat;
        
    }
    
    public boolean modificardistribuidor(inventario1 in1){
        int x;
        boolean dat=false;
        JOptionPane.showMessageDialog(null, "Esta entrando al modelo");
        try {
            ps=cnn.prepareStatement("UPDATE distribuidor SET nombre='"+in1.getNombre()+"', contacto='"+in1.getContacto()+"',"
                + "direccion='"+in1.getDireccion()+" WHERE iddistribuidor='"+in1.getIddistribuidor()+"';");
                    
            x= ps.executeUpdate();
            
            JOptionPane.showMessageDialog(null, x);
            
            if(x>0){
                dat=true;
            }
            
                    
        } catch (SQLException ex) {
            Logger.getLogger(ModeloEmpleadoN.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return dat;
    }
    
}
