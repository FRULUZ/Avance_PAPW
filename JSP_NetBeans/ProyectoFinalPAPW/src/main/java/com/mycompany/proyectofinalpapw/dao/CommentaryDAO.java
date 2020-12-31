/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.dao;

import com.mycompany.proyectofinalpapw.models.Commentary;
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
public class CommentaryDAO {
    
    
      public static int insertCommentary(Commentary commentary) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL insertCommentary(?, ?, ?, ?, ?, ?, ?);";
            CallableStatement statement = con.prepareCall(sql);

            statement.setString(1, commentary.getContent());
            statement.setInt(2, commentary.getIdNews());
            statement.setInt(3, commentary.getUser().getId());
            statement.setInt(4, commentary.getParent());
            statement.setString(5, commentary.getHora());
            statement.setString(6, commentary.getFecha());
            statement.setInt(7, commentary.getLikes());

            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CommentaryDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }

     
      
      public static List<Commentary> getCommentariesByNews(int idNews) {
        List<Commentary> commentaries = new ArrayList<>();
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL getCommentariesByNew(?)";
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
                
                commentaries.add(new Commentary(id, content, idNews, user, parent, hora, fecha, likes));
            }
            return commentaries;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CommentaryDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return commentaries;
    }

      
       public static int deleteCommentary(int idCommentary) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL deleteCommentary(?);";
            CallableStatement statement = con.prepareCall(sql);

            statement.setInt(1, idCommentary);

            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CommentaryDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
       
       
       
       
       
       
       
        public static int addlike(int idCommentary) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL sum_like(?);";
            CallableStatement statement = con.prepareCall(sql);

            statement.setInt(1, idCommentary);

            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CommentaryDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
        
        
        
        
        
        public static int dislike(int idCommentary) {
        Connection con = null;
        try {
            con = DbConnection.getConnection();
            String sql = "CALL res_like(?);";
            CallableStatement statement = con.prepareCall(sql);

            statement.setInt(1, idCommentary);

            return statement.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CommentaryDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return 0;
    }
       
       
       


    
}
