/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.controllers;

import com.mycompany.proyectofinalpapw.dao.UserDAO;
import com.mycompany.proyectofinalpapw.models.User;
import com.mycompany.proyectofinalpapw.utils.FileUtils;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author EDGAR
 */
@WebServlet(name = "SignInController", urlPatterns = {"/SignInController"})
@MultipartConfig(maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 25)
public class SignInController extends HttpServlet {

 
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        int tipo = Integer.parseInt(request.getParameter("tipo"), 10);
        String correo = request.getParameter("correo");    
        String red = request.getParameter("red");
        
        
        
        
        Part file = request.getPart("image");
        
        //si el path esta vacío//
        
        if(file != null){
            
        String path = request.getServletContext().getRealPath("");
        File fileSaveDir = new File(path + FileUtils.RUTE_USER_IMAGE);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }
        
        String contentType = file.getContentType();
        String nameImage = file.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType);
        String fullPath = path + FileUtils.RUTE_USER_IMAGE + "/" + nameImage;
        file.write(fullPath);
       
        User user = new User(username, password, tipo, correo, FileUtils.RUTE_USER_IMAGE + "/" + nameImage, red); 
        
        
        
        if(UserDAO.signInUser(user) == 1){
        
              response.sendRedirect("SignInSuccess.jsp");
            
        }else{
      
              response.sendRedirect("SignInFail.jsp");
        }
        
        
        //si no anda vacío//
        
        }else{
            
            
        String anonimo = "profile.png";   
        Part file2 = request.getPart("image");
         
         
        String path = request.getServletContext().getRealPath("");
        File fileSaveDir = new File(path + FileUtils.RUTE_USER_IMAGE);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }
        
        String contentType = file2.getContentType();
        String nameImage = anonimo + System.currentTimeMillis() + FileUtils.GetExtension("image/png");
        String fullPath = path + FileUtils.RUTE_USER_IMAGE + "/" + nameImage;
        file2.write(fullPath);

        
        
        User user = new User(username, password, tipo, correo, FileUtils.RUTE_USER_IMAGE + "/" + nameImage, red); 
        
        
        
        if(UserDAO.signInUser(user) == 1){
        
              response.sendRedirect("SignInSuccess.jsp");
            
        }else{
      
              response.sendRedirect("SignInFail.jsp");
        }
        
        
        }
        
         /*response.sendRedirect("Registro.jsp"); */
    }
    
    
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
