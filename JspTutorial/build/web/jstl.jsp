<%-- 
    Document   : jstl
    Created on : 23-Feb-2023, 7:10:01 am
    Author     : Pr@tik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page errorPage="errorpage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example of taglib directive</title>
    </head>
    <body>
        <h1>taglib directive tutorial!</h1>
        <hr>
        <c:set var="name" value="pratik bharmal"></c:set> 

        <c:out value="${name}"></c:out>


        <%! 
            int a = 10;
            int b = 0;
            
        %>

        <%
               int div = a/b; 
        %>
        
        <h2>Division is <%=div%></h2>
        
    </body>
</html>
