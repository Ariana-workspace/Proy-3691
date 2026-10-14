/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.ari.postres.service;

import com.ari.postres.model.Postre;
import java.util.List;

/**
 *
 * @author LMA002-11
 */
public interface IPostresService {
    
    public List<Postre> listarPostres();
    public Postre agregarPostre(Postre postre);
    public Postre editarPostre(Postre postre);
    public void eliminarPostre(Integer id_postre);
    
}
