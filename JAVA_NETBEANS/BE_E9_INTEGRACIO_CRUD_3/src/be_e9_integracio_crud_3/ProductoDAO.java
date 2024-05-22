/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package be_e9_integracio_crud_3;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;

/**
 *
 * @author jordi
 */
public class ProductoDAO {
    
    //IMPRIMIR LA TAULA DE PRODUCTES AMB ELS SEUS DETALLS
    public static void printProductoDetails(){
    
        String query = "SELECT * FROM Producto;";
        try(Connection conn = DatabaseConnection.getConnection();
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query)){

                while(rs.next()){
                    int id_producto = rs.getInt("id_producto");
                    String nombre_producto = rs.getString("nombre_producto");
                    int Cantidad = rs.getInt("Cantidad");
                    Float precio = rs.getFloat("Precio");
                    System.out.println(" ID_producto: " + id_producto + " , nombre producto: " + nombre_producto + " , cantidad: " + Cantidad + " , precio: " + precio);
                }          
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    //INSERIR UN PRODUCTE NOU
    public static void insertProducto(int id_producto, String nombre_producto, String categoria, String descripcion, Float precio, int Cantidad, Date fecha_creacion, Date fecha_caducidad){
        String query = "INSERT INTO Producto(id_producto, nombre_producto, categoria, descripcion, precio, Cantidad, fecha_creacion, fecha_caducidad) VALUES (?,?,?,?,?,?,?,?);";
        try(Connection conn = DatabaseConnection.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(query)){
                
                    pstmt.setInt(1, id_producto);
                    pstmt.setString(2, nombre_producto);
                    pstmt.setString(3, categoria);
                    pstmt.setString(4, descripcion);
                    pstmt.setFloat(5, precio);
                    pstmt.setInt(6, Cantidad);
                    pstmt.setDate(7, fecha_creacion);
                    pstmt.setDate(8, fecha_caducidad);
                    pstmt.executeUpdate(); 
                    System.out.println("Nuevo producto insertado!");
                    System.out.println(" ID_producto: " + id_producto + " , nombre producto: " + nombre_producto + " , cantidad: " + Cantidad + " , precio: " + precio);
            
        }catch(SQLException e){
            e.printStackTrace();
        } 
    }
    
    //GET DE LA QUANTITAT DEL PRODUCTE
    public static String getProductoCantidad(String nombre_producto){
        int Cantidad = 0;
        String query = "SELECT Cantidad FROM producto where nombre_producto = ?;";
        try(Connection conn = DatabaseConnection.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(query)){

                pstmt.setString(1,nombre_producto);

                try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    Cantidad = rs.getInt("cantidad");
                    System.out.println("Cantidad: " + Cantidad);
                } else {
                    System.out.println("Producto no encontrado.");
                    String.valueOf(-1); // Devuelve -1 si el producto no se encuentra
                }
            }     

        }catch(SQLException e){
            e.printStackTrace();
            return String.valueOf(-1); // Devuelve -1 en caso de error
        }
        return String.valueOf(Cantidad);  
    }
    
    //ACTUALITZAR LA QUANTITAT DEL PRODUCTE
//    public static void updateProductoCantidad(String nombre_producto, int newCantidad){
//        String query = "UPDATE producto SET Cantidad = ? WHERE nombre_producto = ?;";
//        try(Connection conn = DatabaseConnection.getConnection();
//                PreparedStatement pstmt = conn.prepareStatement(query)){
//                
//                pstmt.setInt(1, newCantidad);
//                pstmt.setString(2, nombre_producto);
//                pstmt.executeUpdate();
//                
//                System.out.println("Cantidad producto actualizada!");
//                
//        }catch(SQLException e){
//            e.printStackTrace();
//            //return String.valueOf(-1); // Devuelve -1 en caso de error
//        }
//    }


    //ACTUALITZAR LA QUANTITAT DEL PRODUCTE COMPROBANT QUE EL NOM DEL PRODUCTE EXISTEIXI
    public static void updateProductoCantidad(String nombre_producto, int newCantidad){
        String query = "UPDATE producto SET Cantidad = ? WHERE nombre_producto = ?;";
        try(Connection conn = DatabaseConnection.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(query)){
                
                pstmt.setInt(1, newCantidad);
                pstmt.setString(2, nombre_producto);
              
                int rowsAffected = pstmt.executeUpdate();
            
            if (rowsAffected > 0) {
                System.out.println("Cantidad del producto '" + nombre_producto + "' actualizada a: " + newCantidad);
            } else {
                System.out.println("El producto '" + nombre_producto + "' no se ha encontrado.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Error al actualizar la cantidad del producto.");
        }
    }
    
    
    //ELIMINAR UN PRODUCTE
    public static void deleteProducto(String nombre_producto){
        String query = "DELETE FROM producto where nombre_producto = ?;";
        try(Connection conn = DatabaseConnection.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(query)){
            
            pstmt.setString(1, nombre_producto);
            pstmt.executeUpdate();
            
        }catch(SQLException e){
            e.printStackTrace();
        }
    } 
}
