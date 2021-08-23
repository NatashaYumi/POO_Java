/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

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
@WebServlet(name = "JurosSimplesServlet", urlPatterns = {"/juros-simples.html"})
public class JurosSimplesServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MathServlet</title>");    
            out.println("<a href='index.html'>Voltar</a>");
            out.println("</head>");
            out.println("<body>");
            double valpresente, 
                   taxjuros, 
                   tempo,
                   valfinal= 0;
            try {
                valpresente = Double.parseDouble(request.getParameter("valor_presente"));
                taxjuros    = Double.parseDouble(request.getParameter("taxa_juros"));
                tempo       = Double.parseDouble(request.getParameter("numero_periodos"));
                out.println("<h2>Detalhes do cálculo - Juros Simples</h2><hr>");
                out.println("<h3>Valor inicial (R$): "+valpresente+"</h3>");
                out.println("<h3>Taxa de juros aplicada (%): "+((int)taxjuros)+"</h3>");
                out.println("<h3>Tempo da aplicação(meses): "+((int)tempo)+"</h3>");
                valfinal = (valpresente*(1+(taxjuros/100)*tempo));
                out.println("<h2>Valor final (R$): "+valfinal+"</h2>");
            }catch (Exception ex){
                out.println("<p style='color:red'>Erro ao ler parâmetro: "+ex.getMessage()+"</p>");
            }
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
