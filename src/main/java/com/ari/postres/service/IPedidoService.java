/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.ari.postres.service;

import com.ari.postres.model.Pedido;
import java.util.List;

/**
 *
 * @author LMA002-11
 */
public interface IPedidoService {
    public List<Pedido> listarPedidos();
    public Pedido buscarPedido(Integer id_pedido);
    public Pedido agregarPedidos(Pedido pedido);
    public Pedido editarPedidos(Integer id);
    public void eliminarPedidoPorId(Integer id);
}
