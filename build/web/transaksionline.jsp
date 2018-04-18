<%-- 
    Document   : transaksionline
    Created on : Apr 15, 2018, 9:20:25 PM
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
        <h1>Silakan isi untuk login Online</h1>
        <br>
        <div id="login">
        <form name='form-login' action="transaksionlineproses.jsp">
        <table>
            <tr>
                <td><input type="text" name="username" placeholder="Username"></td>
            </tr>
            <tr>
                <td><input type="text" name="password" placeholder="Password"></td>
            </tr>
        </table>
            <button type="submit">Login</button>
        </form>
        </div>
    </body>
</html>
