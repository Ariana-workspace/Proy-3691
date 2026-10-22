/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.ari.postres.service;

import com.ari.postres.model.Resena;
import java.util.List;

/**
 *
 * @author LMA002-11
 */
public interface IResenaService {
    public List<Resena> listarResenas();
    public Resena buscarResena(Integer resena);
    public Resena agregarResena(Resena resena);
    public Resena editarResena(Integer id);
    public void eliminarResenaPorId(Integer id);
}
