/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.dao;
import com.mycompany.proyectofinalpapw.models.Category;
import com.mycompany.proyectofinalpapw.models.News;
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
public class NewsDAO {
 
    public static int insertNews(News news){
    Connection con = null;
        
    try{
    
        con = DbConnection.getConnection();
        String sql = "CALL insertNews(?, ?, ?, ?);";
        CallableStatement statement = con.prepareCall(sql);
        statement.setString(1, news.getTitle());
        statement.setString(2, news.getDescription());
        statement.setString(3, news.getPathImage());
        statement.setInt(4, news.getCategory().getId());
        
      return statement.executeUpdate();
        
        
    }catch(SQLException ex){
    
        System.out.println(ex.getMessage());
       
    }finally{
    
    if(con != null){
    
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    }
    
    return 0;
    }
    
    
    public static List<News>  getNews(){
    
    List<News> news = new ArrayList<>();
        
    Connection con = null;
    
    try{
    
        con = DbConnection.getConnection();
        String sql = "CALL getNews();";
        CallableStatement statement = con.prepareCall(sql);
         ResultSet result = statement.executeQuery();
        while(result.next()){
        
            int id = result.getInt(1);
            String title = result.getString(2);
            String description = result.getString(3);
            String pathImage = result.getString(4);
            int idCategory = result.getInt(5);
            Category category = CategoryDAO.getCategory(idCategory);
            news.add(new News(id,title,description,pathImage,category));
        }
    
        return news;
        
    }catch(SQLException ex){
    
    System.out.println(ex.getMessage());
        
    }finally{
    
    
    if(con !=null){
        
        try{
        
         con.close();
        
        }catch(SQLException ex){
        
            Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
   
    
    }
    
   
    }
 
    
       return news; 
    }
    
    
}
