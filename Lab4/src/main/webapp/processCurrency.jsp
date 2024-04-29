<%-- 
    Document   : processCurrency
    Created on : 24 Apr 2024, 3:46:05 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>process currency</title>
    </head>
    <body>
        <header>
            <h1>Use JSP Declaration Tag, JSP Scriplet, and JSP Expression in Application</h1>
        </header>

        <%!
            //Define constant..
            final double USD = 4.75;
            final double STG = 5.94;
            final double EURO = 5.09;

            //Define method to perform currency exchange....
            private double calculateRate(String currency, int amount) {
                double currencyChange = 0.00f;

                switch (currency) {
                    case "1" :
                        currencyChange = (double) (amount * USD);
                        break;
                    
                    case "2" :
                        currencyChange = (double) (amount * STG);
                        break;

                    case "3" :
                        currencyChange = (double) (amount * USD);
                        break;
                }

                return currencyChange; //return the result....
            }
        %>

        <%
            int amount = Integer.parseInt(request.getParameter("amount"));
            String currency = request.getParameter("currency");
            String strCurrency = "";
            String result = String.format("%.2f", calculateRate(currency, amount));

            switch (currency) {
                case "1" :
                    strCurrency = "USD";
                    break;
                
                case "2" :
                    strCurrency = "Pound Sterling";
                    break;

                case "3" :
                    strCurrency = "Euro";
                    break;
            }
        %>
        <h2>Amount in Ringgit Malaysia is RM <%=String.format("%.2f", (double) amount)%>.</h2>
        <h2>Amount in <%=strCurrency%> is RM <%=result%>.</h2>

    </body>
</html>