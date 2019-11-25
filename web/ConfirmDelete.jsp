<%-- 
    Document   : Home
    Created on : Jul 10, 2019, 10:27:36 PM
    Author     : Dong Dao Hieu
--%>
<%@page import="util.HtmlHelper"%>
<%@page import="java.util.ArrayList"%>
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
        <title>Ananas - DiscoverYOU</title>
        <%
            String ID = (String) request.getAttribute("ID");
            Item item = new Data.DataBase().getItemClick(ID);
        %>
        <style>
            <c:import url="Home.css"></c:import>
            <c:import url="Detail_Item.css"></c:import>
            </style>
        </head>
        <body>
            <div style="width: 100%;height:100%">
            <c:import url="Header.jsp"></c:import>
                <div style="width: 100%;height: fit-content;">
                    <div id="mainContent" style="text-align: center;height: 250px">
                        <div id="content" style="border:  2px solid #303030;width: 70%;text-align: left;padding: 30px;background-color: #f1f1f1">
                            <div style="float: left;line-height: 30px;margin-top: 10px;width: 50%">
                                <p style="font-family: sans-serif;font-size: 30px;color: #303030;font-weight: bold"><%=item.getName() + " " + item.getStyle()%></p>
                            <p style="font-family: sans-serif;font-size: 20px;color: #f15e2c"><%="PRODUCT ID: " + item.getID_Item()%></p>
                            <p style="font-family: sans-serif;font-size: 20px;color: #f15e2c"><%="PRICE: " + item.getPrice()%></p>
                            <p style="font-family: sans-serif;font-size: 20px;color: #f15e2c"><%="TIME PRODUCT UPLOAD: " + item.getDate_Add()%></p>
                        </div>
                        <div style="float: left;margin-left: 50px;margin-top: 30px;margin-left: 150px">
                            <form method="post" action="DELETE">
                                <a><button onclick="myFunction()" type="submit" class="btn btn-danger" style="width: 300px;height: 50px">DELETE</button><input hidden="hihi" name="ID" value="<%=item.getID_Item()%>"></a><br><br>
                                <a href="<%=request.getContextPath() + "/Modify"%>"><button type="button" class="btn btn-success" style="width: 300px;height: 50px" >CANCEL</button></a>
                            </form>
                        </div>
                    </div>
                    <div id="sidebar" style="width: 20%">
                        <img src="<%=item.getUrl()%>" style="max-width: 100%;max-height: 100%">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <c:import url="Footer.jsp"></c:import>
</body>
</html>
<script>
function myFunction() {
  alert("DELETE SUCCESSFULY!");
}
</script>