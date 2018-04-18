<%-- 
    Document   : transaksioffline_transfer
    Created on : Apr 16, 2018, 7:03:42 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Offline)</title>
        <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cssTable/style.css">
    </head>
    <body>
        <h1>Silahkan mengisi form di bawah ini untuk transfer</h1>
        <div id="login">
        <form action="transaksioffline_transferproses.jsp">
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
