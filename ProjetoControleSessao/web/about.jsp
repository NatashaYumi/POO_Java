<%-- 
    Document   : about
    Created on : 20 de set. de 2021, 17:56:08
    Author     : yumi-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String matricula = "1290482012039";
   String nome = "Natasha Yumi Nakayama de Almeida";%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="WEB-INF/jspf/header.jspf" %>
        <% if(authUserName == null){ %>
            <p style="color: red">Você não tem permissão para ver este conteúdo...</p>
        <% }else { %>
            <label for='name'>Nome:</label>
            <input type='text' id='name' size='50' value='<%= nome %>' disabled/>
            <label for='matricula'>Matrícula:</label>
            <input type='text' id='matricula' size='15' value='<%= matricula %>' disabled/><br><br>
            <img src='Octocat.png' width = 3%> GitHub
            <dl>
                <dt><a href='https://github.com/natashayumi'>GitHub/natashayumi</a></dt>
                <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/Aula02HelloWorld'>Aula02HelloWorld</a></dd>
                <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/Aula03JavaEEServlets'>Aula03JavaEEServlets</a></dd>
                <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/ProjetoMathServlet3.2'>ProjetoMathServlet3.2</a></dd>
                <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/ProjetoPortalCalculoJuros4.1'>ProjetoPortalCalculoJuros4.1</a></dd> 
                <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/Aula05JavaEEJSP'>Aula05JavaEEJSP</a></dd> 
                <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/Aula05ProjetoCalendario'>Aula05ProjetoCalendario</a></dd> 
                <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/Aula06JSPIncludes'>Aula06JSPIncludes</a></dd> 
                <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/ProjetoTabelaPrice'>ProjetoTabelaPrice</a></dd> 
            </dl>
        <% } %>
        <%@ include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
