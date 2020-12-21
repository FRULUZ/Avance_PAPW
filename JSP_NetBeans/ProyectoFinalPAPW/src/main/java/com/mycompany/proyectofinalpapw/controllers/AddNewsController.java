/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.controllers;

import com.mycompany.proyectofinalpapw.dao.CategoryDAO;
import com.mycompany.proyectofinalpapw.dao.NewsDAO;
import com.mycompany.proyectofinalpapw.models.Category;
import com.mycompany.proyectofinalpapw.models.News;
import com.mycompany.proyectofinalpapw.utils.FileUtils;
import java.io.File;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "AddNewsController", urlPatterns = {"/AddNewsController"})
@MultipartConfig(maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 25)
public class AddNewsController extends HttpServlet {

  
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
        
        List<Category> categories = CategoryDAO.getCategories();
        request.setAttribute("Categories", categories);
        request.getRequestDispatcher("CreaNoticia.jsp").forward(request, response);
        
        
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
        
        
         
        String title = request.getParameter("title");
        String description = request.getParameter("descripcion");
        int idCategory = Integer.parseInt(request.getParameter("category"), 10);
        String date = request.getParameter("date");
        String corta = request.getParameter("corta");
        
        
        
        Part file = request.getPart("image");

        String path = request.getServletContext().getRealPath("");
        File fileSaveDir = new File(path + FileUtils.RUTE_USER_IMAGE);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }
        
        String contentType = file.getContentType();
        String nameImage = file.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType);
        String fullPath = path + FileUtils.RUTE_USER_IMAGE + "/" + nameImage;
        file.write(fullPath);
        
        
        
        
        Part file2 = request.getPart("image2");

        String path2 = request.getServletContext().getRealPath("");
        File fileSaveDir2 = new File(path2 + FileUtils.RUTE_USER_IMAGE);
        if (!fileSaveDir2.exists()) {
            fileSaveDir2.mkdir();
        }
        
        String contentType2 = file2.getContentType();
        String nameImage2 = file2.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType);
        String fullPath2 = path + FileUtils.RUTE_USER_IMAGE + "/" + nameImage2;
        file2.write(fullPath2);
        
        
        
        Part file3 = request.getPart("image3");

        String path3 = request.getServletContext().getRealPath("");
        File fileSaveDir3 = new File(path3 + FileUtils.RUTE_USER_IMAGE);
        if (!fileSaveDir3.exists()) {
            fileSaveDir3.mkdir();
        }
        
        String contentType3 = file3.getContentType();
        String nameImage3 = file3.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType);
        String fullPath3 = path + FileUtils.RUTE_USER_IMAGE + "/" + nameImage3;
        file3.write(fullPath3);
        
        
        
        
        
        
        Part file4 = request.getPart("video");

        String path4 = request.getServletContext().getRealPath("");
        File fileSaveDir4 = new File(path4 + FileUtils.RUTE_USER_IMAGE);
        if (!fileSaveDir4.exists()) {
            fileSaveDir4.mkdir();
        }
        String contentType4 = file4.getContentType();
        String nameImage4 = file4.getName() + System.currentTimeMillis() + FileUtils.GetExtension("video/mp4"); //esta bien///
        String fullPath4 = path + FileUtils.RUTE_USER_IMAGE + "/" + nameImage4;
        file4.write(fullPath4);
        
        
           
        //CHECAR BIEN COMO AGREGA TODO//
        //agregar noticia//
             
       
        News newNews = new News(title, description, new Category(idCategory),date, corta, FileUtils.RUTE_USER_IMAGE + "/" + nameImage, FileUtils.RUTE_USER_IMAGE + "/" + nameImage2, FileUtils.RUTE_USER_IMAGE + "/" + nameImage3, FileUtils.RUTE_USER_IMAGE + "/" + nameImage4);
        NewsDAO.insertNews(newNews);
        
       
        
        List<Category> categories = CategoryDAO.getCategories();
        List<News> news = NewsDAO.getNews();
        
        
        request.setAttribute("Categories", categories);
        request.setAttribute("News", news);
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
        
    }

}