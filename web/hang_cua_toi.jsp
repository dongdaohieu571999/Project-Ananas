<%-- 
    Document   : Gio_Hang
    Created on : Jul 16, 2019, 11:50:09 PM
    Author     : Dong Dao Hieu
--%>

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
            Date date = new Date();
            SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
            String Dat = format.format(date);
            HttpSession session1 = request.getSession();
            String ID_Item = "";
            String size = "";
            String soluong = "";
            Account account=(Account)session.getAttribute("account");
            String hihi = (String) request.getAttribute("ID");
            if (hihi != null) {
                ID_Item = (String) request.getAttribute("ID");
                size = (String)request.getAttribute("size");
                soluong = (String) request.getAttribute("soluong");
            } else {
                ID_Item = (String) session1.getAttribute("IDSession");
                size = (String) session1.getAttribute("sizeSession");
                soluong = (String) session1.getAttribute("SoLuongSession");
            }
            
            Item item = new Data.DataBase().getItemClick(ID_Item);
            int tongtien=Integer.parseInt(item.getPrice().substring(0, 3) + "000") * Integer.parseInt(soluong);
        %>
    </head>
    <style>
        <c:import url="Home.css"></c:import>
        <c:import url="Detail_Item.css"></c:import>
        </style>
        <body>
        <c:import url="Header.jsp"></c:import>
            <div>
                <div style="width: 100%;height:400px;margin-top: 100px">
                    <div id="mainContent" style="text-align: center;height: 250px">
                        <div id="content" style="border:  2px solid #303030;height: 400px;width: 30%;text-align: left;padding: 20px;background-color: #f1f1f1">
                            <p style="font-size: 20px;font-weight: bold">ORDER</p>
                            <p>==================================================</p>
                            <table style="width: 100%;line-height: 30px">
                                <tr>
                                    <td style="font-family: sans-serif;color: #808080;font-size: 20px">Order:</td>
                                    <td style="float: right;font-size: 20px"><%=Integer.parseInt(item.getPrice().substring(0, 3) + "000") * Integer.parseInt(soluong) + "  VND"%><td>
                                </tr>
                                <tr>
                                    <td style="font-family: sans-serif;color: #808080;font-size: 20px">Order Time: </td>
                                    <td style="float: right;font-size: 20px"><%=Dat%></td>
                                </tr>
                        </table>
                                <p style="margin-top: 10px">==================================================</p>
                        <table style="width: 100%;margin-top: 40px">
                            <tr style="background-color: #f15e2c;vertical-align: central">
                                <td style="font-family: sans-serif;color: #ffffff;font-size: 20px;font-weight: bold;padding-top: 10px;padding-bottom: 10px">SUM</td>
                                <td style="float: right;font-family: sans-serif;color: #ffffff;font-size: 20px;font-weight: bold;padding-top: 10px;padding-bottom: 10px"><%=Integer.parseInt(item.getPrice().substring(0, 3) + "000") * Integer.parseInt(soluong) + "  VNĐ"%></td>
                            </tr>
                        </table>
                            <div style="text-align: center;margin-top: 50px">
                                <a href=<%=request.getContextPath()+"/Them_vao_gio_Hang?ID_User="+account.getID_User()+"&ID_Item="+ID_Item+"&So_Luong="+soluong+"&Size="+size+"&Tong_Tien="+tongtien+"&Ngay_Mua="+Dat%>><button class="button button1" type="submit">ORDER NOW</button></a>
                            </div>
                    </div>
                    <div id="sidebar" style="border:  1px solid #303030;width: 60%">
                        <img src="<%=request.getContextPath()+"/"+item.getUrl()%>" style="max-width: 100%;max-height: 100%;float: left">
                        <div style="float: left;margin-left: 20px;margin-top: 17px;text-align: left;width: 50%">
                            <p style="font-family: sans-serif;font-weight: bolder;font-size: 25px"><%=item.getName() +" "+ item.getStyle()%></p><br>
                            <p style="font-weight: bold;font-size: 20px;color: #808080">Price: <%=item.getPrice()%></p><br><br>
                            <p style="font-weight: bold;font-size: 20px;color: #f15e2c">Size: <%=size%><span style="margin-left: 100px">Quantity: <%=soluong%></span></p>
                        </div>
                        <div style="float: left;margin-left: 20px;margin-top: 17px;text-align: left;">
                            <p style="font-size: 25px;font-weight: bolder;color: #f15e2c"><%=item.getPrice()%></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:import url="Footer.jsp"></c:import>
    </body>
</html>
