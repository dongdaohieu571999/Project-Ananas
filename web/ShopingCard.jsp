<%-- 
    Document   : Gio_Hang
    Created on : Jul 16, 2019, 11:50:09 PM
    Author     : Dong Dao Hieu
--%>

<%@page import="Model.Item_User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Account"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans&display=swap" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <title>JSP Page</title>
        <%
            ArrayList<Item_User> list = (ArrayList<Item_User>) request.getAttribute("list");
        %>
    </head>
    <style>
        <c:import url="Home.css"></c:import>
        <c:import url="Detail_Item.css"></c:import>
        </style>
        <body>
        <c:import url="Header.jsp"></c:import>
            <div style="text-align: center">
                <h1 style="color: #4CAF50;font-weight: bold">YOUR PRODUCT</h1>
                <div class="container" >
                    <div class="list-group" style="width: 100%;height: 100%">
                    <%for (int i = 0; i < list.size(); i++) {
                            Item item = new Data.DataBase().getItemClick(list.get(i).getID_Item());
                    %>
                    <div class="list-group-item active" style="width: 100%;height: 100px;margin-top: 20px">
                        <img src="<%=item.getUrl()%>" style="max-width: 100%;max-height: 100%;float: left">
                        <div style="float: left;margin-left: 20px;text-align: left;width: 500px">
                            <p><%=item.getName()%></p>
                            <p>QUANTITY: <%=list.get(i).getSoLuong()%></p>
                            <p>SIZE: <%=list.get(i).getSize()%></p>
                        </div>
                        <div style="float: left;margin-left: 20px;text-align: left">
                            <p>TIME ORDER: <%=list.get(i).getNgayMua()%></p>
                            <p>TOTAL: <%=list.get(i).getTongTien()%> VND</p>
                        </div>
                        <div style="float: right">
                            <form action="Them_vao_gio_Hang" method="post">
                                <input type="hidden" value="<%=list.get(i).getID()%>" name="ID_DELETE">
                                <button type="submit" class="btn btn-danger">DELETE</button>
                            </form>
                        </div>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>
        <c:import url="Footer.jsp"></c:import>
    </body>
</html>
