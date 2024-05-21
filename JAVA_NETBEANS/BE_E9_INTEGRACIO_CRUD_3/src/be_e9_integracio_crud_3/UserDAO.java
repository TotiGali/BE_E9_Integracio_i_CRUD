/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package be_e9_integracio_crud_3;
import java.sql.*;
import java.util.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author jordi
 */
public class UserDAO {
    
    public static void printUserDetails(){
    
        String query = "SELECT * FROM users;";
        try(Connection conn = DatabaseConnection.getConnection();
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query)){

                while(rs.next()){
                    int id = rs.getInt("id");
                    String username = rs.getString("username");
                    String email = rs.getString("email");
                    System.out.println(" ID: " + id + " , nombre usuario: " + username + " , email: " + email);
                }          
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    public static void insertUser(String username, String password, String email){
        String query = "INSERT INTO users(username, password, email) VALUES (?,?,?);";
        try(Connection conn = DatabaseConnection.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(query)){
                
                    pstmt.setString(1, username);
                    pstmt.setString(2, password);
                    pstmt.setString(3, email);
                    pstmt.executeUpdate(); 
                    System.out.println("Nuevo usuario insertado!");
            
        }catch(SQLException e){
            e.printStackTrace();
        }
        
    }
    
    public static void deleteUser(int id, String name){
        String query = "DELETE FROM users where id = ? and username = ?;";
        try(Connection conn = DatabaseConnection.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(query)){
            pstmt.setInt(1, id);
            pstmt.setString(2, name);
            pstmt.executeUpdate();
            
        }catch(SQLException e){
            e.printStackTrace();
        }
       } 
     
    public static void updateUserEmail(String username, String newEmail){
        String query = "UPDATE users SET email = ? WHERE username = ?;";
        try(Connection conn = DatabaseConnection.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(query)){
                
                pstmt.setString(1, newEmail);
                pstmt.setString(2, username);
                pstmt.executeUpdate();
                
                System.out.println("Email actualizado!");
                
        }catch(SQLException e){
            e.printStackTrace();
        } 
    }
    
     public static String getUserEmail(String username){
        String email = "";
        String query = "SELECT email FROM users where username = ?;";
        try(Connection conn = DatabaseConnection.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(query)){

                pstmt.setString(1,username);

                ResultSet rs = pstmt.executeQuery();
                
                while(rs.next()){
                email = rs.getString("email");
                System.out.println(" email: " + email );
                }        

        }catch(SQLException e){
            e.printStackTrace();
        }
                 return email;  
    }

}
