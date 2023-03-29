/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

public class E_productos {
    
    private int idprod;
    private String nombre; 
    private float precio;
    private String cantidad; 
    private String unidad; 

    public E_productos(int idprod, String nombre, float precio, String cantidad, String unidad) {
        this.idprod = idprod;
        this.nombre = nombre;
        this.precio = precio;
        this.cantidad = cantidad;
        this.unidad = unidad;
    }
    
    public E_productos(String nombre, float precio, String cantidad, String unidad) {
        this.nombre = nombre;
        this.precio = precio;
        this.cantidad = cantidad;
        this.unidad = unidad;
    }

    public E_productos() {
        
    }

    public int getIdprod() {
        return idprod;
    }

    public void setIdprod(int idprod) {
        this.idprod = idprod;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    
}
