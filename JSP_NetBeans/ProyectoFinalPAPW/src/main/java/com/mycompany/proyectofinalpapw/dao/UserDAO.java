/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.dao;
import com.mycompany.proyectofinalpapw.models.User;
import com.mycompany.proyectofinalpapw.utils.DbConnection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author EDGAR
 */
public class UserDAO {



public static int signInUser(User user){
    
    Connection con =  null;
    
       try{
        
        con = DbConnection.getConnection();
        CallableStatement statement = con.prepareCall("call signIn(?,?,?,?,?,?,?)");
    
        statement.setString(1, user.getUsername());
        statement.setString(2, user.getPassword());
        statement.setInt(3, user.getTipo_user());
        statement.setString(4, user.getCorreo());
        statement.setString(5, user.getPath_user());
        statement.setString(6, user.getRed());
        statement.setString(7, user.getAbout());
        
        return statement.executeUpdate();
        
    }catch(SQLException ex){
     
        System.out.print(ex.getMessage());
    }finally{
       
           if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
    }

     return 0;

}

//pendiente//


public static User LogInUser(User user){
    
       try{
        
        Connection con = DbConnection.getConnection();
        CallableStatement statement = con.prepareCall("call logIn(?,?)");
        
        statement.setString(1, user.getUsername());
        statement.setString(2, user.getPassword());
        
       ResultSet result = statement.executeQuery();
       
       while(result.next()){
           
   
           int id = result.getInt(1);
           String username = result.getString(2);
           String password = result.getString(3);
           int tipo = result.getInt(4);
           String correo = result.getString(5);
           String path = result.getString(6);
           String red = result.getString(7);
           String about = result.getString(8);

           return new User(id, username, password, tipo, correo, path, red, about);
                
       
       }
       
       
       
     
        
    }catch(SQLException ex){
     
        System.out.print(ex.getMessage());
    }

     return null;

}

//pendiente//

    public static User getUser(int idUser) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            CallableStatement statement = con.prepareCall("call getUser(?)");
            statement.setInt(1, idUser);

            ResultSet result = statement.executeQuery();
            while (result.next()) {
                
                
                int id = result.getInt(1);
                String username = result.getString(2);
                String password = result.getString(3);
                int tipo = result.getInt(4);
                String correo = result.getString(5);
                String path = result.getString(6);
                String red = result.getString(7);
                String about = result.getString(8);
                
                return new User(id, username, password, tipo, correo, path, red, about);
                
                
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }


    
    public static int modificar_user(User users){
    
    Connection con =  null;
    
       try{
        
        con = DbConnection.getConnection();
        CallableStatement statement = con.prepareCall("call modificar_user(?,?,?,?,?,?)");
    
            statement.setInt(1,users.getId());
            statement.setString(2, users.getUsername());
            statement.setString(3, users.getPassword());
            statement.setString(4, users.getCorreo());
            statement.setString(5, users.getRed());
            statement.setString(6, users.getAbout());
            
           
        
        return statement.executeUpdate();
        
    }catch(SQLException ex){
     
        System.out.print(ex.getMessage());
    }finally{
       
           if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
    }

     return 0;

}
    
    
    
    
        public static User DeleteUser(int idUser) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            CallableStatement statement = con.prepareCall("CALL delete_user(?)");
            statement.setInt(1, idUser);

            ResultSet result = statement.executeQuery();
        
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }
    
   
        
        
        
    public static int addAnonimo(User user){
    
    Connection con =  null;
    
       try{
        
        con = DbConnection.getConnection();
        CallableStatement statement = con.prepareCall("call signInAnonimo(?,?,?,?,?,?,?,?)");
    
        statement.setInt(1, user.getId());
        statement.setString(2, user.getUsername());
        statement.setString(3, user.getPassword());
        statement.setInt(4, user.getTipo_user());
        statement.setString(5, user.getCorreo());
        statement.setString(6, user.getPath_user());
        statement.setString(7, user.getRed());
        statement.setString(8, user.getAbout());
        
        return statement.executeUpdate();
        
    }catch(SQLException ex){
     
        System.out.print(ex.getMessage());
    }finally{
       
           if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
    }

     return 0;

}
    
    
    
    public static User LogInUserCorreo(User user){
    
       try{
        
        Connection con = DbConnection.getConnection();
        CallableStatement statement = con.prepareCall("call logIn_correo(?,?)");
        
        statement.setString(1, user.getCorreo());
        statement.setString(2, user.getPassword());
        
       ResultSet result = statement.executeQuery();
       
       while(result.next()){
           
   
           int id = result.getInt(1);
           String username = result.getString(2);
           String password = result.getString(3);
           int tipo = result.getInt(4);
           String correo = result.getString(5);
           String path = result.getString(6);
           String red = result.getString(7);
           String about = result.getString(8);

           return new User(id, username, password, tipo, correo, path, red, about);
                
       
       }
       
  
        
    }catch(SQLException ex){
     
        System.out.print(ex.getMessage());
    }

     return null;

}
    
    
    
    
      public static int provisional(User users){
    
    Connection con =  null;
    
       try{
        
        con = DbConnection.getConnection();
        CallableStatement statement = con.prepareCall("call provicional_name(?,?)");
    
            statement.setInt(1,users.getId());
            statement.setString(2, users.getUsername());
            
        return statement.executeUpdate();
        
    }catch(SQLException ex){
     
        System.out.print(ex.getMessage());
    }finally{
       
           if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
    }

     return 0;

}
    
 
      
public static int modifyPic(User users){
    
    Connection con =  null;
    
       try{
        
        con = DbConnection.getConnection();
        CallableStatement statement = con.prepareCall("call modifyUserImage(?,?,?,?);");
    
            statement.setInt(1,users.getId());
            statement.setString(2, users.getUsername());
             statement.setInt(3,users.getTipo_user());
            statement.setString(4, users.getPath_user());
            
        return statement.executeUpdate();
        
    }catch(SQLException ex){
     
        System.out.print(ex.getMessage());
    }finally{
       
           if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
    }

     return 0;

}
 
    
    
   
}


