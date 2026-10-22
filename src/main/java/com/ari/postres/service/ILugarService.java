/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.ari.postres.service;

import com.ari.postres.model.Lugar;
import java.util.List;

/**
 *
 * @author LMA002-11
 */
public interface ILugarService {
    public List<Lugar> listarLugares();
    public Lugar buscarLugar(Integer id_lugar);
    public Lugar agregarLugar(Lugar lugar);
    public Lugar editarLugar(Integer id_lugar);
    
}
