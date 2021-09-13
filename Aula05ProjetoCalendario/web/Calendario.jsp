<%-- 
    Document   : Calendario
    Created on : 6 de set. de 2021, 12:04:24
    Author     : yumi-
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 
   <%
    int mes = 0;
    int ano = 2021;
    String mesSelecionado = "Janeiro";
    int count = 1;
        
    try {
            mesSelecionado = String.valueOf(request.getParameter("pMesSelecionado"));
        ano = Integer.parseInt(request.getParameter("pAno"));
        if ("Janeiro".equals(mesSelecionado)){
            mes = 0;
        }
        else if ("Fevereiro".equals(mesSelecionado)){
            mes = 1;
        }
        else if ("Março".equals(mesSelecionado)){
            mes = 2;
        }
        else if ("Abril".equals(mesSelecionado)){
            mes = 3;
        }
        else if ("Maio".equals(mesSelecionado)){
            mes = 4;
        }        
        else if ("Junho".equals(mesSelecionado)){
            mes = 5;
        }
        else if ("Julho".equals(mesSelecionado)){
            mes = 6;
        }
        else if ("Agosto".equals(mesSelecionado)){
            mes = 7;
        }
        else if ("Setembro".equals(mesSelecionado)){
            mes = 8;
        }
        else if ("Outubro".equals(mesSelecionado)){
            mes = 9;
        }
        else if ("Novembro".equals(mesSelecionado)){
            mes = 10;
        }
        else if ("Dezembro".equals(mesSelecionado)){
            mes = 11;
        }      
    } catch (Exception e) {
        
    }
%>

<html>
   <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3><a href="index.html"> Voltar </a></h3>
        <hr>
         
        <h3> <%= mesSelecionado %> </h3>   
        <table border='5'>
            <tr>
                <td>DOM</td>
                <td>SEG</td>
                <td>TER</td>
                <td>QUA</td>
                <td>QUI</td>
                <td>SEX</td>
                <td>SAB</td>
            </tr>
            <%  Calendar cal =  new GregorianCalendar();
                GregorianCalendar gCal = new GregorianCalendar(ano, mes, 1); 
                int days = gCal.getActualMaximum(Calendar.DATE);
                int startInWeek = gCal.get(Calendar.DAY_OF_WEEK);
            
                gCal = new GregorianCalendar(ano, mes, days);
                
                int totalweeks = gCal.getActualMaximum(Calendar.WEEK_OF_MONTH);
                String message=" "; 
                
                for(int i=1; i <= totalweeks; i++){ %>
            <tr> 
                <%  for(int j=1; j <=7; j++){ %>
                <td>
                    <%
                        if (count < startInWeek || (count - startInWeek +1) > days){ 
                            message = " "; 
                        } 
                        else {
                            message = Integer.toString((count - startInWeek +1)); 
                        }
                    %> 
                <%= message %> 
                </td> 
                <% count++; } %>  
            </tr>
            
            <% } %>
        </table>
    <hr>       
    </body>
</html>
