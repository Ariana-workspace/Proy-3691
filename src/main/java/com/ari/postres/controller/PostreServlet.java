package com.ari.postres.controller;

import com.ari.postres.model.Postre;
import com.ari.postres.service.PostresService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet("/postres")
public class PostreServlet extends HttpServlet {
    private PostresService postresService = new PostresService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        List<Postre> postres = postresService.listarPostres();
        request.setAttribute("postres", postres);
        request.getRequestDispatcher("/postres.jsp")
                .forward(request, response);
        System.out.println("Cantidad de postres: " + postres.size());
    }
}
