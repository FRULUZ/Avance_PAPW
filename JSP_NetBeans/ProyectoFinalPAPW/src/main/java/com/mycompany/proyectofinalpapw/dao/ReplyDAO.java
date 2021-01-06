/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.dao;

import com.mycompany.proyectofinalpapw.models.Reply;
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
public class ReplyDAO {
    
    
    
         public static int insertReply(Reply reply) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL insertReply(?, ?, ?, ?, ?, ?, ?);";
            CallableStatement statement = con.prepareCall(sql);

            statement.setString(1, reply.getContent());
            statement.setInt(2, reply.getIdNews());
            statement.setInt(3, reply.getUser().getId());
            statement.setInt(4, reply.getParent());
            statement.setString(5, reply.getHora());
            statement.setString(6, reply.getFecha());
            statement.setInt(7, reply.getLikes());

            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ReplyDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
    
         
         
         
         
      public static List<Reply> getReplyByNews(int idNews) {
        List<Reply> commentaries = new ArrayList<>();
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL getRepliesByNew(?)";
            CallableStatement statement = con.prepareCall(sql);
            statement.setInt(1, idNews);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int id = result.getInt(1);
                String content = result.getString(2);
                int idNew = result.getInt(3);
                int idUser = result.getInt(4);
                int parent = result.getInt(5);
                User user = UserDAO.getUser(idUser);
                String hora = result.getString(6);
                String fecha = result.getString(7);
                int likes = result.getInt(8);
                
                commentaries.add(new Reply(id, content, idNews, user, parent, hora, fecha, likes));
            }
            return commentaries;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ReplyDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return commentaries;
    }        
      
      
      
      
      
      
       public static int addlikeReply(int idReply) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL sum_like_reply(?);";
            CallableStatement statement = con.prepareCall(sql);

            statement.setInt(1, idReply);

            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ReplyDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
        
        
        
        
        
        public static int dislikeReply(int idReply) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL res_like_reply(?);";
            CallableStatement statement = con.prepareCall(sql);

            statement.setInt(1, idReply);

            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ReplyDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
      
      
        
        
        
        
        
     public static List<Reply> getReplies(){
    
    List<Reply> replies = new ArrayList<>();
        
    Connection con = null;
    
    try{
    
        con = DbConnection.getConnection();
        String sql = "CALL getReplies();";
        CallableStatement statement = con.prepareCall(sql);
         ResultSet result = statement.executeQuery();
        while(result.next()){
        
            
            int id = result.getInt(1);
                String content = result.getString(2);
                int idNew = result.getInt(3);
                int idUser = result.getInt(4);
                int parent = result.getInt(5);
                User user = UserDAO.getUser(idUser);
                String hora = result.getString(6);
                String fecha = result.getString(7);
                int likes = result.getInt(8);
                
                replies.add(new Reply(id, content, idNew, user, parent, hora, fecha, likes));
      
        }
    
        return replies;
        
    }catch(SQLException ex){
    
    System.out.println(ex.getMessage());
        
    }finally{
    
    
    if(con !=null){
        
        try{
        
         con.close();
        
        }catch(SQLException ex){
        
            Logger.getLogger(ReplyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
   
    
    }
    
   
    }
 
    
       return replies; 
    }
        
       
        
     
         
}
