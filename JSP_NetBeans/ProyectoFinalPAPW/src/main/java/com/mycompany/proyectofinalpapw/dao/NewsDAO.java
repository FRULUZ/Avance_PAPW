/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.dao;
import com.mycompany.proyectofinalpapw.models.Category;
import com.mycompany.proyectofinalpapw.models.News;
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
public class NewsDAO {
 
    public static int insertNews(News news){
    Connection con = null;
        
    try{
    
        con = DbConnection.getConnection();
        String sql = "CALL insertNews(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        CallableStatement statement = con.prepareCall(sql);
        statement.setString(1, news.getTitle());
        statement.setString(2, news.getDescription());
        statement.setInt(3, news.getCategory().getId());
        statement.setString(4, news.getDate());
        statement.setString(5, news.getCorta());
        statement.setString(6, news.getPathImage());
        statement.setString(7, news.getPathImage2());
        statement.setString(8, news.getPathImage3());
        statement.setString(9, news.getVideo());
        statement.setInt(10, news.getAprobada()); 
        statement.setInt(11, news.getUser());
        statement.setInt(12, news.getRank());
        
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
    
    
    public static List<News> getNews(){
    
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
            int idCategory = result.getInt(4);
            Category category = CategoryDAO.getCategory(idCategory);
            String fecha = result.getString(5);
            String corta = result.getString(6);
            String pathImage = result.getString(7);
            String pathImage2 = result.getString(8);
            String pathImage3 = result.getString(9);
            String Video = result.getString(10);
            int aprobada = result.getInt(11);
            int idUser = result.getInt(12);
            int rank = result.getInt(13);
            
            news.add(new News(id,title,description,category,fecha,corta, pathImage, pathImage2, pathImage3, Video, aprobada, idUser, rank));
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
    
   
        public static News getNew(int idNews) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL getNew(?);";
            CallableStatement statement = con.prepareCall(sql);
            
            statement.setInt(1, idNews);
            
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                int id = result.getInt(1);
                String title = result.getString(2);
                String description = result.getString(3);
                int idCategory = result.getInt(4);
                Category category = CategoryDAO.getCategory(idCategory);
                String fecha = result.getString(5);
                String corta = result.getString(6);
                String pathImage = result.getString(7);
                String pathImage2 = result.getString(8);
                String pathImage3 = result.getString(9);
                String Video = result.getString(10);
                int aprobada = result.getInt(11);
                int idUser = result.getInt(12);
                int rank = result.getInt(13);
                
                return new News(id, title, description, category, fecha, corta, pathImage, pathImage2, pathImage3, Video, aprobada, idUser, rank);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

        return null;
    }

    
       public static int aprobarNews(int idNew) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL Aprobar_news(?);";
            
            CallableStatement statement = con.prepareCall(sql);

            statement.setInt(1, idNew);

            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                  con.close();
                } catch (SQLException ex) {
                  Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
    
       
       
       
      public static News DeleteNews(int idNew) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            CallableStatement statement = con.prepareCall("CALL delete_News(?)");
            statement.setInt(1, idNew);

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
       
    
       
   public static int getNewsCatego(int idCate) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL get_news_catego(?);";
            
            CallableStatement statement = con.prepareCall(sql);

            statement.setInt(1, idCate);

            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                  con.close();
                } catch (SQLException ex) {
                  Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
    
  
   
       public static int rechazarNews(int idNew) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL Rechazar_news(?);";
            
            CallableStatement statement = con.prepareCall(sql);

            statement.setInt(1, idNew);

            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                  con.close();
                } catch (SQLException ex) {
                  Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
    
    
       
       
       
    public static int RankNews(News news){
    Connection con = null;
        
    try{
    
        con = DbConnection.getConnection();
        String sql = "CALL rankear_news(?, ?);";
        CallableStatement statement = con.prepareCall(sql);
        statement.setInt(1, news.getId());
        statement.setInt(2, news.getRank());
        
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
    
    
    
    
    
   public static int modificar_data(News news){
    
    Connection con =  null;
    
       try{
        
        con = DbConnection.getConnection();
        CallableStatement statement = con.prepareCall("call modificar_news(?,?,?,?,?,?)");
    
            statement.setInt(1,news.getId());
            statement.setString(2, news.getTitle());
            statement.setString(3, news.getDescription());
            statement.setInt(4, news.getCategory().getId());
            statement.setString(5, news.getDate());
            statement.setString(6, news.getCorta());
           
        
        return statement.executeUpdate();
        
    }catch(SQLException ex){
     
        System.out.print(ex.getMessage());
    }finally{
       
           if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
    }

     return 0;

}
    
    
  
   
   
   public static int modificar_media(News news){
    
    Connection con =  null;
    
       try{
        
        con = DbConnection.getConnection();
        CallableStatement statement = con.prepareCall("call modificar_news_media(?,?,?,?,?)");
    
            statement.setInt(1,news.getId());
            statement.setString(2, news.getPathImage());
            statement.setString(3, news.getPathImage2());
            statement.setString(4, news.getPathImage3());
           statement.setString(5, news.getVideo());
        
        return statement.executeUpdate();
        
    }catch(SQLException ex){
     
        System.out.print(ex.getMessage());
    }finally{
       
           if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(NewsDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
    }

     return 0;

}
   

    
}