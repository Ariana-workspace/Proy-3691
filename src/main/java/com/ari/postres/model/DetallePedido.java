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
public class DetallePedido {
    private int id_detalle;
    private int id_pedido;
    private int id_postre;
    private int cantidad;
    private Double precio_unitario;

    public DetallePedido() {
    }

    public DetallePedido(int id_detalle, int id_pedido, int id_postre, int cantidad, Double precio_unitario) {
        this.id_detalle = id_detalle;
        this.id_pedido = id_pedido;
        this.id_postre = id_postre;
        this.cantidad = cantidad;
        this.precio_unitario = precio_unitario;
    }

    public int getId_detalle() {
        return id_detalle;
    }

    public void setId_detalle(int id_detalle) {
        this.id_detalle = id_detalle;
    }

    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    public int getId_postre() {
        return id_postre;
    }

    public void setId_postre(int id_postre) {
        this.id_postre = id_postre;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Double getPrecio_unitario() {
        return precio_unitario;
    }

    public void setPrecio_unitario(Double precio_unitario) {
        this.precio_unitario = precio_unitario;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 43 * hash + this.id_detalle;
        hash = 43 * hash + this.id_pedido;
        hash = 43 * hash + this.id_postre;
        hash = 43 * hash + this.cantidad;
        hash = 43 * hash + Objects.hashCode(this.precio_unitario);
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
        final DetallePedido other = (DetallePedido) obj;
        if (this.id_detalle != other.id_detalle) {
            return false;
        }
        if (this.id_pedido != other.id_pedido) {
            return false;
        }
        if (this.id_postre != other.id_postre) {
            return false;
        }
        if (this.cantidad != other.cantidad) {
            return false;
        }
        return Objects.equals(this.precio_unitario, other.precio_unitario);
    }
    
    
}
