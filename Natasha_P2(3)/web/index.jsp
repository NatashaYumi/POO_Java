<%-- 
    Document   : index
    Created on : 22 de nov. de 2021, 17:34:29
    Author     : yumi-
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% ArrayList<String> taskList = new ArrayList<>();
    if(request.getParameter("addTarefa") != null){
        
    } else if (request.getParameter("delTarefa") != null){
    
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%if(userSession != null){ %>
        <h1>Tarefas</h1>
        <form method="post">
            Descrição: <input type="text" name="descTarefa"/>
            <input type="submit" name="addTarefa" value="Adicionar"/>
        </form>
        <table>
            <th>Descrição da tarefa</th>
            <tr>
                <td></td>
                <td>
                    <form method="post">
                        <input type="submit" name="delTarefa" value="-"/>
                    </form>
                </td>
            </tr>
        </table>
        <% }else{ %>
        <h2 style="color:red">Para visualizar o conteúdo faça login primeiro.</h2>
        <% } %>
    </body>
</html>
