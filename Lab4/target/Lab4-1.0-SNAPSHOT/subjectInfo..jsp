<%-- 
    Document   : subjectInfo
    Created on : 24 Apr 2024, 4:24:47 pm
    Author     : Arifah S66428
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>subject info</title>
    </head>
    <body>
        <h1>Calling subjectInfo.jsp page</h1>
        <p>Code: <%=request.getParameter("code")%></p>
        <p>Subject: <%=request.getParameter("subject")%></p>
        <p>Credit: <%=request.getParameter("credit")%></p>
    </body>
</html>