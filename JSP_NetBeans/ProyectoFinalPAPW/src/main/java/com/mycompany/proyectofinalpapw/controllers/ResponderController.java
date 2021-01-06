/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.controllers;

import com.mycompany.proyectofinalpapw.dao.ReplyDAO;
import com.mycompany.proyectofinalpapw.models.Reply;
import com.mycompany.proyectofinalpapw.models.User;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@WebServlet(name = "ResponderController", urlPatterns = {"/ResponderController"})
public class ResponderController extends HttpServlet {

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
     
        
         String content = request.getParameter("commentary");
         String idNews = request.getParameter("idNews");
         String idComentario = request.getParameter("idComentario");
         String hora = request.getParameter("hour");
         String fecha = request.getParameter("date");
         String idUser = request.getParameter("idUser");
         int likes = 0;
         
         
        Date date = new Date();
        DateFormat hourFormat = new SimpleDateFormat("HH:mm");
        String hora2 = hourFormat.format(date);
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String fecha2 =dateFormat.format(date);
         
         //Commentary(String content, int idNews, User user, int parent, String hora, String fecha)
         
        ReplyDAO.insertReply(new Reply(content,Integer.parseInt(idNews,10),new User(Integer.parseInt(idUser, 10)), Integer.parseInt(idComentario,10), hora2, fecha2, likes));
        
        
         List<Reply> responder = ReplyDAO.getReplies();
         request.setAttribute("replies", responder);
        
        
        request.getRequestDispatcher("VerNoticia.jsp?id=" + idNews).forward(request, response);
        
        
        
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
