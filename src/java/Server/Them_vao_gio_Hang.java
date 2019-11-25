/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Server;

import Data.DataBase;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Them_vao_gio_Hang extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String ID_User=request.getParameter("ID_User");
        String ID_Item=request.getParameter("ID_Item");
        String SoLuong=request.getParameter("So_Luong");
        String Size=request.getParameter("Size");
        String TongTien=request.getParameter("Tong_Tien");
        String NgayMua=request.getParameter("Ngay_Mua");
        Data.DataBase data=new DataBase();
        data.MuaHang(ID_User, ID_Item, SoLuong, Size, TongTien, NgayMua);
        response.sendRedirect(request.getContextPath()+"/ListMuaHang");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        Data.DataBase da=new DataBase();
        da.deleteInShopingCard(request.getParameter("ID_DELETE"));
        response.sendRedirect(request.getContextPath()+"/ListMuaHang");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
