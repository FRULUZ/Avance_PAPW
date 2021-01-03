/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.dao;

import com.mycompany.proyectofinalpapw.models.EditarNews;
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
public class EditarNewsDAO {
    
     public static int insertEdicion(EditarNews edicion){
    Connection con = null;
        
    try{
    
        con = DbConnection.getConnection();
        String sql = "CALL insert_edicion(?, ?, ?, ?);";
        CallableStatement statement = con.prepareCall(sql);
        statement.setInt(1, edicion.getUuario().getId());
        statement.setInt(2, edicion.getNoticia().getId());
        statement.setString(3, edicion.getTexto());
        statement.setInt(4, edicion.getEstado());
        
      return statement.executeUpdate();
        
        
    }catch(SQLException ex){
    
        System.out.println(ex.getMessage());
       
    }finally{
    
    if(con != null){
    
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(EditarNewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    }
    
    return 0;
    }
    
     
     
     
     
     
    public static List<EditarNews> getEdiciones(){
    
    List<EditarNews> newsEditor = new ArrayList<>();
        
    Connection con = null;
    
    try{
    
        con = DbConnection.getConnection();
        String sql = "CALL getEdicionesByUser();";
        
        CallableStatement statement = con.prepareCall(sql);
        ResultSet result = statement.executeQuery();
        while(result.next()){
        
            int id = result.getInt(1);
            int idUser = result.getInt(2);
            int idNew = result.getInt(3);
            String comentario = result.getString(4);
            int estado = result.getInt(5);
            
            newsEditor.add(new EditarNews(id,new User(idUser),new News(idNew), comentario, estado));
        }
    
        return newsEditor;
        
    }catch(SQLException ex){
    
    System.out.println(ex.getMessage());
        
    }finally{
    
    
    if(con !=null){
        
        try{
        
         con.close();
        
        }catch(SQLException ex){
        
            Logger.getLogger(EditarNewsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
  
    }
    
    }

       return newsEditor; 
    }
    

    
}
