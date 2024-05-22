/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package be_e9_integracio_crud_3;
import java.sql.Date;


/**
 *
 * @author jordi
 */
public class BE_E9_INTEGRACIO_CRUD_3 {

    /**
     * @param args the command line arguments
     */
    public static void main (String [] args){
        
        //CREEM USUARI 1 AMB UNA INSTÀNCIA DE LA CLASSE USER
        //User usuario1 = new User("user1","password1","user1@emial.com");
        //UserDAO.printUserDetails();
        
        //CREEM USUARI 2 DIRECTE
        //UserDAO.insertUser("user2","password2","user2@emial.com");
        
        //CREEM USUARI 5 AMB INSTANCIA PER CRIDAR-LO I EDITAR EL MAIL A CONTINUACIÓ
        //User usuario5 = new User("user5","password5","user5@email.com");
        
        //CANVIEM EL MAIL DE USUARI 5. IMPORTANT!!!! CAL FER-HO AL MATEIX TEMPS DE LA CREACIÓ usuario5 SI ES FA PER INSTANCIA
        //usuario5.getEmail();
        //usuario5.setEmail("nuevoemail5@gmail.com");
        
        /*ESBORREM USUARI 2 I EL TORNEM A CREAR AMB ELS METODES ANTERIORS
        UserDAO.deleteUser(2,"user2");
        System.out.println("Nueva lista con los usuarios actualizados: ");
        */  
        
        //CANVI DE EMAIL DEL USER2 
        //UserDAO.getUserEmail("user2");
        //UserDAO.updateUserEmail("user2","noumail@gmail.com");
               
        //INSERIM UN NOU PRODUCTE
        //ProductoDAO.insertProducto(100, "Joc escacs", "Oci", "Joc escacs de fusta de kaoba", 99.99f, 1, Date.valueOf("2024-05-22"), Date.valueOf("2029-05-22"));       
        //ProductoDAO.printProductoDetails();
        
        //EDITEM LA QUANTITAT DEL PRODUCTE
        //ProductoDAO.updateProductoCantidad("Joc escacs", 9);
        
        //EDITEM LA QUANTITAT D'UN PRODUCTE QUE NO EXISTEIX
        ProductoDAO.updateProductoCantidad("Armari", 9);
        
        //ELIMINEM UN PRODUCTE
        //ProductoDAO.deleteProducto("Joc escacs");
        //PREGUNTA:  COM ELIMINEM UN PRODUCTE JA EXISTENT A LA BBDD I QUE TÉ FOREIGN KEYS A ALTRES TAULES?
        
        //IMPRIMIM EL LLISTAT ACTUAL DE PRODUCTES
        ProductoDAO.printProductoDetails();
        
       
    }
    
}
