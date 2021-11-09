<%-- 
    Document   : pagina
    Created on : 09/11/2021, 11:25:57
    Author     : Regulo R Luna Aponte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String saludo = "Hola";
            String nombre = "Regulo";
            
        %>
        <h1>Mi página jsp!</h1>
        <p><%= new java.util.Date()
       
            
            %></p>
        <p><%=saludo + " " + nombre%></p>
    </body>
</html>
