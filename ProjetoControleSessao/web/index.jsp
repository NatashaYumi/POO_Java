<%-- 
    Document   : index
    Created on : 20 de set. de 2021, 17:55:44
    Author     : yumi-
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NatashaApp</title>
    </head>
    <body>
        <%@ include file="WEB-INF/jspf/header.jspf" %>
        <div>
            <center>
            <form method="post">
                <% if(error == null){ %>
                    <% if(authUserName == null){ %>
                        <input type="text" name="auth-username" placeholder="Usuário"/><br>
                        <input type="password" name="auth-password" placeholder="Senha"/> <br>
                        <input type="submit" name="auth-login" value="LOGIN">
                    <% } %>
                <% } else { %>
                    <%= error%>
                    <a href=".">Tentar novamente</a>
                <% } %>
            </form>
            </center>
        </div>
        <%  if(authUserName != null){ 
                if (session.getAttribute("minhaLista")== null){
                    ArrayList lista = (ArrayList) session.getAttribute("minhaLista");
                    if(lista == null) {
                        lista = new ArrayList();
                        session.setAttribute("minhaLista", lista);
                        for(int i=0; i <=5; i++){
                            lista.add(((int) (100*Math.random())));
                        } 
                    }
                }
                else{
                    ArrayList lista = (ArrayList) session.getAttribute("minhaLista");
            %>
        <div class="jumbotron">
            <h1 class="display-4">Dica para seu jogo na loteria:</h1>
            <p class="lead">Faça sua sorte!</p>
                    <table class="table">
                        <tr>
                            <% for (int i=0; i<=5; i++){ %>
                            <td> <%= i+1 %>º número: </td>
                            <% } %>
                        </tr>
                        <tr>
                            <% for (int i=0; i<=5; i++){ %>
                            <td> <%= lista.get(i) %> </td>
                            <% } %>
                        </tr>
                    </table>
                <% } %>
        <% } %>
            <hr class="my-4">
        </div>
    <%@ include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
