<%-- 
    Document   : op
    Created on : 23-Feb-2023, 3:07:59 pm
    Author     : Pr@tik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="errorHandaling.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>operation Page</title>
    </head>
    <body>
        <%
            String n1 = request.getParameter("n1");
            String n2 = request.getParameter("n2");
            
            int a = Integer.parseInt(n1);
            int b = Integer.parseInt(n2);
            
            int div = a/b;
        %>
        <h2>Division is <%=
            div
            %></h2>
    </body>
</html>
