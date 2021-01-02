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
public class NewsLikes {
    
   
    private int id;
    private int user;
    private News news;
    private int likes;
    private String title;

    public NewsLikes() {
    }
    
    
    //insert//

    public NewsLikes(int user, News news, int likes, String title) {
        this.user = user;
        this.news = news;
        this.likes = likes;
        this.title = title;
    }

  

    //select//

    public NewsLikes(int id, int user, News news, int likes, String title) {
        this.id = id;
        this.user = user;
        this.news = news;
        this.likes = likes;
        this.title = title;
    }
   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser() {
        return user;
    }

    public void setUser(int user) {
        this.user = user;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }


    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
 
    
}
