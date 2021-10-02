<%-- 
    Document   : natasha
    Created on : 2 de out. de 2021, 11:40:58
    Author     : yumi-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sobre</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <% if (userSession != null) {%>
        <br>
        <label for="nome">Nome</label>
        <input type="text" name="nome" value="Natasha Yumi Nakayama de Almeida">
        <label for="matricula">Matrícula</label>
        <input type="text" name="matricula" value="1290482012039">
        <label for="inicioCurso">Início curso</label>
        <input type="text" name="inicioCurso" value="01/2020">
        <img src="Octocat.png" width="3%">
        <a href="https://github.com/natashayumi">GitHub/NatashaYumi</a>
        
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Sigla</th>
                    <th scope="col">Disciplina</th>
                    <th scope="col">Professor</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>IBD002</td>
                    <td>Banco de Dados</td>
                    <td>SIMONE MARIA VIANA ROMANO</td>
                </tr>
                <tr>
                    <td>IES300</td>
                    <td>Engenharia de Software III</td>
                    <td>Renata Neves Ferreira</td>
                </tr>
                <tr>
                    <td>ILP007</td>
                    <td>Programação Orientada a Objetos</td>
                    <td>RICARDO PUPO LARGUESA</td>
                </tr>
                <tr>
                    <td>ILP512</td>
                    <td>Linguagem de Programação IV - INTERNET</td>
                    <td>JÔNATAS CERQUEIRA DIAS</td>
                </tr>
                <tr>
                    <td>ISO200</td>
                    <td>Sistemas Operacionais II </td>
                    <td>FÁBIO PESSOA DE SÁ</td>
                </tr>
                <tr>
                    <td>TTG001</td>
                    <td>Metodologia da Pesquisa Científico-Tecnológica</td>
                    <td>SABRINA MARTINS BOTO</td>
                </tr>
            </tbody>
        </table>
        <% } else {%>
            Você não tem permissão para acessar esta página, faça login e tente novamente.
        <% } %>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
