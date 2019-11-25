<%-- 
    Document   : Register
    Created on : Jul 12, 2019, 1:01:00 AM
    Author     : Dong Dao Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ĐĂNG KÝ THÀNH VIÊN CỦA DỨA</title>
        <style>
            <c:import url="Register.css"></c:import>
        </style>
    </head>
    <body>
        <div style="width: 36em;height: 40em;margin-top: -20em;margin-left: -18em;background-color: rgba(255, 255, 255, 0.8);position: fixed;top: 50%;left: 50%;border-radius: 20px;text-align: center">
            <div style="margin-top: 30px">
                <a href="List_In_Home"><img src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/Logo_Ananas_Header.svg"></a>
            </div>
            <h4 style="font-family: sans-serif;color:#FF5F17 ">TO BE A MEMBER OF ANANAS</h4>
            <form action="DangKy" method="get">
                <table>
                    <tr>
                        <td>
                            <label for="uname"><b style="font-family: sans-serif">USER NAME</b></label></td>
                        <td>
                            <input type="text" placeholder="Enter Username" name="UserName" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="psw"><b style="font-family: sans-serif">PASSWORD</b></label></td>
                        <td>
                            <input type="password" placeholder="Enter Password" name="Pass" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label><b style="font-family: sans-serif">EMAIL</b></label>
                        </td>
                        <td>
                            <input type="text" placeholder="Enter Email" name="Email" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label><b style="font-family: sans-serif">PHONE NUMBER</b></label>
                        </td>
                        <td>
                            <input type="text" placeholder="Enter Phone Number" name="Phone" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="psw"><b style="font-family: sans-serif">DELIVERY ADDRESS</b></label>
                        </td>
                        <td>
                            <input type="text" placeholder="Enter Address" name="Add" required>
                        </td>
                    </tr>
                </table>
                <div style="margin-top: 30px">
                    <button type="submit" class="button button1">REGISTER</button>
                </div>
            </form>
        </div>
    </body>
</html>
