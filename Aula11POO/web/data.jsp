<%-- 
    Document   : index
    Created on : 25 de out. de 2021, 14:42:19
    Author     : yumi-
--%>

<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  Data padrao = new Data();
   
    // Data hoje; Declara um objeto chamado hoje, da classe data.
    // hoje = new Data(); Cria efetivamente o objeto, instancia o objeto.
    // Quando trabalhar com muitos objetos, lembrar de não instancia-los a toa, 
    // fazer apenas quando for utilizar
    Data hoje = new Data();
    hoje.setDia(25);
    hoje.setMes(-5); // tentando inserir numero inválido, tratado no método setMes
    hoje.setAno(2021);
    
    Data nascimentoNatasha = new Data(14, 04, 1992);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contatos - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Classe data</h2>
        <h3>Data de hoje:</h3>
        <div>
            <%--
                Neste caso a data aparece sem o "0" na frente, pois o
                tratamento está no método getData() 
            --%>
            <%= hoje.getDia() %>/<%= hoje.getMes() %>/<%= hoje.getAno() %>
        </div>
        <h3>Data de nascimento da Natasha:</h3>
        <div>
            <%-- 
                <%= nascimentoNatasha.dia %>/<%= nascimentoNatasha.mes %>/<%= nascimentoNatasha.ano %>
            --%>
            <%= nascimentoNatasha.getData() %>
        </div>
        <h3>Data padrao da classe:</h3>
        <div>
              <%= padrao.getData() %>
        </div>
    </body>
</html>
