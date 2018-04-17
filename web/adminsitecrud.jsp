<%-- 
    Document   : adminsitecrud
    Created on : Apr 15, 2018, 9:43:11 AM
    Author     : USER
--%>

<%@page import= "model.Nasabah"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "model.Tabungan" %>
<%@page import= "singleton.SingletonApp" %>
<%@page import= "java.util.List" %>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>List Data</title>  
      <link rel="stylesheet" href="cssTable/style.css">  
</head>

<body>
  <section>
  <!--for demo wrap-->
  <h1>List Nasabah</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>ID Nasabah</th>
          <th>Nama Nasabah</th>
          <th>-</th>
          <th>-</th>
          <th>-</th>
        </tr>
      </thead>
    </table>
  </div>
  <%
                SingletonApp singletonApp = new SingletonApp();
                List<Nasabah> listNasabah = singletonApp.getServiceNasabah().findAll();
                
                for(Nasabah na : listNasabah){%>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
          <td><%out.print(na.getId());%></td>
          <td><%out.print(na.getUser());%></td>
          <td>-</td>
          <td>-</td>
          <td>-</td>
        </tr>
          <%}%>
      </tbody>
    </table>
          <button><a href="#">edit</a></button>
          <button><a href="deleteNasabah.jsp">delete</a></button>
  </div>
          
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
  <%
      List<Tabungan> listTabungan = singletonApp.getServiceTabungan().findAll();
      for(Tabungan n : listTabungan){
  %>
<div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
          <td><%out.print(n.getRekening());%></td>
          <td><%out.print(n.getUser());%></td>
          <td><%out.print(n.getPass());%></td>
          <td><%out.println(n.getSaldo());%></td>
          <td><%out.println(n.getTipekartu());%></td>
        </tr>
          <%}%>
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


<!-- follow me template -->
<div class="made-with-love">
  Made with
  <i>♥</i> by Rachmad and Nadjieun
</div>
    <script src="jsTable/index.js"></script>

</body>
</html>