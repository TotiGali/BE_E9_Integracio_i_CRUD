/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package be_e9_integracio_crud_3;
import java.sql.*;
import java.util.*;
import java.sql.Date;

/**
 *
 * @author jordi
 */
public class Producto {
    
    private int id_producto;
    private String nombre_producto;
    private String categoria;
    private String descripcion;
    private Float precio;
    private int Cantidad;
    private Date fecha_creacion;
    private Date fecha_caducidad;
    
    public Producto(int id_producto, String nombre_producto, String categoria, String descripcion, Float precio, int Cantidad, Date fecha_creacion, Date fecha_caducidad){
        this.id_producto = id_producto;
        this.nombre_producto = nombre_producto;
        this.categoria = categoria;
        this.descripcion = descripcion;
        this.precio = precio;
        this.Cantidad = Cantidad;
        this.fecha_creacion = fecha_creacion;
        this.fecha_caducidad = fecha_caducidad;
        ProductoDAO.insertProducto(id_producto, nombre_producto, categoria, descripcion, precio, Cantidad, fecha_creacion, fecha_caducidad);
    }
    
//    public int getCantidad(){
//        return ProductoDAO.getProductoCantidad(this.nombre_producto);
//    }
//    
//    public void setCantidad(int newCantidad){
//        ProductoDAO.updateProductoCantidad(this.Cantidad, newCantidad);
//    }
    
}
