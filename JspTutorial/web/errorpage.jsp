<%-- 
    Document   : errorpage
    Created on : 23-Feb-2023, 7:56:51 am
    Author     : Pr@tik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry Something went wrong..</title>
        <style>
            *{
                padding: 0;
                margin: 0;
            }
        </style>
    </head>
    <body>
        <div style="color: red; background-color: powderblue; padding: 40px;">
            <h1>Sorry!! Something went wrong....</h1><br><br>
            <p><%=exception%></p>
        </div>

    </body>
</html>
