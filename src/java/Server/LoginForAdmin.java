/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Server;

import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dong Dao Hieu
 */
public class LoginForAdmin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        request.getRequestDispatcher("LoginForAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        boolean check=false;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");
        String url = (String) request.getParameter("hi");

        Account account = new Data.DataBase().getAccountByUserNamePassWord(username, password);
        if(account != null){
        check=new Data.DataBase().checkAdmin(account.getID_User());}
        {
            if (account != null && check==true) {
                request.getSession().setAttribute("account", account);
                if (remember != null) {
                    Cookie u = new Cookie("username", username);
                    Cookie p = new Cookie("password", password);
                    u.setMaxAge(3600 * 24 * 7);
                    p.setMaxAge(3600 * 24 * 7);
                    response.addCookie(p);
                    response.addCookie(u);
                }
                if (url != null && !url.equals("")) {
                    response.sendRedirect(url);
                }
            } else {
                request.setAttribute("wrongpass", "Please login with ADMIN Account!");
                request.getRequestDispatcher("LoginForAdmin.jsp").forward(request, response);
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
