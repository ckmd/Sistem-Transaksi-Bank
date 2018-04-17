<%-- 
    Document   : deleteNasabahLogic
    Created on : Apr 17, 2018, 7:23:32 AM
    Author     : Rachmad
--%>

<%@page import= "model.Nasabah"%>
<%@page import= "singleton.SingletonApp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Long id = Long.parseLong(request.getParameter("idn"));
    
    SingletonApp singletonApp = new SingletonApp();
    Nasabah nasabah = new Nasabah(id);
    
    singletonApp.getServiceNasabah().delete(nasabah);
    response.sendRedirect("adminsitecrud.jsp");
%>
