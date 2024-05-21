/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package be_e9_integracio_crud_3;
import java.sql.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author jordi
 */
public class DatabaseConnection {
     
    
    private static final String URL = "jdbc:mysql://localhost:3306/Ejercicio9";
    private static final String USER = "root";
    private static final String PASSWORD = "BicipresiBench2029";
    
    public static Connection getConnection() throws SQLException{
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
    
    
    
    /*
    
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/Ejercicio9";  // Ensure this matches your database name
        String user = "yourUsername";  // Replace with your MySQL username
        String password = "yourPassword";  // Replace with your MySQL password
        
        try {
            // Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Open a connection
            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connection successful!");
            
            // Use the connection here (e.g., create a Statement and execute queries)
            
            // Close the connection
            conn.close();
        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver not found!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Connection failed!");
            e.printStackTrace();
        }
        
        
    }*/
       
}