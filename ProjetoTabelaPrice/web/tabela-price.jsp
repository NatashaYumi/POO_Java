<%-- 
    Document   : tabela-price
    Created on : 13 de set. de 2021, 15:55:26
    Author     : yumi-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage = null;
    
    double  valorEmprestimo = 0,
            taxaJuros       = 0,
            pmt             = 0,
            juros           = 0,
            amortizacao     = 0,
            saldoDevedor    = 0,
            tempo = 0;
       
    try {
            valorEmprestimo = Double.parseDouble(request.getParameter("valor_presente"));
            saldoDevedor    = valorEmprestimo;
        } catch (Exception e) {
            errorMessage = "Erro ao ler parâmetro 'valor presente': " + request.getParameter("valor_presente");
        }
    try {
            taxaJuros = Double.parseDouble(request.getParameter("taxa_juros"));
        } catch (Exception e) {
            errorMessage = "Erro ao ler parâmetro 'taxa juros': " + request.getParameter("taxa_juros");
        }
    try {
            tempo = Double.parseDouble((request.getParameter("numero_periodos")));
        } catch (Exception e) {
            errorMessage = "Erro ao ler parâmetro 'tempo' " + request.getParameter("numero_periodos");
        }
    try {
            pmt =  Math.round((valorEmprestimo*(taxaJuros/100))/(1-(1/(Math.pow((1+0.03),tempo)))));
        } catch (Exception e) {
            errorMessage = "Erro ao calcular parcelas";
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <form action="tabela-price.jsp">
             <table>
                <tr>
                    <td><label for='valor'> Valor (R$) </label></td>
                    <td><input type="number" name="valor_presente" step="0.01" placeholder="Valor a ser calculado"></td>
                </tr>
                <tr>
                    <td><label for='taxa'> Taxa (%) </label></td>
                    <td><input type="number" name="taxa_juros" value="" placeholder="Taxa de juros"></td>
                </tr>
                <tr>
                    <td><label for='tempo'> Tempo </label></td>
                    <td><input type="number" name="numero_periodos" value="" placeholder="Quantidade de meses"></td>
                </tr>
                <tr>
                <td><input type="submit" value="Calcular"/></td>
                </tr>
            </table>
        </form>
        
        <table border='5'>
            <tr>
                <td>PERIODO</td>
                <td>SALDO DEVEDOR</td>
                <td>PARCELA</td>
                <td>JUROS</td>
                <td>AMORTIZAÇÃO</td>
            </tr>
            <%  int i = 0;
                while(Math.round(saldoDevedor) > 0){
            %>
            <tr> 
                <% if (i == 0){ %>
                <td> <%= i %> </td> 
                <td> <%= valorEmprestimo %> </td> 
                <td>  </td> 
                <td>  </td> 
                <td>  </td> 
                <% }else {
                    juros = (saldoDevedor * (taxaJuros/100));
                    amortizacao = pmt - juros;
                    saldoDevedor = (saldoDevedor - amortizacao);
                %>
                <td> <%= i %> </td> 
                <td> <%= saldoDevedor %> </td> 
                <td> <%= pmt %> </td> 
                <td> <%= juros %> </td> 
                <td> <%= amortizacao %> </td> 
                <% } %>
            </tr>
            <% i++;
               } %>
        </table>
        
        <h3><a href="index.jsp">Voltar</a></h3>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
