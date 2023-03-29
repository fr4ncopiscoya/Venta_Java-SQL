/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author USUARIO
 */
public class Conexion {
    
    Connection con;
    
    public Connection getConexion(){
//    String conexionUrl="jdbc:sqlserver://localhost:1433;"
//            +"database=javasql;"
//            +"user=sa;"
//            + "password=1234;";
    
    try{
        
//        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String conexionUrl="jdbc:sqlserver://localhost:1433;"
            +"database=javasql;"
            +"user=sa;"
            + "password=1234;";
        con = DriverManager.getConnection(conexionUrl);
//        return con;
    } catch (Exception e){
        JOptionPane.showMessageDialog(null, "Error: " + e);
        
    }return con;
    
    }
    
}
