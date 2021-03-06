/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.controllers;

import com.mycompany.proyectofinalpapw.dao.UserDAO;
import com.mycompany.proyectofinalpapw.models.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author EDGAR
 */
@WebServlet(name = "LogInCorreoController", urlPatterns = {"/LogInCorreoController"})
public class LogInCorreoController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
        processRequest(request, response);
 
        
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
        
        User user = new User(password, correo);
        

        
        User logIn = UserDAO.LogInUserCorreo(user);

        
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
    }// </editor-fold>

}
