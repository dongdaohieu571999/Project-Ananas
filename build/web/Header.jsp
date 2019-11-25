<%-- 
    Document   : Header
    Created on : Jul 14, 2019, 9:29:18 PM
    Author     : Dong Dao Hieu
--%>

<%@page import="Model.Account"%>
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
            String UserName=null;
            Cookie[] cookies = request.getCookies();
            HttpSession sessionUserAuthen=request.getSession();
            Account User=(Account)sessionUserAuthen.getAttribute("account");
            if(User != null){
            UserName=User.getUserName();
            }else if( User == null && cookies != null){
                for (Cookie cooky : cookies) {
                    if (cooky.getName().equals("username")) {
                        UserName =(String) cooky.getValue();
                    }
                    if (UserName != null ) {
                        break;
                    }
                }     
            }
        %>
    </head>
    <style>
        <c:import url="Home.css"></c:import>
        </style>
        <body>
            <div class="button" style="width: 100%;height: 30px;background-color: #303030;text-align: right;padding: 4px">
            <%if(UserName!=null){%>
                    <span style="color: white;font-family: 'Nunito Sans',sans-serif;padding-right: 20px;vertical-align: middle;text-decoration: none;font-size: 15px">Welcome:    <%=UserName%></span>
                    <a href="<%=request.getContextPath()+"/Logout"%>" style="color: white;font-family: 'Nunito Sans',sans-serif;padding-right: 20px;vertical-align: middle;text-decoration: none;font-size: 15px">Log out</a>
                    <a href="<%=request.getContextPath()+"/ListMuaHang"%>" style="color: white;font-family: 'Nunito Sans',sans-serif;padding-right: 100px;vertical-align: middle;text-decoration: none;font-size: 15px">Shopping Card</a>
                <%}else{%>               
                <a style="color: white;font-family: 'Nunito Sans',sans-serif;padding-right: 20px;vertical-align: middle;text-decoration: none;font-size: 15px" href="Login?url=List_In_Home">Log In</a>
                <%}%>
                <a style="color: white;font-family: 'Nunito Sans',sans-serif;padding-right: 100px;vertical-align: middle;text-decoration: none;font-size: 15px" href="<%=request.getContextPath()+"/Register.jsp"%>">Register</a>
                
            </div>
            <div style="width: 100%;height: 110px;background-color: white;margin-top: 10px;">
                <table style="width: 100%;height: 110px">
                    <tr>
                        <td>
                            <a href="http://localhost:8080/Project_Web_NgoTungSon/List_In_Home"><img src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/Logo_Ananas_Header.svg" style="padding-left: 150px"></a>
                        </td>
                        <td>
                            <a class="button1 button" href="http://localhost:8080/Project_Web_NgoTungSon/List_In_Home" style="text-decoration: none;font-family: sans-serif" >HOME</a>
                        </td>
                        <td >
                            <div class="dropdown" style="width: fit-content;margin-left: 40px">
                                <button class="button button1">PRODUCT</button>
                                <div class="dropdown-content" >
                                    <a href="<%=request.getContextPath()+"/Search?search=Male&&hoho=1"%>">FOR MEN</a>
                                    <a href="<%=request.getContextPath()+"/Search?search=Female&&hoho=1"%>">FOR WOMEN</a>
                                    <a href="<%=request.getContextPath()+"/Search?search=Vintas&&hoho=1"%>">VINTAS</a>
                                    <a href="<%=request.getContextPath()+"/Search?search=Basas&&hoho=1"%>">BASAS</a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <a class="button1 button"  href="About_Page.jsp" style="text-decoration: none;font-family: sans-serif" >ABOUT ANANAS</a>
                        </td>
                        <td >
                            <div class="dropdown" style="width: fit-content;margin-left: 40px">
                                <button class="button button1">ONLY FOR ADMIN</button>
                                <div class="dropdown-content" >
                                    <a href="<%=request.getContextPath()+"/a/Create"%>">CREATE SHOES</a>
                                    <a href="<%=request.getContextPath()+"/a/Modify"%>">UPDATE / DELETE</a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <form class="search" style="margin:auto;max-width:300px" action="Search" method="get">
                                    <input type="text"  placeholder="Search..."  name="search">
                                <button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
            <div style="border: 1px solid #303030;margin-top: 5px"></div>
    </body>
</html>
