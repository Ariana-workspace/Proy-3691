/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ari.postres.model;

import java.time.LocalDate;
import java.util.Objects;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Bool;

/**
 *
 * @author LMA002-11
 */
public class Pedido {
    private int id_pedido;
    private int id_usuario;
    private LocalDate fecha_pedido;
    private Bool estado;
    private Double total;

    public Pedido() {
    }

    public Pedido(int id_pedido, int id_usuario, LocalDate fecha_pedido, Bool estado, Double total) {
        this.id_pedido = id_pedido;
        this.id_usuario = id_usuario;
        this.fecha_pedido = fecha_pedido;
        this.estado = estado;
        this.total = total;
    }

    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public LocalDate getFecha_pedido() {
        return fecha_pedido;
    }

    public void setFecha_pedido(LocalDate fecha_pedido) {
        this.fecha_pedido = fecha_pedido;
    }

    public Bool getEstado() {
        return estado;
    }

    public void setEstado(Bool estado) {
        this.estado = estado;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 41 * hash + this.id_pedido;
        hash = 41 * hash + this.id_usuario;
        hash = 41 * hash + Objects.hashCode(this.fecha_pedido);
        hash = 41 * hash + Objects.hashCode(this.estado);
        hash = 41 * hash + Objects.hashCode(this.total);
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
        final Pedido other = (Pedido) obj;
        if (this.id_pedido != other.id_pedido) {
            return false;
        }
        if (this.id_usuario != other.id_usuario) {
            return false;
        }
        if (!Objects.equals(this.fecha_pedido, other.fecha_pedido)) {
            return false;
        }
        if (!Objects.equals(this.estado, other.estado)) {
            return false;
        }
        return Objects.equals(this.total, other.total);
    }
    
    
}
