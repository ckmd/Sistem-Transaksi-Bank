<%-- 
    Document   : adminsitecreateatmproses
    Created on : Apr 15, 2018, 12:53:42 PM
    Author     : USER
--%>

<%@page import="model.Nasabah"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "model.KartuATM" %>
<%--<%@page import="service.ServiceNasabah"%>--%>
<%@page import="singleton.SingletonApp"%>
<!DOCTYPE html>
<%
    String tipe = request.getParameter("tipekartu");
    KartuATM kartuATM = new KartuATM(KartuATM.TipeKartu);
    
    SingletonApp singletonApp = new SingletonApp();
    
    if (nasabah2 == null){
        singletonApp.getInstance().getServiceNasabah().register(nasabah);
        out.print("Nasabah telah dibuat");
    } else {
        out.print("Nasabah sudah ada");
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut</title>
    </head>
    <body>
        <h1>Register Nasabah</h1>
        <button><a href="adminsitecreate.jsp">Buat</a></button>
    </body>
</html>
