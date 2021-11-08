<%-- 
    Document   : index
    Created on : 8 de nov. de 2021, 17:09:13
    Author     : yumi-
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db.Tasks"%>
<%@page import="web.DbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link  rel="stylesheet" 
       href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
       integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
       crossorigin="anonymous">
<%
    Exception requestException = null;
    ArrayList<String> taskList = new ArrayList<>();
    try {
        if(request.getParameter("add") != null){
            String taskName = request.getParameter("taskName");
            Tasks.addTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("remove") != null){
            String taskName = request.getParameter("taskName");
            Tasks.removeTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        taskList = Tasks.getTasks();
        } catch (Exception ex) {
            requestException = ex;
        }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - To Do List</title>
    </head>
    <body>
        <div class="card">
            <div class="card-body">
                <h1>JDBC - Natasha Yumi</h1>
                <div style="color:gray">
                    <%= new java.util.Date()%>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-body">
                <h2>To-do List</h2>
                <% if (DbListener.exception != null) {%>
                <div style="color:red">
                    Erro na criação do banco de dados:
                    <%= DbListener.exception.getMessage()%>
                </div>
                <% } %>
                <% if (requestException != null) {%>
                <div style="color:red">
                    Erro na leitura ou gravação de tarefas:
                    <%= requestException.getMessage()%>
                </div>
                <% } %>
                <form>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Digite a descrição da tarefa" aria-describedby="basic-addon2" name="taskName">
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="submit" name="add">Adicionar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
                
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Sua lista de tarefas</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <% for (String taskName : taskList) {%>
                <tr>
                    <td><%= taskName%></td>
                    <td>
                        <form>
                            <input type="hidden" name="taskName" value="<%= taskName%>"/>
                            <input type="submit" name="remove" value="-"/>
                        </form>
                    </td>
                </tr>
                <% }%>
            </tbody>
        </table>
    </body>
</html>
