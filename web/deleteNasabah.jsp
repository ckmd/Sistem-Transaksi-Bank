<%-- 
    Document   : deleteNasabah
    Created on : Apr 17, 2018, 7:20:08 AM
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
        <h1>Silahkan mengisi form di bawah ini untuk menghapus nasabah</h1>
        <form action="deleteNasabahLogic.jsp">
            <table>
                <tr>
                    <td>ID Nasabah</td>
                    <td><input type="text" name="idn"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="submit"> submit </button></td>
                </tr>
            </table>
            </form>
    </body>
</html>
