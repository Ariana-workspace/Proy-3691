/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ari.postres.model;

/**
 *
 * @author LMA002-11
 */
public class Postre {
    private int id_postre;
    private String nom_postre;
    private int id_tipo;
    private String receta;
    private Double precio;
    private int disponible;
    private int stock;
    private String imagen;
    private String descripcion;
    private int calorias;

    public Postre() {
    }

    public Postre(int id_postre, String nom_postre, int id_tipo, String receta, Double precio, int disponible, int stock, String imagen, String descripcion, int calorias) {
        this.id_postre = id_postre;
        this.nom_postre = nom_postre;
        this.id_tipo = id_tipo;
        this.receta = receta;
        this.precio = precio;
        this.disponible = disponible;
        this.stock = stock;
        this.imagen = imagen;
        this.descripcion = descripcion;
        this.calorias = calorias;
    }

    public int getId_postre() {
        return id_postre;
    }

    public void setId_postre(int id_postre) {
        this.id_postre = id_postre;
    }

    public String getNom_postre() {
        return nom_postre;
    }

    public void setNom_postre(String nom_postre) {
        this.nom_postre = nom_postre;
    }

    public int getId_tipo() {
        return id_tipo;
    }

    public void setId_tipo(int id_tipo) {
        this.id_tipo = id_tipo;
    }

    public String getReceta() {
        return receta;
    }

    public void setReceta(String receta) {
        this.receta = receta;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public int getDisponible() {
        return disponible;
    }

    public void setDisponible(int disponible) {
        this.disponible = disponible;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getCalorias() {
        return calorias;
    }

    public void setCalorias(int calorias) {
        this.calorias = calorias;
    }
    
    
    
}
