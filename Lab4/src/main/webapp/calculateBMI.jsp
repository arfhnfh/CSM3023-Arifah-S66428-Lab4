<%-- 
    Document   : calculateBMI
    Created on : 26 Apr 2024, 10:36:16 pm
    Author     : Arifah S66428
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Body Mass Index (BMI) Calculator</title>
</head>
<body>
  <h1>BMI Calculator</h1>
  <form action="processCalculateBMI.jsp" method="post">
    <label for="weight">Weight (kg):</label>
    <input type="text" id="weight" name="weight" placeholder="Enter weight">
    <br><br>
    <label for="height">Height (cm):</label>
    <input type="text" id="height" name="height" placeholder="Enter height">
    <br><br>
    <button type="submit">Calculate BMI</button>
  </form>
</body>
</html>

  