/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ari.postres.service;

import com.ari.postres.model.Usuario;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import java.util.List;

/**
 *
 * @author LMA002-11
 */
public class UsuarioService implements IUsuarioService{



    @Override
    public List<Usuario> listarUsuarios() {
       try{
            HttpClient cliente = HttpClient.newHttpClient();
            HttpRequest respuesta = HttpRequest.newBuilder()
                    .uri(URI.create("https://ariworkplace.alwaysdata.net/usuarios.php"))
                    .header("Accept", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = cliente.send(
                    respuesta,
                    HttpResponse.BodyHandlers.ofString()
            );

            System.out.println("codigo de estado: "+ response.statusCode());
            System.out.println("Respuesta JSON: "+ response.body());
            System.out.println("PRUEBA NUEVA: estoy ejecutando el servicio actualizado");

            Type tipoDlista= new TypeToken<List<Usuario>>() {}.getType();
            List<Usuario> lista = new Gson().fromJson(response.body(), tipoDlista);

            System.out.println("Cantidad de postres: " + lista.size());

            if (!lista.isEmpty()) {
            System.out.println("Primer postre: " + lista.get(0).getNombre());
            System.out.println("Precio: " + lista.get(0).getEmail());
            }
            

            return new Gson().fromJson(response.body(), tipoDlista);

        }catch(Exception e){
            e.printStackTrace();
            return List.of();
        
    } 
    }

    @Override
    public Usuario buscarUsuario(Integer id_usuario) {
        return null;
    }

    @Override
    public Usuario agregarUsuario(Usuario usuario) {
        return null;
    }

    @Override
    public Usuario editarUsuario(Usuario usuario) {
        return null;
    }

    @Override
    public void eliminarUsuario(Integer id_usuario) {

    }
}
