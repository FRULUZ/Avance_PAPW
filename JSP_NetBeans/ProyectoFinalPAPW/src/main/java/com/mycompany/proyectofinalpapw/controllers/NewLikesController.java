/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.controllers;

import com.mycompany.proyectofinalpapw.dao.NewLikesDAO;
import com.mycompany.proyectofinalpapw.models.News;
import com.mycompany.proyectofinalpapw.models.NewsLikes;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author EDGAR
 */
@WebServlet(name = "NewLikesController", urlPatterns = {"/NewLikesController"})
public class NewLikesController extends HttpServlet {

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
        
        
       int idUser = Integer.parseInt(request.getParameter("idUser"), 10);
       int idNews = Integer.parseInt(request.getParameter("idNews"), 10);
       int valor = Integer.parseInt(request.getParameter("valor"), 10);
       String title = request.getParameter("title");
       NewsLikes likes_news = new NewsLikes(idUser, new News(idNews), valor, title); 
       response.sendRedirect("MainPageController");

        
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
        

       int idUser = Integer.parseInt(request.getParameter("idUser"), 10);
       int idNews = Integer.parseInt(request.getParameter("idNews"), 10);
       int valor = Integer.parseInt(request.getParameter("valor"), 10);
       String title = request.getParameter("title");
       
       NewsLikes likes_news = new NewsLikes(idUser, new News(idNews), valor, title); 
       NewLikesDAO.insertLikes(likes_news);
       
       
        List<NewsLikes> newslikes = NewLikesDAO.getNewsLike();
        request.setAttribute("Newslikes", newslikes);
       
       
       request.getRequestDispatcher("VerUsuario.jsp").forward(request, response);
       

        
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
