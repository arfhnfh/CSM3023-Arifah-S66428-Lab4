<%-- 
    Document   : processInsuranceQuo
    Created on : 26 Apr 2024, 1:59:36 pm
    Author     : Arifah S66428
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>process insurance quo</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        legend {
            font-size: 20px;
            font-weight: bold;
        }

        p {
            color: blueviolet;
        }
    </style>
</head>
<body>
<%
    String icNo = request.getParameter("icno");
    String name = request.getParameter("name");
    String marketPriceStr = request.getParameter("marketprice");
    String coverage = request.getParameter("coverage-type");
    String ncd = request.getParameter("ncd");
    double amount = 0.00;
    double gst = 0.00;
    double finalAmount = 0.00;
    String strCoverage = "";
    String strNCD = "";
    int marketPrice = 0;

    if (marketPriceStr != null && !marketPriceStr.isEmpty()) {
        marketPrice = Integer.parseInt(marketPriceStr);

        switch (coverage) {
            case "1":
                strCoverage = "Third Party";
                switch (ncd) {
                    case "10":
                        strNCD = "10%";
                        amount = 0.033 * marketPrice;
                        break;
                    case "25":
                        strNCD = "25%";
                        amount = 0.025 * marketPrice;
                        break;
                    case "35":
                        strNCD = "35%";
                        amount = 0.018 * marketPrice;
                        break;
                    case "55":
                        strNCD = "55%";
                        amount = 0.012 * marketPrice;
                        break;
                }
                break;
            case "2":
                strCoverage = "Comprehensive";
                switch (ncd) {
                    case "10":
                        strNCD = "10%";
                        amount = 0.038 * marketPrice;
                        break;
                    case "25":
                        strNCD = "25%";
                        amount = 0.030 * marketPrice;
                        break;
                    case "35":
                        strNCD = "35%";
                        amount = 0.024 * marketPrice;
                        break;
                    case "55":
                        strNCD = "55%";
                        amount = 0.018 * marketPrice;
                        break;
                }
                break;
        }

        gst = 0.06 * amount;
        finalAmount = amount + gst;
    }
%>

<fieldset>
    <legend>Details of Insurance Quotation</legend>
    <p>IC No: <%= icNo %></p>
    <p>Customer Name: <%= name %></p>
    <p>Market Price: <%= marketPrice %></p>
    <p>Coverage Type: <%= strCoverage %></p>
    <p>No Claim Discount (NCD): <%= strNCD %></p>
    <p>Insurance Amount: <%= String.format("%.2f", amount) %></p>
    <p>6% GST: <%= String.format("%.2f", gst) %></p>
    <p>Final Amount (with 6% GST): <%= String.format("%.2f", finalAmount) %></p>
</fieldset>
</body>
</html>
