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
        CallableStatement statement = con.prepareCall("call signIn(?,?)");
        
        statement.setString(1, user.getUsername());
        statement.setString(2, user.getPassword());
                
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




public static User LogInUser(User user){
    
       try{
        
        Connection con = DbConnection.getConnection();
        CallableStatement statement = con.prepareCall("call logIn(?,?)");
        
        statement.setString(1, user.getUsername());
        statement.setString(2, user.getPassword());
                
       ResultSet result = statement.executeQuery();
       
       while(result.next()){
           
           int id = result.getInt(1);
           String username = result.getString("UserName");
           return new User(id, username);
       }
       
     
        
    }catch(SQLException ex){
     
        System.out.print(ex.getMessage());
    }

     return null;

}


    public static User getUser(int idUser) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            CallableStatement statement = con.prepareCall("call getUser(?)");
            statement.setInt(1, idUser);

            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int id = result.getInt(1);
                String username = result.getString("username");
                return new User(id, username);
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

   

}


