<%-- 
    Document   : sum
    Created on : 30 de ago. de 2021, 16:52:16
    Author     : yumi-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage = null;
    double  n1 = 0,
            n2 = 0,
            result = 0;
    try {
            n1 = Double.parseDouble(request.getParameter("n1"));
        } catch (Exception e) {
            errorMessage = "Erro ao ler parâmetro n1: " + request.getParameter("n1");
        }
    try {
            n2 = Double.parseDouble(request.getParameter("n2"));
        } catch (Exception e) {
            errorMessage = "Erro ao ler parâmetro n2: " + request.getParameter("n2");
        }
    try {
            result = n1+n2;
        } catch (Exception e) {
            errorMessage = "Erro ao calcular soma - " + e.getMessage();
        }
%>
<html>
   <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3><a href="index.html"> Voltar </a></h3>
        <hr>
        <h3>Soma</h3>
        <% if(errorMessage == null){ %>
            <h4> <%= n1 %> + <%= n2 %> = <%= result %> </h4>
        <% }else{ %>
            <div style="color:red"> Erro: <%= errorMessage %> </div>
        <% } %>
        <hr>
        <form action="sum.jsp">
            <input type="number" name="n" value="5"/>+
            <input type="submit" value="Gerar"/>
        </form>
    </body>
</html>
