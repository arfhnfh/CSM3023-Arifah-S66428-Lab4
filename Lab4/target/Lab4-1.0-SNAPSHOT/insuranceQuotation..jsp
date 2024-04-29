<%-- 
    Document   : insranceQuotation
    Created on : 25 Apr 2024, 3:45:20 pm
    Author     : Arifah S66428
--%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insurance Quotation</title>
    <style>
            span {
                color: red;
            }
        </style>
</head>
<body>
    <h1>Insurance Quotation</h1>
    <form action="processInsuranceQuo.jsp">
    <section id="insurance-calculation">
        <fieldset>
            <legend>Insurance Calculation</legend>
            <form id="quote-form">
                <label for="icno">ICNo<span>*</span>:</label>
                <input type="text" id="icno" name="icno" placeholder="Eg 821210-05-3478">
                <br><br>
                <label for="name">Name<span>*</span>:</label>
                <input type="text" id="name" name="name" placeholder="Enter name">
                <br><br>
                <label for="market-price">Market Price<span>*</span>:</label>
                <input type="text" id="marketprice" name="marketprice" placeholder="Price">
                <br><br>
                <label for="coverage-type">Coverage Type<span>*</span>:</label>
                <select id="coverage-type" name="coverage-type">
                    <option value="1">Third Party</option>
                    <option value="2">Comprehensive</option>
                </select>
                <br><br>
                <label for="ncd">No Claims Discount (NCD):</label>
                <select id="ncd" name="ncd">
                    <option value="10">10%</option>
                    <option value="25">25%</option>
                    <option value="35">35%</option>
                    <option value="55">55%</option>
                </select>
                <br><br>
                <button type="submit">Submit</button>
                <button type="button">Cancel</button>
            </form>
        </fieldset>
    </section>
</body>
</html>
