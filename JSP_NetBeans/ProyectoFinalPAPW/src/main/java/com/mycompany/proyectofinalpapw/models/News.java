/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.models;

/**
 *
 * @author EDGAR
 */
public class News {
    
    private int id;
    private String title;
    private String description;
      //has-a//
    private Category category;
    private String date;
    private String corta;
    private String PathImage;
    private String PathImage2;
    private String PathImage3;
    private String video;
    private int aprobada;
    private int user;

    //para multi categorias en una sola noticia
    // private List<Category> categories;
    
    public News() {
    }

    public News(int id) {
        this.id = id;
    }

    public News(String title, String description, Category category, String date, String corta, String PathImage, String PathImage2, String PathImage3, String video, int aprobada, int user) {
        this.title = title;
        this.description = description;
        this.category = category;
        this.date = date;
        this.corta = corta;
        this.PathImage = PathImage;
        this.PathImage2 = PathImage2;
        this.PathImage3 = PathImage3;
        this.video = video;
        this.aprobada = aprobada;
        this.user = user;
    }

 
    //para crear nueva noticia//

    public News(int id, String title, String description, Category category, String date, String corta, String PathImage, String PathImage2, String PathImage3, String video, int aprobada, int user) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.category = category;
        this.date = date;
        this.corta = corta;
        this.PathImage = PathImage;
        this.PathImage2 = PathImage2;
        this.PathImage3 = PathImage3;
        this.video = video;
        this.aprobada = aprobada;
        this.user = user;
    }
   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCorta() {
        return corta;
    }

    public void setCorta(String corta) {
        this.corta = corta;
    }

    public String getPathImage() {
        return PathImage;
    }

    public void setPathImage(String PathImage) {
        this.PathImage = PathImage;
    }

    public String getPathImage2() {
        return PathImage2;
    }

    public void setPathImage2(String PathImage2) {
        this.PathImage2 = PathImage2;
    }

    public String getPathImage3() {
        return PathImage3;
    }

    public void setPathImage3(String PathImage3) {
        this.PathImage3 = PathImage3;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public int getAprobada() {
        return aprobada;
    }

    public void setAprobada(int aprobada) {
        this.aprobada = aprobada;
    }


    public int getUser() {
        return user;
    }

    public void setUser(int user) {
        this.user = user;
    }


    
}
