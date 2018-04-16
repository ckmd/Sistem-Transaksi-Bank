<%-- 
    Document   : transaksiofflineatm
    Created on : Apr 16, 2018, 12:28:30 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="singleton.SingletonApp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Online)</title>
    </head>
    <body>
<%
    Long norek = Long.parseLong(request.getParameter("norek"));
    int pass = Integer.parseInt(request.getParameter("password"));
    SingletonApp singleton = new SingletonApp();
    Tabungan tabungan = new Tabungan(norek,"user",pass,0);
    if (singleton.getServiceTabungan().login(tabungan) != null){%>
    
        <h1>Silahkan Memilih Transaksi</h1>
        <br>
        <form>
            <button><a href="transaksionline_transfer.jsp">Transfer</a></button>
            <button><a href="transaksionline_ceksaldo.jsp">Cek Saldo</a></button>
        </form>
    
<%    
    } else if(singleton.getServiceTabungan().findByUser(tabungan) == null){
%>
    
        <h1>User Tidak Ada</h1>
        <br>
        <h5>Silahkan mengulang kembali</h5>
        <br>
        <form>
            <button><a href="transaksionline.jsp">Kembali</a></button>
        </form>
<%    
    }
%>
    </body>
</html>
