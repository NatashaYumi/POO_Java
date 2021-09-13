<%-- 
    Document   : index
    Created on : 13 de set. de 2021, 15:54:43
    Author     : yumi-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarefa 06.1</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <h2>Página inicial</h2>
        <h3><label for='name'>Nome:</label>
        <input type='text' id='name' size='50' value='Natasha Yumi Nakayama de Almeida' disabled/>
        <label for='matricula'>Matrícula:</label>
        <input type='text' id='matricula' size='15' value='1290482012039' disabled/></h3>
        <h3> <img src='Octocat.png' width = 3%> GitHub </h3>
        <dl>
            <dt><a href='https://github.com/natashayumi'>GitHub/natashayumi</a></dt>
            <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/Aula02HelloWorld'>Aula02HelloWorld</a></dd>
            <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/Aula03JavaEEServlets'>Aula03JavaEEServlets</a></dd>
            <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/ProjetoMathServlet3.2'>ProjetoMathServlet3.2</a></dd>
            <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/ProjetoPortalCalculoJuros4.1'>ProjetoPortalCalculoJuros4.1</a></dd> 
            <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/Aula05JavaEEJSP'>Aula05JavaEEJSP</a></dd> 
            <dd><a href='https://github.com/NatashaYumi/POO_Java/tree/main/Aula05ProjetoCalendario'>Aula05ProjetoCalendario</a></dd> 
        </dl>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>