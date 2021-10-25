<%-- 
    Document   : index
    Created on : 25 de out. de 2021, 14:42:19
    Author     : yumi-
--%>

<%@page import="model.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Horario atual = new Horario(17, 36, -12);
    Horario inicioIntervalo = new Horario(16, 40, 1);
    Horario finalIntervalo = new Horario(16, 49, 59);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Horário - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Classe Horário</h2>
        <h3>Horário atual</h3> 
        <div><%= atual.getHorario() %></div>
        <h3>Horário início intervalo</h3> 
        <div><%= inicioIntervalo.getHorario() %></div>
        <h3>Horário final intervalo</h3> 
        <div><%= finalIntervalo.getHorario() %></div>
    </body>
</html>
