<%-- 
    Document   : index
    Created on : 13 de set. de 2021, 15:21:07
    Author     : yumi-
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diretivas JSP - Índice</title>
        <%@include file="WEB-INF/jspf/bootstrap-head.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Página inicial</h2>
        <h3><%= new Date() %></h3>
        <h3><a href="page1.jsp">Página 1</a></h3>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>