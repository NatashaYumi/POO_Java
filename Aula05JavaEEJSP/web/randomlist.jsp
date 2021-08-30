<%-- 
    Document   : randomlist
    Created on : 30 de ago. de 2021, 17:10:44
    Author     : yumi-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage = null;
    int  n = 5;
    try {
            n = Integer.parseInt(request.getParameter("n"));
        } catch (Exception e) {
            errorMessage = "Erro ao ler parâmetro n: '" + request.getParameter("n")
                    + "' não é um número inteiro válido!";
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
        <h3>Números aleatórios</h3>
        <% if(errorMessage == null){ %>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Número</th>
            </tr>
            <% for(int i=0; i <=n; i++){ %>
            <tr>
                <td><%= i %></td>
                <td><%= ((int) (100*Math.random())) %></td>
            </tr>
            <% } %>
        </table>
        <% }else{ %>
            <div style="color:red"> Erro: <%= errorMessage %> </div>
        <% } %>
        <hr>
        <form action="randomlist.jsp">
            <input type="number" name="n" value="<%= n %>"/>
            <input type="submit" value="Gerar"/>
        </form>
    </body>
</html>
