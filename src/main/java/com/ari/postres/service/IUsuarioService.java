/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.ari.postres.service;

import com.ari.postres.model.Usuario;
import java.util.List;

/**
 *
 * @author LMA002-11
 */
public interface IUsuarioService {
    public List<Usuario> listarUsuarios();
    public Usuario buscarUsuario(Integer id_usuario);
    public Usuario agregarUsuario(Usuario usuario);
    public Usuario editarUsuario(Usuario usuario);
    public void eliminarUsuario(Integer id_usuario);
    
}
