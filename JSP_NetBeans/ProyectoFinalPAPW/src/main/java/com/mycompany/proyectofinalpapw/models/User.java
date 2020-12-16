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
public class User {
    
    private int id;
    private String username; 
    private String password;
    private int tipo_user;
    private String correo;
    private String path_user;
    private String red;
       
    
    //constructores//
    
    public User(){
    
    }

    public User(int id) {
        this.id = id;
    }
    

    public User(int id, String username) {
        this.id = id;
        this.username = username;
    }

    
     public User(int id, String username, String password, int tipo_user, String correo, String path_user, String red) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.tipo_user = tipo_user;
        this.correo = correo;
        this.path_user = path_user;
        this.red = red;
    }

    public User(String username, String password, int tipo_user, String correo, String path_user, String red) {
        this.username = username;
        this.password = password;
        this.tipo_user = tipo_user;
        this.correo = correo;
        this.path_user = path_user;
        this.red = red;
    }

    public User(String username, String password, String path_user) {
        this.username = username;
        this.password = password;
        this.path_user = path_user;
    }
    
        
    public User(int id, String username, String path) {
        this.id = id;
        this.username = username;
        this.path_user = path;
    }

    public User(int id, String username, int tipo_user, String path_user) {
        this.id = id;
        this.username = username;
        this.tipo_user = tipo_user;
        this.path_user = path_user;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User(String path_user) {
        this.path_user = path_user;
    }

    public String getRed() {
        return red;
    }

    public void setRed(String red) {
        this.red = red;
    }

 
    public int getTipo_user() {
        return tipo_user;
    }

    public void setTipo_user(int tipo_user) {
        this.tipo_user = tipo_user;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPath_user() {
        return path_user;
    }

    public void setPath_user(String path_user) {
        this.path_user = path_user;
    }

    
    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }
    
    
    
    
    
}
