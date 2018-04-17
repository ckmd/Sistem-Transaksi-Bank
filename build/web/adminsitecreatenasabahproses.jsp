<%-- 
    Document   : adminsitecreatenasabahproses
    Created on : Apr 15, 2018, 11:04:16 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Nasabah"%>
<%--<%@page import="service.ServiceNasabah"%>--%>
<%@page import="singleton.SingletonApp"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Registrasi</title>
      <link rel="stylesheet" href="css/style.css">  
</head>
  <body>
    <div id="login">
      <form name='form-login'>
<%
    String id = request.getParameter("idnasabah");
    String user = request.getParameter("usernasabah");
    Long idnasabah = Long.parseLong(id);
    Nasabah nasabah = new Nasabah(idnasabah,user);
    SingletonApp singletonApp = new SingletonApp();
    Nasabah nasabah2 = singletonApp.getServiceNasabah().login(nasabah);
    
    if (nasabah2 == null){
        singletonApp.getInstance().getServiceNasabah().register(nasabah);%>
        <button type="but">Nasabah Berhasil dibuat</button>
    <%} else {%>
        <button type="but">Nasabah Sudah ada</button>
    <%}%>
          <hr>
          <button type="submit"><a href="adminsite.jsp">admin site</a></button>
    </form>
  </body>
</html>

