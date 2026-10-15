/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ari.postres.model;

import java.util.Objects;

/**
 *
 * @author LMA002-11
 */
public class Lugar {
    private int id_lugar;
    private String titulo;
    private String subtitulo;
    private Double latitud;
    private Double longitud;
    private int radio;
    private String imagen;
    private int id_postre;

    public Lugar() {
    }

    public Lugar(int id_lugar, String titulo, String subtitulo, Double latitud, Double longitud, int radio, String imagen, int id_postre) {
        this.id_lugar = id_lugar;
        this.titulo = titulo;
        this.subtitulo = subtitulo;
        this.latitud = latitud;
        this.longitud = longitud;
        this.radio = radio;
        this.imagen = imagen;
        this.id_postre = id_postre;
    }

    public int getId_lugar() {
        return id_lugar;
    }

    public void setId_lugar(int id_lugar) {
        this.id_lugar = id_lugar;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getSubtitulo() {
        return subtitulo;
    }

    public void setSubtitulo(String subtitulo) {
        this.subtitulo = subtitulo;
    }

    public Double getLatitud() {
        return latitud;
    }

    public void setLatitud(Double latitud) {
        this.latitud = latitud;
    }

    public Double getLongitud() {
        return longitud;
    }

    public void setLongitud(Double longitud) {
        this.longitud = longitud;
    }

    public int getRadio() {
        return radio;
    }

    public void setRadio(int radio) {
        this.radio = radio;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public int getId_postre() {
        return id_postre;
    }

    public void setId_postre(int id_postre) {
        this.id_postre = id_postre;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 59 * hash + this.id_lugar;
        hash = 59 * hash + Objects.hashCode(this.titulo);
        hash = 59 * hash + Objects.hashCode(this.subtitulo);
        hash = 59 * hash + Objects.hashCode(this.latitud);
        hash = 59 * hash + Objects.hashCode(this.longitud);
        hash = 59 * hash + this.radio;
        hash = 59 * hash + Objects.hashCode(this.imagen);
        hash = 59 * hash + this.id_postre;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Lugar other = (Lugar) obj;
        if (this.id_lugar != other.id_lugar) {
            return false;
        }
        if (this.radio != other.radio) {
            return false;
        }
        if (this.id_postre != other.id_postre) {
            return false;
        }
        if (!Objects.equals(this.titulo, other.titulo)) {
            return false;
        }
        if (!Objects.equals(this.subtitulo, other.subtitulo)) {
            return false;
        }
        if (!Objects.equals(this.imagen, other.imagen)) {
            return false;
        }
        if (!Objects.equals(this.latitud, other.latitud)) {
            return false;
        }
        return Objects.equals(this.longitud, other.longitud);
    }
    
    
}
