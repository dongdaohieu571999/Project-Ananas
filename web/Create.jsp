<%-- 
    Document   : Home
    Created on : Jul 10, 2019, 10:27:36 PM
    Author     : Dong Dao Hieu
--%>
<%@page import="util.HtmlHelper"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Item"%>
<%@page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans&display=swap" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <title>Ananas - DiscoverYOU</title>
        <style>
            <c:import url="Home.css"></c:import>

            </style>
        </head>
    <%
        String notification = (String) request.getAttribute("notification");
    %>
    <body>
        <div style="width: 100%;height:100%">
            <c:import url="Header.jsp"></c:import>
                <div style="width: 100%;height: fit-content;margin-top: 100px;text-align: center">
                <%if (notification != null) {%>
                <h3 style="font-weight: bold;color: green">ADDING PRODUCT SUCESSFULY!</h3>
                <%}%>
                <form action="Create" method="post" enctype="multipart/form-data">
                    <table style="width:500px;height: 400px;margin-top: 100px;margin: 0 auto">
                        <tr>
                            <td>
                                <label for="uname"><b style="font-family: sans-serif">PRODUCT NAME: </b></label></td>
                            <td>
                                <input type="text" placeholder="PRODUCT NAME" name="tensanpham" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="psw"><b style="font-family: sans-serif">PRICE: </b></label></td>
                            <td>
                                <input type="text" placeholder="PRICE" name="giaca" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label><b style="font-family: sans-serif">STYLE: </b></label>
                            </td>
                            <td>
                                <input type="text" placeholder="STYLE" name="kieu" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label><b style="font-family: sans-serif">SIZE:</b></label>
                            </td>
                            <td>
                                <input type="text" placeholder="SIZE" name="kichco" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="psw"><b style="font-family: sans-serif">DESCRIPTION: </b></label>
                            </td>
                            <td>
                                <textarea type="text" placeholder="DESCRIPTION" name="mota" required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="psw"><b style="font-family: sans-serif">UPLOAD TIME: </b></label>
                            </td>
                            <td>
                                <input type="date" name="date" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="psw"><b style="font-family: sans-serif">GENDER: </b></label>
                            </td>
                            <td>
                                <select name="gioitinh">
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="psw"><b style="font-family: sans-serif">UPLOAD PHOTO PRODUCT</b></label>
                            </td>
                            <td>
                                <input type="file" name="uploadFile" required>
                            </td>
                        </tr>
                    </table>
                    <div style="margin-top: 30px">
                        <button type="submit" class="button button1">ADD PRODUCT</button>
                    </div>
                </form>
            </div>
        </div>
        <c:import url="Footer.jsp"></c:import>
    </body>
</html>