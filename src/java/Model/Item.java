/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Dong Dao Hieu
 */
public class Item {
    private int ID_Item;
    private String Name;
    private String Price;
    private String  Style;
    private String Size;
    private String Desciption;
    private String Date_Add;
    private String Gender;
    private String url;

    public int getID_Item() {
        return ID_Item;
    }

    public void setID_Item(int ID_Item) {
        this.ID_Item = ID_Item;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getPrice() {
        return Price;
    }

    public void setPrice(String Price) {
        this.Price = Price;
    }

    public String getStyle() {
        return Style;
    }

    public void setStyle(String Style) {
        this.Style = Style;
    }

    public String getSize() {
        return Size;
    }

    public void setSize(String Size) {
        this.Size = Size;
    }

    public String getDesciption() {
        return Desciption;
    }

    public void setDesciption(String Desciption) {
        this.Desciption = Desciption;
    }

    public String getDate_Add() {
        return Date_Add;
    }

    public void setDate_Add(String Date_Add) {
        this.Date_Add = Date_Add;
    }

    public String isGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    
    
}
