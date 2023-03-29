/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQL;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author USUARIO
 */
public class App {
    public static void main (String []args){
        String base = null;
        
        try{
        Statement sql = conexion.getConexion().createStatement();
        
        String consulta = "SELECT name FROM master.dbo.sysdatabases";
        ResultSet resultado = sql.executeQuery(consulta);
        
        while(resultado.next()){
            base += resultado.getString(1)+"/n";
        }
        JOptionPane.showMessageDialog(null, base);
        
        }catch(SQLException ex){
            JOptionPane.showMessageDialog(null, ex.toString());
        }
    }
             
    
}
