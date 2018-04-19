<%-- 
    Document   : deleteNasabahLogic
    Created on : Apr 17, 2018, 7:23:32 AM
    Author     : Rachmad
--%>

<%@page import= "model.Nasabah, model.Tabungan"%>
<%@page import= "singleton.SingletonApp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.List" %>
<!DOCTYPE html>
<%
    Long id = Long.parseLong(request.getParameter("idn"));
    
    SingletonApp singletonApp = new SingletonApp();
    Nasabah nasabah = new Nasabah(id);
    
    List<Tabungan> listTabungan = singletonApp.getServiceTabungan().findAll();
    for(Tabungan n : listTabungan){
        if (n.getIdNasabah() == id){
            singletonApp.getServiceTabungan().delete(n);
        }
    }
    singletonApp.getServiceNasabah().delete(nasabah);
    response.sendRedirect("adminsitecrud.jsp");
%>
