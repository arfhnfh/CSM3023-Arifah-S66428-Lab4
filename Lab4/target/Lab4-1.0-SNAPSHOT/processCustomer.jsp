<%-- 
    Document   : processCustomer
    Created on : 24 Apr 2024, 2:59:48 pm
    Author     : Arifah S66428
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>process customer</title>
</head>
<body>
    <h1> Use JSP Scriptlet and JSP Expression in application</h1>
    <%
        final int price = 10;
        
        String cust_no1 = request.getParameter("cust_no");
        int quantity1 = Integer.parseInt(request.getParameter("quantity"));
        String cust_type1 = request.getParameter("cust_type");
        
        if (cust_type1 != null && quantity1 > 100) {
            if (cust_type1.equals("1")) {
                out.print("You're entitled to a 10% discount.<br>");
                out.print("Total amount is RM" + quantity1 * price * 0.9);
            } else if (cust_type1.equals("2")) {
                out.print("You're entitled to a 25% discount.<br>");
                out.print("Total amount is RM" + quantity1 * price * 0.75);  
            } else {
                out.print("Invalid customer type.");
            }
        } else {
            out.print("You're not entitled to a discount.<br>");
            out.print("Total amount is RM" + quantity1 * price);
        }
    %>
</body>
</html>
