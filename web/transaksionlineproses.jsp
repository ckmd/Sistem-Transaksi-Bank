<%-- 
    Document   : transaksionlineproses
    Created on : Apr 15, 2018, 10:19:56 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="model.TransaksiOnline"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Teller)</title>
        <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cssTable/style.css">
    </head>
    <body>
<%
    String user = request.getParameter("username");
    int pass = Integer.parseInt(request.getParameter("password"));
    Tabungan tabungan = new Tabungan(0L, user, pass, 0L);
    TransaksiOnline transaksi = new TransaksiOnline(tabungan);
    
    if (transaksi.login(user, pass)){
        session.setAttribute("tabungan", transaksi.getTabungan());
        response.sendRedirect("transaksionlinemenu.jsp");
    } else {
%>
        <h1>User Tidak Ada atau Password Salah</h1>
        <br>
        <h1>Silahkan mengulang kembali</h1>
        <br>
        <div id="login">
        <form>
            <button type="submit"><a href="transaksionline.jsp">Kembali</a></button>
        </form>
        </div>
<%    
    }
%>

    </body>
</html>
