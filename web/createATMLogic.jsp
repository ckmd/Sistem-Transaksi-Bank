<%-- 
    Document   : createATMLogic
    Created on : Apr 15, 2018, 11:46:26 PM
    Author     : Rachmad
--%>
<%@page import= "singleton.SingletonApp"%>
<%@page import = "model.Tabungan" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Long rekening = Long.parseLong(request.getParameter("rekening"));
    String tipeKartu = "";
    //Long rekening = (Long) session.getAttribute("rekening");
    SingletonApp singletonApp = new SingletonApp();
    
    Long saldo = (Long) session.getAttribute("saldo");
    if(saldo >= 1000){
        tipeKartu = "PLATINUM";        
    }
    else if(saldo >= 300){
        tipeKartu = "GOLD";        
    }
    else{
        tipeKartu = "SILVER";        
    }
    
    singletonApp.getServiceTabungan().createATM(rekening, tipeKartu);
    response.sendRedirect("adminsitecrud.jsp");
%>
