/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Data.DataBase;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dong Dao Hieu
 */
public class Filter_AUthen implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request1 = (HttpServletRequest) request;
        HttpServletResponse response1 = (HttpServletResponse) response;
        //for Gio Hang
        HttpSession session = request1.getSession();

        if (isAuthenticated(request1) == false && (!request1.getServletPath().substring(1).equals("a/Create") && !request1.getServletPath().substring(1).equals("a/Modify"))) {
            session.setAttribute("IDSession",(String) request1.getParameter("ID_Item"));
            session.setAttribute("sizeSession", (String) request1.getParameter("size"));
            session.setAttribute("SoLuongSession", (String) request1.getParameter("soluong"));
            response1.sendRedirect("http://localhost:8080/Project_Web_NgoTungSon/Login?url=" + request1.getServletPath().substring(1));
        }
        else if(isAuthenticated(request1)==true && (request1.getServletPath().substring(1).equals("a/Create") || request1.getServletPath().substring(1).equals("a/Modify"))){
            Account account=(Account)session.getAttribute("account");
            boolean kiemtra=new DataBase().checkAdmin(account.getID_User());
            if(kiemtra==true){
                chain.doFilter(request, response);
            }
            else{
                response1.sendRedirect("http://localhost:8080/Project_Web_NgoTungSon/LoginForAdmin?url=" + request1.getServletPath().substring(1));
            }
            
        }
        else if(isAuthenticated(request1)==false && (request1.getServletPath().substring(1).equals("a/Create") || request1.getServletPath().substring(1).equals("a/Modify"))){
            response1.sendRedirect("http://localhost:8080/Project_Web_NgoTungSon/LoginForAdmin?url=" + request1.getServletPath().substring(1));
        }
        else{
            chain.doFilter(request, response);
        }
        
    }

    @Override
    public void destroy() {
    }

    public boolean isAuthenticated(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        if (account != null) {

            return true;
        } else {
            Cookie[] cookies = request.getCookies();
            if (cookies == null) {
                return false;
            } else {
                String username = null;
                String password = null;
                for (Cookie cooky : cookies) {
                    if (cooky.getName().equals("username")) {
                        username = cooky.getValue();
                    } else if (cooky.getName().equals("password")) {
                        password = cooky.getValue();
                    }
                    if (username != null && password != null) {
                        break;
                    }
                }
                if (username != null && password != null) {
                    Data.DataBase db = new DataBase();
                    Account a = db.getAccountByUserNamePassWord(username, password);
                    if (a == null) {
                        return false;
                    } else {
                        session.setAttribute("account", a);
                        return true;
                    }
                } else {
                    return false;
                }
            }
        }

    }

}
