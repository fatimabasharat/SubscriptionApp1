<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="org.mypackage.sub.MySubscription"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Subscription Details</title>
</head>
<body>
		<jsp:useBean id="amountbean" scope="session" class="org.mypackage.sub.MySubscription" />
        <jsp:setProperty name="amountbean" property="amount" />
        <label>Amount: $<jsp:getProperty name="amountbean" property="amount" /></label>
        <br>
        <jsp:useBean id="typebean" scope="session" class="org.mypackage.sub.MySubscription" />
        <jsp:setProperty name="typebean" property="type" />
        <label>Subscription Type: <jsp:getProperty name="typebean" property="type" /></label>
        <br>
        <jsp:useBean id="sdatebean" scope="session" class="org.mypackage.sub.MySubscription" />
        <jsp:setProperty name="sdatebean" property="sdate" />
        <jsp:getProperty name="sdatebean" property="sdate" />
        <label>Invoice Dates: </label>
        
        <jsp:useBean id="edatebean" scope="session" class="org.mypackage.sub.MySubscription" />
        <jsp:setProperty name="edatebean" property="edate" />
        <jsp:getProperty name="edatebean" property="edate" />
        
</body>
</html>