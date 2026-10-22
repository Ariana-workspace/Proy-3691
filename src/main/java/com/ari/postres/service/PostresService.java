/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.ari.postres.service;
import com.ari.postres.model.Postre;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;
public class PostresService implements IPostresService{


    @Override
    public List<Postre> listarPostres() {
        try{
            HttpClient cliente = HttpClient.newHttpClient();
            HttpRequest respuesta = HttpRequest.newBuilder()
                    .uri(URI.create("https://ariworkplace.alwaysdata.net/postres.php"))
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

            Type tipoDlista= new TypeToken<List<Postre>>() {}.getType();
            List<Postre> lista = new Gson().fromJson(response.body(), tipoDlista);

        System.out.println("Cantidad de postres: " + lista.size());

if (!lista.isEmpty()) {
    System.out.println("Primer postre: " + lista.get(0).getNom_postre());
    System.out.println("Precio: " + lista.get(0).getPrecio());
}
            

            return new Gson().fromJson(response.body(), tipoDlista);

        }catch(Exception e){
            e.printStackTrace();
            return List.of();
        }


    }

    @Override
    public Postre agregarPostre(Postre postre) {
        return null;
    }

    @Override
    public Postre editarPostre(Postre postre) {
        return null;
    }

    @Override
    public void eliminarPostre(Integer id_postre) {

    }

    @Override
    public Postre buscarPostre(Integer id_postre) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
