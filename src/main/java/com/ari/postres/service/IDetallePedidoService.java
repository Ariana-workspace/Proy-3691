/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.ari.postres.service;

import com.ari.postres.model.DetallePedido;
import java.util.List;

/**
 *
 * @author LMA002-11
 */
public interface IDetallePedidoService {
    public List<DetallePedido> listarDetallesPedidos();
    public DetallePedido buscarDetallePedido(Integer id_detalle);
    public DetallePedido agregarDetallePedido(DetallePedido detalle);
    public DetallePedido editarDetallePedido(Integer id_detalle);
    public void eliminarDetallePedidoPorId(Integer id_detalle);
}
