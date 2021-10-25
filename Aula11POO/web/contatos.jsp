<%-- 
    Document   : index
    Created on : 25 de out. de 2021, 14:42:19
    Author     : yumi-
--%>

<%@page import="model.Data"%>
<%@page import="model.Base"%>
<%@page import="model.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    try {
        if(request.getParameter("form-add") != null){
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            int dia = Integer.parseInt(request.getParameter("nascimento.dia"));
            int mes = Integer.parseInt(request.getParameter("nascimento.mes"));
            int ano = Integer.parseInt(request.getParameter("nascimento.ano"));
            Contato c = new Contato(nome, telefone, new Data(dia, mes, ano));
            Base.getContatosList().add(c);
            response.sendRedirect(request.getRequestURI());
        } else if(request.getParameter("form-remove") != null){
            int i = Integer.parseInt(request.getParameter("index"));
            Base.getContatosList().remove(i);
            response.sendRedirect(request.getRequestURI());
        }
        } catch (Exception ex) {
            error = ex.getMessage();
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contatos - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Contatos</h2>
        <% if (error != null) { %> 
            <div style="color:red"><%= error %></div>
        <% } %>
        <form>
            <fieldset>
                <legend>Novo contato</legend>
                Nome: <br/> <input type="text" name="nome"/> <br/>
                Telefone: <br/> <input type="text" name="telefone"/> <br/>
                Data de nascimento: <br/>
                <input type="number" step="1" name="nascimento.dia"/>/
                <input type="number" step="1" name="nascimento.mes"/>/
                <input type="number" step="1" name="nascimento.ano"/>
                <br/> <br/>
                <input type="submit" name="form-add">
            </fieldset>                
        </form>
        <hr/>
        <table border="2">
            <tr>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Data de nascimento</th>
                <th>Remoção</th>
            </tr>
            <% for (Contato c: Base.getContatosList()){ %>
            <tr>
                <td><%= c.getNome() %></td>
                <td><%= c.getTelefone() %></td>
                <td><%= c.getNascimento().getData() %></td>
                <td>
                    <form>
                        <input type="submit" name="form-remove" value="Remover"/>
                        <input type="hidden" name="index" value="<%= Base.getContatosList().indexOf(c) %>">
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
            
    </body>
</html>
