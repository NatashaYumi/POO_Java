<%-- 
    Document   : natasha-dica-megasena
    Created on : 2 de out. de 2021, 11:41:30
    Author     : yumi-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dica MegaSena</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <% if (userSession != null) {%>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">1º</th>
                    <th scope="col">2º</th>
                    <th scope="col">3º</th>
                    <th scope="col">4º</th>
                    <th scope="col">5º</th>
                    <th scope="col">6º</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <% ArrayList<Integer> numerosSorte= (ArrayList) session.getAttribute("luckyList");
                        for (int numeros: numerosSorte) {%>
                    <td> <%= numeros %> </td>
                    <% } %>
                </tr>
            </tbody>
        </table>
        <% } else {%>
            Você não tem permissão para acessar esta página, faça login e tente novamente.
        <% } %>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
