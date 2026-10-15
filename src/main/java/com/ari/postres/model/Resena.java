/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ari.postres.model;

import java.time.LocalDate;
import java.util.Objects;

/**
 *
 * @author LMA002-11
 */
public class Resena {
    private int id_resena;
    private int id_usuario;
    private int id_postre;
    private int calificacion;
    private String comentario;
    private LocalDate fecha_resena;

    public Resena() {
    }

    public Resena(int id_resena, int id_usuario, int id_postre, int calificacion, String comentario, LocalDate fecha_resena) {
        this.id_resena = id_resena;
        this.id_usuario = id_usuario;
        this.id_postre = id_postre;
        this.calificacion = calificacion;
        this.comentario = comentario;
        this.fecha_resena = fecha_resena;
    }

    public int getId_resena() {
        return id_resena;
    }

    public void setId_resena(int id_resena) {
        this.id_resena = id_resena;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getId_postre() {
        return id_postre;
    }

    public void setId_postre(int id_postre) {
        this.id_postre = id_postre;
    }

    public int getCalificacion() {
        return calificacion;
    }

    public void setCalificacion(int calificacion) {
        this.calificacion = calificacion;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public LocalDate getFecha_resena() {
        return fecha_resena;
    }

    public void setFecha_resena(LocalDate fecha_resena) {
        this.fecha_resena = fecha_resena;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 37 * hash + this.id_resena;
        hash = 37 * hash + this.id_usuario;
        hash = 37 * hash + this.id_postre;
        hash = 37 * hash + this.calificacion;
        hash = 37 * hash + Objects.hashCode(this.comentario);
        hash = 37 * hash + Objects.hashCode(this.fecha_resena);
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
        final Resena other = (Resena) obj;
        if (this.id_resena != other.id_resena) {
            return false;
        }
        if (this.id_usuario != other.id_usuario) {
            return false;
        }
        if (this.id_postre != other.id_postre) {
            return false;
        }
        if (this.calificacion != other.calificacion) {
            return false;
        }
        if (!Objects.equals(this.comentario, other.comentario)) {
            return false;
        }
        return Objects.equals(this.fecha_resena, other.fecha_resena);
    }
    
    
    
}
