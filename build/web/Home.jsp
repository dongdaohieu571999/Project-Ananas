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
            ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
            Integer totalpage = (Integer) request.getAttribute("totalpage");
            Integer pageindex = (Integer) request.getAttribute("pageindex");
            
        %>
        <style>
            <c:import url="Home.css"></c:import>
            </style>
        </head>
        <body>
            <div style="width: 100%;height:100%">
            <c:import url="Header.jsp"></c:import>
            <div style="border: 1px solid #303030;height: fit-content">
                <img src="https://ananas.vn/wp-content/uploads/kv_basas_mobileBanner_4_2019.jpg" style="width: 100%" >
            </div>
            <div style="width: 100%;height: fit-content;">
                <div class="row" style="margin: 0px;padding: 100px">
                    <%for (int i = 0; i < items.size(); i++) {%>
                    <a  onmousemove="" onclick="info(<%=items.get(i).getID_Item()%>)">
                        <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe" style="padding: 30px;text-align: center">
                            <img src="<%=request.getContextPath()+"/"+items.get(i).getUrl()%>" class="img-responsive">
                            <p style="font-family: 'Nunito Sans',sans-serif;font-weight: bolder;color: #000000;font-size: 20px;margin-top: 10px"><%=items.get(i).getName()%></p>
                            <p style="color: #FF5F17;font-family: 'Nunito Sans',sans-serif "><%=items.get(i).getStyle()%></p>
                            <p style="font-family: 'Nunito Sans',sans-serif;font-weight: bolder;font-size:larger "><%=items.get(i).getPrice()%></p>
                        </div>
                    </a>
                    <%}%>
                </div>
            </div>
            <div style="text-align: center">
                <%=HtmlHelper.pager(2, pageindex, totalpage)%>
            </div>
        </div>
        <c:import url="Footer.jsp"></c:import>
    </body>
</html>
<script>
    function info(ID) {
        location.href = "http://localhost:8080/Project_Web_NgoTungSon/Detail_Item?ID=" + ID;
    }
</script>


