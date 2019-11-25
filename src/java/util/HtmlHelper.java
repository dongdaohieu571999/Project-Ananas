/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;


/**
 *
 * @author Dong Dao Hieu
 */
public class HtmlHelper {
    public static String link(String text, String url)
    {
        return "<a "+"class="+"\"button button1\""+"href=\""+url+"\">" + text +"      "+ "</a>";
    }
    
    public static String label(String text)
    {
        return "<span "+"class="+"\"button1 button\""+"style=\"border: solid #FF5F17;color: #FF5F17\""+">"+text+ "</span>";
    }
    
    public static String pager(int gap, int pageindex, int totalpage)
    {
        String result = "";
        if(pageindex > gap + 1)
        {
            result+= link("         Prev        ", "?page=" + (pageindex-1) );
        }        
        for (int i = gap; i > 0; i--) {
            int page = pageindex - i;
            if(page>0)
                result+= link("         "+page, "?page=" + page );
        }
        result += label("           "+ pageindex);
        for (int i = 1; i <= gap; i++) {
            int page = pageindex + i;
            if(page<=totalpage)
                result+= link("         "+page, "?page=" + page );
        }
        
        if(pageindex + gap < totalpage)
        {
            result+= link("         Next        ", "?page=" + (pageindex+1) );
        } 
        result += "</div>";
        return result;
    }
}
