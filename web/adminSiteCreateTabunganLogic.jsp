<%-- 
    Document   : adminSiteCreateTabunganLogic
    Created on : Apr 15, 2018, 11:08:42 AM
    Author     : Rachmad
--%>

<%@page import= "singleton.SingletonApp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.Tabungan" %>
<!DOCTYPE html>
<%
    String id = request.getParameter("rekening");
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    String saldo = request.getParameter("saldo");
    String idNasabah = request.getParameter("idnasabah");
    
    SingletonApp singletonApp = new SingletonApp();
    Tabungan tabungan = new Tabungan(Long.parseLong(id),user,Integer.parseInt(pass),Long.parseLong(saldo),Long.parseLong(idNasabah));
    
    singletonApp.getServiceTabungan().register(tabungan);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrasi Tabungan</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="cssTable/style.css">  

    </head>
    <body>
        <h1>Registrasi sukses</h1>
        <div id="login">
            <form name='form-login' action="adminSiteCreateTabunganLogic.jsp">
            <table>
                <tr>
                    <td><input type="text" name="rekening" placeholder=<% out.print(tabungan.getRekening()); %>></td>
                </tr>
                <tr>
                    <td><input type="text" name="user" placeholder=<% out.print(tabungan.getUser()); %>></td>
                </tr>
                <tr>
                    <td><input type="text" name="pass" placeholder=<% out.print(tabungan.getPass()); %>></td>
                </tr>
                <tr>
                    <td><input type="text" name="saldo" placeholder=<% out.print(tabungan.getSaldo()); %>></td>
                </tr>
                <tr>
                    <td><button type="submit"><a href="adminsite.jsp">back to admin site</a></button></td>
                </tr>
            </table>
            </form>
        </div>
    </body>
</html>