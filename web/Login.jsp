<%-- 
    Document   : Login
    Created on : Jul 11, 2019, 3:45:32 PM
    Author     : Dong Dao Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ananas Login</title>
        <%
            HttpSession session1=request.getSession();
            String url = request.getParameter("url");
            if(url==null){
                url=(String)session1.getAttribute("ahihi");
            }
            
            session1.setAttribute("ahihi", url);
        %>
        <style>
            <c:import url="Login.css"></c:import>
            </style>
        </head>
        <body>
            <div style="width: 36em;height: 30em;margin-top: -15em;margin-left: -18em;background-color: rgba(255, 255, 255, 0.8);position: fixed;top: 50%;left: 50%;border-radius: 20px;text-align: center">
                <div style="margin-top: 30px">
                    <a href="List_In_Home"><img src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/Logo_Ananas_Header.svg"></a>
                </div>
                <h4 style="font-family: sans-serif">LOGIN WITH GUEST ACCOUNT</h4>
                <form action="Login" method="post">
                    <input type="hidden" value="<%=session1.getAttribute("ahihi")%>" name="hi">
                <table>
                    <tr>
                        <td>
                            <label for="uname"><b style="font-family: sans-serif">USER NAME</b></label></td>
                        <td>
                            <input type="text" placeholder="Enter Username" name="username" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="psw"><b style="font-family: sans-serif">PASSWORD</b></label></td>
                        <td>
                            <input type="password" placeholder="Enter Password" name="password" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p style="font-weight: bolder;font-family: sans-serif;color: #FF5F17">Remember me !</p>
                        </td>
                        <td>
                            <label class="container">
                                <input type="checkbox" value="remeber" name="remember">
                                <span class="checkmark"></span>
                            </label>
                        </td>
                    </tr>
                </table>
                <button type="submit" class="button button1">LOG IN</button><br><br>
                <%if (request.getAttribute("wrongpass") != null) {%>
                <p style="font-weight: bold;color: red"><%=request.getAttribute("wrongpass")%></p>
                <%}%>
            </form>
        </div>
    </body>
</html>
