/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.dao;
import com.mycompany.proyectofinalpapw.models.News;
import com.mycompany.proyectofinalpapw.models.NewsLikes;
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
public class NewLikesDAO {
    
    
    public static int insertLikes(NewsLikes likeit){
    Connection con = null;
        
    try{
    
        con = DbConnection.getConnection();
        String sql = "CALL insert_megusta(?, ?, ?, ?);";
        CallableStatement statement = con.prepareCall(sql);
        statement.setInt(1, likeit.getUser());
        statement.setInt(2, likeit.getNews().getId());
        statement.setInt(3, likeit.getLikes());
       statement.setString(4, likeit.getTitle());
      return statement.executeUpdate();
        
        
    }catch(SQLException ex){
    
        System.out.println(ex.getMessage());
       
    }finally{
    
    if(con != null){
    
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(NewLikesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    }
    
    return 0;
    }
    
    
    
    
    
    
    
    public static List<NewsLikes> getNewsLike(){
    
    List<NewsLikes> newslike = new ArrayList<>();
        
    Connection con = null;
    
    try{
    
        con = DbConnection.getConnection();
        String sql = "CALL get_newslike();";
        CallableStatement statement = con.prepareCall(sql);
        ResultSet result = statement.executeQuery();
        while(result.next()){
        
            int id = result.getInt(1);
            int idUser = result.getInt(2);
            int idNew = result.getInt(3);
            int likeit = result.getInt(4);
            String title = result.getString(5);
            
            newslike.add(new NewsLikes(id,idUser,new News(idNew),likeit, title));
        }
    
        return newslike;
        
    }catch(SQLException ex){
    
    System.out.println(ex.getMessage());
        
    }finally{
    
    
    if(con !=null){
        
        try{
        
         con.close();
        
        }catch(SQLException ex){
        
            Logger.getLogger(NewLikesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
   
    
    }
    
   
    }
 
    
       return newslike; 
    }
    
    
    
    
    
    
     public static NewsLikes DeleteLikeNews(int idLikeNew) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            CallableStatement statement = con.prepareCall("CALL delete_megusta(?)");
            statement.setInt(1, idLikeNew);

            ResultSet result = statement.executeQuery();
        
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(NewLikesDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }
    
   
  
}
