/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;
import Entidades.E_productos;
import SQL.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public class Producto extends SQL.Conexion {
    
    public int Guardar(E_productos p){
        int respuesta = 0;
        try{
        CallableStatement cmd = getConexion().prepareCall("{CALL insertarProducto (?,?,?,?)}");
        
        cmd.setString(1,p.getNombre());
        cmd.setFloat(2,p.getPrecio());
        cmd.setString(3,p.getCantidad());
        cmd.setString(4,p.getUnidad());
        
        respuesta = cmd.executeUpdate();
        
        
        }catch(Exception e){
        }
        return respuesta;
    }
    
    public int modificar(E_productos p) {
        int respuesta = 0;
        try{
        CallableStatement cmd = getConexion().prepareCall("{CALL modificarProducto (?,?,?,?,?)}");
        
        cmd.setInt(1,p.getIdprod());
        cmd.setString(2,p.getNombre());
        cmd.setFloat(3,p.getPrecio());
        cmd.setString(4,p.getCantidad());
        cmd.setString(5,p.getUnidad());
        
        respuesta = cmd.executeUpdate();
        
        }catch(Exception e){
            System.out.println("ERROR: "+e);
        }
        return respuesta;
    }
    
    public int eliminar(int id) {
        int respuesta = 0;
        try{
            CallableStatement cmd = getConexion().prepareCall("{CALL eliminarProducto (?)}");
        
            cmd.setInt(1,id);
        
            respuesta = cmd.executeUpdate();
        
        }catch(Exception e){
            System.out.println("ERROR: "+e);
        }
        return respuesta;
    }
    
//    public int Mostrar(E_productos i){
//    int respuesta = 0;
//        try{
//        CallableStatement cmd = getConexion().prepareCall("{CALL mostrarProducto (?,?,?,?)}");
//        
//        cmd.setString(1,i.getNombre());
//        cmd.setFloat(2,i.getPrecio());
//        cmd.setString(3,i.getCantidad());
//        cmd.setString(4,i.getUnidad());
//        
//        respuesta = cmd.executeUpdate();
//        
//        
//        }catch(Exception e){
//        }
//        return respuesta;
//    }
    
  public void mostrarTabla(DefaultTableModel modeloTabla){
        PreparedStatement ps;
        ResultSet rs;
        ResultSetMetaData rsmd;
        int columnas;
        
        try{
            Connection con = new Conexion().getConexion();
            ps = con.prepareStatement("EXEC mostrarProducto");
            rs = (ResultSet) ps.executeQuery();
            rsmd = rs.getMetaData();
            columnas = rsmd.getColumnCount();
            
            while (rs.next()){
                Object[]fila = new Object[columnas];
                for (int i = 0; i<columnas;i++){
                fila[i]=rs.getObject(i+1);
                }
                modeloTabla.addRow(fila);
                
            }
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null,e.toString());
        }
    }
}
