/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.controllers;
import com.mycompany.proyectofinalpapw.dao.UserDAO;
import com.mycompany.proyectofinalpapw.models.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author EDGAR
 */
@WebServlet(name = "LogInController", urlPatterns = {"/LogInController"})
public class LogInController extends HttpServlet {


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
        String tipo = request.getParameter("tipo");
        String imagen = request.getParameter("image");
        
        User user = new User(username, password, imagen);
        

        
        User logIn = UserDAO.LogInUser(user);

        
        if(logIn == null){
        
            response.sendRedirect("SignInFail.jsp");
            
        }else{
           
           

            HttpSession session = request.getSession();
            session.setAttribute("id", logIn.getId());
            session.setAttribute("username", logIn.getUsername());
            session.setAttribute("password", logIn.getPassword());
            session.setAttribute("tipo", logIn.getTipo_user());
            session.setAttribute("correo", logIn.getCorreo());
            session.setAttribute("image", logIn.getPath_user());
            session.setAttribute("red", logIn.getRed());
            session.setAttribute("about", logIn.getAbout());

            response.sendRedirect("VerUsuario.jsp");

        }
        
     
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
