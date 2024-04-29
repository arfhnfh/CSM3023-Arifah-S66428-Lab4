<%-- 
    Document   : processCalculateBMI
    Created on : 27 Apr 2024, 9:59:02 pm
    Author     : Lenovo
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>BMI Result</title>
</head>
<body>
  <h1>BMI Result</h1>
  <%-- Java code for BMI calculation --%>
  <%
    // Retrieve weight and height parameters from the form
    double weight = Double.parseDouble(request.getParameter("weight"));
    double height = Double.parseDouble(request.getParameter("height"));
    
    // Calculate BMI
    double bmi = weight / Math.pow(height / 100, 2);
    
    // Display the result
    out.println("<p>Your BMI is: " + bmi + "</p>");
  %>
</body>
</html>
