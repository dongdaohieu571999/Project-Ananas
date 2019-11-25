<%-- 
    Document   : Detail_Item
    Created on : Jul 15, 2019, 12:25:03 AM
    Author     : Dong Dao Hieu
--%>

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
            Item item = (Item) request.getAttribute("Item");
        %>
    </head>
    <style>
        <c:import url="Home.css"></c:import>
        <c:import url="Detail_Item.css"></c:import>
        </style>
        <body>
        <c:import url="Header.jsp"></c:import>
            <div style="width: 100%;height: fit-content">
                <div id="mainContent" style="text-align: center">
                    <div id="content" style="border:  2px solid #303030">
                        <div style="border: 1px solid #303030;height: 100%;text-align: left;padding: 50px">
                            <p style="font-family: sans-serif;font-weight: bolder;font-size: 40px;color: #000000"><%=item.getName() + " - " + item.getStyle()%></p>
                        <p style="font-family: sans-serif;margin-top: 50px">ID Product: <%=item.getID_Item()%></p>
                        <p style="font-family: sans-serif;margin-top: 50px;color: #F15e2c;font-size: 30px;font-weight: bolder"><%=item.getPrice()%></p>
                        <p style="margin-top: 50px">============================================================</p>
                        <p style="font-family: 'Nunito Sans',sans-serif;margin-top: 50px;color: #000000;font-weight: bold"><%=item.getDesciption()%></p>
                        <p style="margin-top: 50px">============================================================</p>
                        <form action="a/Gio_Hang" method="get" >
                            <input type="hidden" name="ID_Item"  value="<%=item.getID_Item()%>">
                            <div class="row" style="margin-top: 30px">
                                <div class="col-sm-3" style="font-family: sans-serif;font-weight: bold;color:#F15e2c ">SIZE: </div>
                                <div class="col-sm-3">
                                    <select class="form-control" name="size">
                                        <option value="35">35</option>
                                        <option value="36">36</option>
                                        <option value="37">37</option>
                                        <option value="38">38</option>
                                        <option value="39">39</option>
                                        <option value="40">40</option>
                                        <option value="41">41</option>
                                        <option value="42">42</option>
                                        <option value="43">43</option>
                                        <option value="44">44</option>
                                        <option value="45">45</option>
                                        <option value="46">46</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 30px">
                                <div class="col-sm-3" style="font-family: sans-serif;font-weight: bold;color:#F15e2c ">QUANTITY: </div>
                                <div class="col-sm-3">
                                    <select class="form-control" name="soluong">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </div>
                            </div>
                            <button type="submit" class="button button1" style="font-family: sans-serif;font-size: 20px;font-weight: bolder;margin-left: 120px;margin-top: 50px">BUY PRODUCT</button>
                        </form>
                        <p style="margin-top: 50px">============================================================</p>
                        <p style="font-family: 'Nunito Sans',sans-serif;font-weight: bolder;color: #F15e2c;margin-top: 50px;font-size: 20px">INFOMATION OF PRODUCT</p>
                        <p style="color: #000000">- Gender: <%=item.isGender()%><br>- Size run: <%=item.getSize()%><br>- Upper: Synthetic Leather</p>
                        <div style="height: 400px">
                            <img src="https://ananas.vn/wp-content/uploads/Size-chart-1-e1559209680920.jpg" style="max-height: 100%;max-width: 100%">
                        </div>
                    </div>

                </div>
                <div id="sidebar">
                    <img src="<%=item.getUrl()%>" style="width: 100%">
                </div>
            </div>
        </div>
    </div>
    <c:import url="Footer.jsp"></c:import>
</body>
</html>
