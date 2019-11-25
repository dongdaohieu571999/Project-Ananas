package Data;

import Model.Account;
import Model.Item;
import Model.Item_User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Dong Dao Hieu
 */
public class DataBase {

    Connection connection;

    public DataBase() {
        try {
            String username = "dongdaohieu";
            String password = "daohieu571999";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Project_NgoTungSon";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int countItem() {
        String sql = "SELECT COUNT(*) as totalrow FROM Item";
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt("totalrow");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int countSearch(String search) {
        String sql = "select COUNT(*) as totalrow from Item where  Name like ? or Style like ? or ID_Item like ? or Price like ?\n"
                + "                or Size like ? or Descripetion like ? or Gender like ? ";
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, '%' + search + '%');
            statement.setString(2, '%' + search + '%');
            statement.setString(3, '%' + search + '%');
            statement.setString(4, '%' + search + '%');
            statement.setString(5, '%' + search + '%');
            statement.setString(6, '%' + search + '%');
            statement.setNString(7, '%' + search + '%');
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt("totalrow");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ArrayList getALLItems(int pageindex, int pagesize) {
        ArrayList<Item> items = new ArrayList<Item>();
        String sql = "select * from (select ROW_NUMBER() Over (Order by ID_Item asc) as rownum,\n"
                + "h.ID_Item,h.Name,h.Price,h.Style,h.Size,h.Descripetion,h.Date_add,h.Gender,h.url From Item h) tlbItem\n"
                + "where rownum >=((? - 1)*? +1)  AND rownum <= ? * ?";
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, pageindex);
            statement.setInt(2, pagesize);
            statement.setInt(3, pageindex);
            statement.setInt(4, pagesize);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Item h = new Item();
                h.setID_Item(rs.getInt("ID_Item"));
                h.setName(rs.getString("Name"));
                h.setPrice(rs.getString("Price"));
                h.setStyle(rs.getString("Style"));
                h.setSize(rs.getString("Size"));
                h.setDesciption(rs.getString("Descripetion"));
                h.setDate_Add(rs.getString("Date_add"));
                h.setGender(rs.getString("Gender"));
                h.setUrl(rs.getString("url"));

                items.add(h);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return items;
    }

    public Item getItemClick(String ID_Item) throws SQLException {
        String sql = "Select * from Item where ID_Item=" + ID_Item;
        PreparedStatement statement;
        statement = connection.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();
        Item item = new Item();
        while (rs.next()) {
            item.setID_Item(rs.getInt("ID_Item"));
            item.setName(rs.getString("Name"));
            item.setPrice(rs.getString("Price"));
            item.setStyle(rs.getString("Style"));
            item.setSize(rs.getString("Size"));
            item.setDesciption(rs.getString("Descripetion"));
            item.setDate_Add(rs.getString("Date_add"));
            item.setGender(rs.getString("Gender"));
            item.setUrl(rs.getString("url"));
        }
        return item;
    }

    public ArrayList Search(int pageindex, int pagesize, String search) {
        ArrayList<Item> items = new ArrayList<Item>();
        String sql = "select * from (select ROW_NUMBER() Over (Order by ID_Item asc) as rownum,\n"
                + "                h.ID_Item,h.Name,h.Price,h.Style,h.Size,h.Descripetion,h.Date_add,h.Gender,h.url From (select * from Item where  Name like ? or Style like ? or ID_Item like ? or Price like ?\n"
                + "or Size like ? or Descripetion like ? or Gender like ?) h) tlbItem\n"
                + "                where rownum >=((? - 1)*? +1)  AND rownum <= ? * ?";
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, '%' + search + '%');
            statement.setString(2, '%' + search + '%');
            statement.setString(3, '%' + search + '%');
            statement.setString(4, '%' + search + '%');
            statement.setString(5, '%' + search + '%');
            statement.setString(6, '%' + search + '%');
            statement.setNString(7, '%' + search + '%');
            statement.setInt(8, pageindex);
            statement.setInt(9, pagesize);
            statement.setInt(10, pageindex);
            statement.setInt(11, pagesize);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Item h = new Item();
                h.setID_Item(rs.getInt("ID_Item"));
                h.setName(rs.getString("Name"));
                h.setPrice(rs.getString("Price"));
                h.setStyle(rs.getString("Style"));
                h.setSize(rs.getString("Size"));
                h.setDesciption(rs.getString("Descripetion"));
                h.setDate_Add(rs.getString("Date_add"));
                h.setGender(rs.getString("Gender"));
                h.setUrl(rs.getString("url"));

                items.add(h);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return items;
    }

    public Account getAccountByUserNamePassWord(String username, String password) {
        try {
            String sql = "select * from Account where UserName=? and PassWord=?";
            PreparedStatement statement;
            statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account account = new Account();
                account.setID_User(rs.getString("ID_User"));
                account.setUserName(rs.getString("UserName"));
                account.setPassWord(rs.getString("PassWord"));
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean checkAdmin(String ID_User) {
        boolean check = true;
        try {
            String sql = "select * from Role_Account,Role where Role_Account.Role_ID=Role.Role_ID and ID_User=?";
            PreparedStatement statement;
            statement = connection.prepareStatement(sql);
            statement.setString(1, ID_User);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                if (rs.getString("Role_Name").equals("admin")) {
                    check = true;
                } else {
                    check = false;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }

    public void DangKy(String UserName, String Pass, String Email, String Add, String Phone) {
        try {
            String sql = "INSERT INTO Account(UserName,PassWord) VALUES (?,?)";
            String sql2 = "INSERT INTO Role_Account(Role_ID) VALUES (2)";
            String sql3 = "INSERT INTO Info_User (Email,Address,Phone) VALUES (?,?,?)";
            PreparedStatement statement;
            PreparedStatement statement1;
            PreparedStatement statement2;
            statement = connection.prepareStatement(sql);
            statement1 = connection.prepareStatement(sql2);
            statement.setString(1, UserName);
            statement.setString(2, Pass);
            statement.executeUpdate();
            statement1.executeUpdate();
            statement2 = connection.prepareStatement(sql2);
            statement2.setString(1, Email);
            statement2.setString(2, Add);
            statement2.setString(3, Phone);
            statement2.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void ThemSanPham(String Name, String Price, String Size, String Des, String Date, String Gender, String url, String Style) {
        try {
            String sql = "INSERT INTO Item(Name,Price,Style,Size,Descripetion,Date_add,Gender,url) VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement statement;
            statement = connection.prepareStatement(sql);
            statement.setString(1, Name);
            statement.setString(2, Price);
            statement.setString(3, Style);
            statement.setString(4, Size);
            statement.setString(5, Des);
            statement.setString(6, Date);
            statement.setString(7, Gender);
            statement.setString(8, url);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void XoaSanPham(String ID) {
        try {
            String sql = "delete from Item where ID_Item=?";
            PreparedStatement statement;
            statement = connection.prepareStatement(sql);
            statement.setString(1, ID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void Update(String name, String style, String price, String size, String date, String mota, String gender, String ID) {
        try {
            String sql = "update Item set Name=?, Price=?, Style=? ,Size=? ,Descripetion=? ,Date_add=? ,Gender=? where ID_Item=?";
            PreparedStatement statement;
            statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, price);
            statement.setString(3, style);
            statement.setString(4, size);
            statement.setString(5, mota);
            statement.setString(6, date);
            statement.setString(7, gender);
            statement.setString(8, ID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void MuaHang(String ID_User, String ID_Item, String So_Luong, String size, String Tong_Tien, String Ngay_Mua) {
        try {
            String sql = "INSERT INTO Item_User(ID_User,ID_Item,SoLuong,Size,TongTien,NgayMua) values (?,?,?,?,?,?)";
            PreparedStatement statement;
            statement = connection.prepareStatement(sql);
            statement.setString(1, ID_User);
            statement.setString(2, ID_Item);
            statement.setString(3, So_Luong);
            statement.setString(4, size);
            statement.setString(5, Tong_Tien);
            statement.setString(6, Ngay_Mua);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public ArrayList ListShoping(String ID_User) {
        ArrayList<Item_User> list = new ArrayList<>();
        try {

            String sql = "select * from Item_User where ID_User=?";
            PreparedStatement statement;
            statement = connection.prepareStatement(sql);
            statement.setString(1, ID_User);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Item_User hihi = new Item_User();
                hihi.setID_Item(rs.getString("ID_Item"));
                hihi.setSoLuong(rs.getString("SoLuong"));
                hihi.setSize(rs.getString("Size"));
                hihi.setID(rs.getString("ID"));
                hihi.setTongTien(rs.getString("TongTien"));
                hihi.setNgayMua(rs.getString("NgayMua"));
                list.add(hihi);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public void deleteInShopingCard(String id){
        try {
            String sql="delete from Item_User where ID=?";
            PreparedStatement statement;
            statement=connection.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
