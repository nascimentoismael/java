/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ismaeldeazevedonascimento
 */
@WebServlet(name = "CarroServlet", urlPatterns = {"/CarroServlet"})
public class CarroServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        Map<String, ArrayList<String>> modelos = new HashMap<>();
        
        ArrayList<String> lista = new ArrayList<>();
        lista.add("Gol");
        lista.add("Celta");
        lista.add("Uno");
        modelos.put("Popular", lista);
        
        lista = new ArrayList<>();
        lista.add("Fiesta");
        lista.add("Palio");
        lista.add("Fox");
        modelos.put("Básico", lista);
        
        lista = new ArrayList<>();
        lista.add("Freemont");
        lista.add("Jepp");
        lista.add("HRV");
        modelos.put("SUV", lista);
        
        lista = new ArrayList<>();
        lista.add("Strada");
        lista.add("Saveiro");
        lista.add("S10");
        modelos.put("Utilitário", lista);
        
        lista = new ArrayList<>();
        lista.add("Corola");
        lista.add("Fusion");
        lista.add("Civic");
        modelos.put("Sedan", lista);
        
        String model = request.getParameter("categoria");
        
        try( PrintWriter out = response.getWriter()){
            String resp = "";
            for (String categoria : modelos.get(model) ){
                resp += categoria+";";
            }
            out.println( resp );
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
