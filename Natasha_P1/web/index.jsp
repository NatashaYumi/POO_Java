<%-- 
    Document   : index
    Created on : 2 de out. de 2021, 11:40:42
    Author     : yumi-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Início</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <br>
        <h4>Sessões ativas:  
        <%if (application.getAttribute("counter") != null){%>
        <%= application.getAttribute("counter")%>
        <%} else { %>
        0
        <%}%></h4>
        <br><br>
        <% if (userSession != null) {%>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Usuário</th>
                </tr>
            </thead>
            <tbody>
                <% ArrayList<String> listaUsuario = (ArrayList) application.getAttribute("userList");
                    int linha = 1;
                    for (String usuario: listaUsuario){%>
                <tr>
                    <th scope="row"><%= linha %></th>
                    <td><%= usuario%></td>
                    <% linha++;
                        } %>
                </tr>
            </tbody>
        </table>
        <% } %>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
