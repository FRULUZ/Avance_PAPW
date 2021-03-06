/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.dao;

import com.mycompany.proyectofinalpapw.models.Category;
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
public class CategoryDAO {
    
    
    public static int insertCategory(Category category){
    
        
        Connection con = null;
        
        try{
            
            
            con = DbConnection.getConnection();
            String sql = "CALL insertCategory(?,?,?);";
            CallableStatement statement = con.prepareCall(sql);
            statement.setString(1, category.getName());
            statement.setInt(2, category.getOrder());
            statement.setInt(3, category.getParent());
            
            return statement.executeUpdate();
            
            
        }catch(SQLException ex){
          System.out.println(ex.getMessage());
            
        }finally{
        
        if(con !=null){
        
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        }
            
            
        }
        
        return 0;
        
    }
    
    public static List<Category> getCategories(){
    
    List<Category> categories = new ArrayList<>();
   
    Connection con  = null;
    
    try{
    
        con = DbConnection.getConnection();
        String sql = "CALL getCategories();";
        CallableStatement statement = con.prepareCall(sql);
        ResultSet result = statement.executeQuery();
        
        
        while(result.next()){
        
            int id = result.getInt(1);
            String name = result.getString(2);
            int order = result.getInt(3);
            int parent = result.getInt(4);
            categories.add(new Category(id, name, order, parent));
            
            
        }
        
        return categories;
        
    } catch(SQLException ex){
    
   System.out.println(ex.getMessage());
        
    } finally{
    
    if(con != null){
    
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    }
       
    
    return categories;
    
    }
    
    
    
    
    
    
    public static Category getCategory(int idCategory){
    
    Connection con  = null;
    
    try{
    
        con = DbConnection.getConnection();
        String sql = "CALL getCategory(?);";
        CallableStatement statement = con.prepareCall(sql);
        
        statement.setInt(1, idCategory);
        
        ResultSet result = statement.executeQuery();
        
        
        while(result.next()){
        
            int id = result.getInt(1);
            String name = result.getString(2);
            int order = result.getInt(3);
            int parent = result.getInt(4);
            
            
            return new Category(id, name, order, parent);
            
    
            
        }
        
        
    } catch(SQLException ex){
    
   System.out.println(ex.getMessage());
        
    } finally{
    
    if(con != null){
    
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    }
       
    return null;
    
    }
    
    
    
    
    
    
    
    
    
}
