<%-- 
    Document   : editTabungan
    Created on : Apr 15, 2018, 8:26:51 PM
    Author     : Rachmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Silahkan mengisi form di bawah ini untuk mengedit tabungan</h1>
        <form action="editTabunganLogic.jsp">
            <table>
                <tr>
                    <td>No. Rekening</td>
                    <td><input type="text" name="rekening"></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="user"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="pass"></td>
                </tr>
                <tr>
                    <td>Saldo</td>
                    <td><input type="text" name="saldo"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="submit"> submit </button></td>
                </tr>
            </table>
            </form>
    </body>
</html>
