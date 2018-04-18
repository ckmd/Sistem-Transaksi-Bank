<%-- 
    Document   : transaksionline_transfer
    Created on : Apr 15, 2018, 9:51:24 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Online)</title>
        <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cssTable/style.css">
    </head>
    <body>
        <h1>Selamat Datang di Bank Krut</h1>
        <h1>isi form untuk transfer online</h1>
        <br>
        <div id="login">
        <form action="transaksionline_transferproses.jsp">
            <table>
                <tr>
                    <td><input type="text" name="rektujuan" placeholder="Rek. Tujuan"></td>
                </tr>
                <br>
                <tr>
                    <td><input type="text" name="uangtransfer" placeholder="nominal"></td>
                </tr>
            </table>
            <button type="submit">Kirim</button>
        </form>
            </div>
    </body>
</html>
