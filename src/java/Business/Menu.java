/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author bellk
 */
public class Menu {
    private String MenuItem;
    private String MenuItemName;
    private String Size;
    private double Price;
    
    public Menu(){
        MenuItem="";
        MenuItemName="";
        Size="";
        Price=0.0; 
    }
    
    public Menu(String menuitem, String menuitemname, String size, double price){
        MenuItem= menuitem;
        MenuItemName= menuitemname;
        Size= size;
        Price= price;
    }
    
    public String getMenuItem(){
        return MenuItem;
    }
    
    public void setMenuItem(String menuitem){
        MenuItem= menuitem;
    }
    
    public String getMenuItemName(){
        return MenuItemName;
    }
    
    public void setMenuItemName(String menuitemname){
        MenuItemName= menuitemname;
    }
    
    public String getSize(){
        return Size;
    }
    
    public void setSize(String size){
        Size= size;
    }
    
    public double getPrice(){
        return Price;
    }
    
    public void setPrice(double price){
        Price= price;
    }
    
    public void selectDB(String menuitem){
    MenuItem= menuitem;
    try{
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
        Statement stmt = con.createStatement();
        
    
String sql = "Select * from Menu WHERE MenuItem ='"+ getMenuItem() + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            rs.next();
            
            setMenuItemName(rs.getString(2));
            setSize(rs.getString(3));
            setPrice(rs.getDouble(4));
            
}
    catch(ClassNotFoundException | SQLException err){
            err.printStackTrace();
        }
}
    public void Display(){
            
            System.out.println("Menu Item: "+getMenuItem());
            System.out.println("Menu Item Name: "+getMenuItemName());
            System.out.println("Size: "+getSize());
            System.out.println("Price: "+getPrice());
            
        }
        
        
        public static void main(String[] args){
        Menu m1 = new Menu();
        m1.selectDB("1");
        m1.Display();
              
        }
    
}
