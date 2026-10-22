/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.ari.postres.service;

import com.ari.postres.model.TipoPostre;
import java.util.List;

/**
 *
 * @author LMA002-11
 */
public interface ITipoPostreService {
    public List<TipoPostre> listarTiposDePostre();
    public TipoPostre buscarTipoPostre(Integer id_tipo);
}
