/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yumi-
 */
@WebServlet(name = "NatashaServlet", urlPatterns = {"/natasha.html"})
public class NatashaServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * número de matrícula (RA), seu nome completo e o link do seu perfil no GitHub
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>NatashaServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NatashaServlet at " + request.getContextPath() + "</h1>");
            out.println("<a href='index.html'>Voltar</a>");
            out.println("<hr>");
            out.println("<h3><label for='name'>Nome:</label></h3>");
            out.println("<input type='text' id='name' size='50' value='Natasha Yumi Nakayama de Almeida' readonly/>");
            out.println("<h3><label for='matricula'>Matrícula:</label></h3>");
            out.println("<input type='text' id='name' size='15' value='1290482012039' readonly/>");
            out.println("<h3><img src='Octocat.png' width = 3%> GitHub </h3>");
            out.println("<dl>");
            out.println("<dt><h4><a href='https://github.com/natashayumi'>GitHub/natashayumi</a></h4></dt>");
            out.println("<dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/Aula02HelloWorld'>Aula02HelloWorld</a></dd>");
            out.println("<dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/Aula03JavaEEServlets'>Aula03JavaEEServlets</a></dd>");
            out.println("<dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/ProjetoMathServlet3.2'>ProjetoMathServlet3.2</a></dd>");
            out.println("</dl>");
            out.println("</body>");
            out.println("</html>");
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
