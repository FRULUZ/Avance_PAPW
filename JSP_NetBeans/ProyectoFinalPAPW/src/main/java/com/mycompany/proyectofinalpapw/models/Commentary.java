/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.proyectofinalpapw.models;

import java.util.List;

/**
 *
 * @author EDGAR
 */
public class Commentary {
    
    private int id;
    private String content;
    private int idNews;
    private User user;
    private int parent;
    private List<Commentary> answers;
    private String hora;
    private String fecha;
    private int likes;

    public Commentary() {
    }

    public Commentary(int id) {
        this.id = id;
    }

    public Commentary(int id, String content) {
        this.id = id;
        this.content = content;
    }

    //este cambia//

    public Commentary(String content, int idNews, User user, int parent, String hora, String fecha, int likes) {
        this.content = content;
        this.idNews = idNews;
        this.user = user;
        this.parent = parent;
        this.hora = hora;
        this.fecha = fecha;
        this.likes = likes;
    }
    
  

    //este cambia//
    
    public Commentary(int id, String content, int idNews, User user, int parent, String hora, String fecha, int likes) {
        this.id = id;
        this.content = content;
        this.idNews = idNews;
        this.user = user;
        this.parent = parent;
        this.hora = hora;
        this.fecha = fecha;
        this.likes = likes;
    }

    public Commentary(int id, String content, int idNews, User user, int parent, List<Commentary> answers) {
        this.id = id;
        this.content = content;
        this.idNews = idNews;
        this.user = user;
        this.parent = parent;
        this.answers = answers;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getIdNews() {
        return idNews;
    }

    public void setIdNews(int idNews) {
        this.idNews = idNews;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getParent() {
        return parent;
    }

    public void setParent(int parent) {
        this.parent = parent;
    }

    public List<Commentary> getAnswers() {
        return answers;
    }

    public void setAnswers(List<Commentary> answers) {
        this.answers = answers;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }
    
    
    


}
