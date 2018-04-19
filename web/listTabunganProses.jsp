<%-- 
    Document   : listTabunganProses
    Created on : Apr 19, 2018, 12:14:54 PM
    Author     : Rachmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Tabungan Nasabah</title>
        <link rel="stylesheet" href="cssTable/style.css">  
    </head>
    <body>
        
        <section>
        <h1>List Tabungan</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
            <th>ID</th>
            <th>NAMA</th>
            <th>PASS</th>
            <th>SALDO</th>
            <th>ATM</th>
        </tr>
      </thead>
    </table>
  </div>

<div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
          <tr>
                <td><button><a href="editTabungan.jsp">edit</a></button></td>
                <td><button><a href="deleteTabungan.jsp">delete</a></button></td>
                <td><button><a href="createATM.jsp">create atm</a></button></td>
          <td><button><a href="adminsite.jsp">admin site</a></button></td>
          <td>-</td>
            </tr>
      </tbody>
    </table>
  </div>        
          </section>
    </body>
</html>
