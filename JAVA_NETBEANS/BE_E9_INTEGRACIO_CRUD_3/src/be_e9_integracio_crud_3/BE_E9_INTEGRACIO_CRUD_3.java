/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package be_e9_integracio_crud_3;

/**
 *
 * @author jordi
 */
public class BE_E9_INTEGRACIO_CRUD_3 {

    /**
     * @param args the command line arguments
     */
    public static void main (String [] args){
         User usuario1 = new User("user1","password1","user1@emial.com");
        
        UserDAO.printUserDetails();
                
        UserDAO.insertUser("user2","password2","user2@emial.com");
        
        System.out.println("Nueva lista con los usuairos nuevos actualizados: ");
      
        // usuario1.getEmail();
        //UserDAO.getUserEmail("Sergi10");        
        // UserDAO.updateUserEmail(2, "usuario2nuevo@ejemplo.com");
        //usuario1.setEmail("nuevoemailejemplo@gmail.com");
        //UserDAO.updateUserEmail("Sergi", "jadlfjdjsk@email.com");
        
        
    }
    
}
