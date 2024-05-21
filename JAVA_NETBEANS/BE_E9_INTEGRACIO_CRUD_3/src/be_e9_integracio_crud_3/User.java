/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package be_e9_integracio_crud_3;
import java.sql.*;
import java.util.*;

/**
 *
 * @author jordi
 */
public class User {
    
    private String userName;
    private String password;
    private String email;
    
    public User(String userName, String password, String email){
        this.userName = userName;
        this.password = password;
        this.email = email;
        UserDAO.insertUser(userName,password,email);
    }
    
    public String getEmail(){
        return UserDAO.getUserEmail(this.userName);
    }
    
    public void setEmail(String newEmail){
        UserDAO.updateUserEmail(this.userName, newEmail);
    }
    
}
