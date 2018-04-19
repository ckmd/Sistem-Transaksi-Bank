<%-- 
    Document   : editTabunganLogic
    Created on : Apr 15, 2018, 8:37:38 PM
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
    
    SingletonApp singletonApp = new SingletonApp();
    Tabungan tabungan = new Tabungan(Long.parseLong(id),user,Integer.parseInt(pass));
    
    singletonApp.getServiceTabungan().update(Long.parseLong(id), tabungan, user, Integer.parseInt(pass));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Tabungan</title>
        <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cssTable/style.css">
    </head>
    <body>
        <h1>Edit sukses</h1>
        <div id="login">
            <form>
        <table>
            <tr>
                <td>Rekening</td>
                <td><% out.print(tabungan.getRekening()); %></td>
            </tr>
            <tr>
                <td>User</td>
                <td><% out.print(tabungan.getUser()); %></td>
            </tr>
            <tr>
                <td>Pass</td>
                <td><% out.print(tabungan.getPass()); %></td>
            </tr>
            <tr>
                <td>
                            <button type="but"> <a href="adminsite.jsp">back to admin site</a></button>
                </td>
            </tr>
        </table>
            </form>
        </div>
    </body>
</html>