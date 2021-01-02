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
public class EditarNews {
 
    
    private int id;
    private User uuario;
    private News noticia;
    private String texto;
    private int estado;

    public EditarNews() {
    }

    public EditarNews(User uuario, News noticia, String texto, int estado) {
        this.uuario = uuario;
        this.noticia = noticia;
        this.texto = texto;
        this.estado = estado;
    }

    public EditarNews(int id, User uuario, News noticia, String texto, int estado) {
        this.id = id;
        this.uuario = uuario;
        this.noticia = noticia;
        this.texto = texto;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUuario() {
        return uuario;
    }

    public void setUuario(User uuario) {
        this.uuario = uuario;
    }

    public News getNoticia() {
        return noticia;
    }

    public void setNoticia(News noticia) {
        this.noticia = noticia;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
   
    
}
