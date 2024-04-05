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
public class Order {
   String OrderID;
   String CustomerID;
   String EmployeeID;
   String Food;
   String Status;
   
   public Order(){
        OrderID="";
        CustomerID="";
        EmployeeID="";
        Food="";
        Status="";
   }
   
   public Order(String OID, String CID, String EID,
    String food, String stat){
       OrderID = OID;
       CustomerID = CID;
       EmployeeID = EID;
       Food = food;
       Status = stat;
   }
   
   public String getCustomerID(){
        return CustomerID;
    }
    
    public void setCustomerID(String CID){
        CustomerID = CID;
    }
    
    public String getOrderID(){
        return OrderID;
    }
    
    public void setOrderID(String OID){
        OrderID = OID;
    }
    
    public String getEmployeeID(){
        return EmployeeID;
    }
    
    public void setEmployeeID(String EID){
        EmployeeID = EID;
    }
    
    public String getFood(){
        return Food;
    }
    
    public void setFood(String food){
        Food = food;
    }
    
    public String getStatus(){
        return Status;
    }
    
    public void setStatus(String stat){
        Status = stat;
    }
    
    public void selectDB(String OID){
    OrderID = OID;
    try{
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
        Statement stmt = con.createStatement();
        
    
String sql = "Select * from Order WHERE OrderID ='"+ getOrderID() + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            rs.next();
            
            setCustomerID(rs.getString(1));
            setEmployeeID(rs.getString(2));
            setFood(rs.getString(3));
            setStatus(rs.getString(4));
}
    catch(ClassNotFoundException | SQLException err){
            err.printStackTrace();
        }
}
    
    public void selectDBE(String EID){
    EmployeeID = EID;
    try{
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
            Statement stmt = con.createStatement();
            
            String sql = "Select * from Order WHERE EmployeeID ='"+ getEmployeeID() + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            rs.next();
            
            setOrderID(rs.getString(1));
            setCustomerID(rs.getString(2));
            setEmployeeID(rs.getString(3));
            setFood(rs.getString(4));
            setStatus(rs.getString(5));
            
            }
        catch(ClassNotFoundException | SQLException err){
            System.out.println("Error");
        }
        
   }
    
    public void insertDB(){    
       try{
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
        Statement stmt = con.createStatement();
        
        String sql = "Insert into Order (OrderID, CustomerID, EmployeeID, Food, Status) "
                      + "values('"+getOrderID()+"','"+getCustomerID()+"','"+getEmployeeID()+"','"+getFood()+"','"+getStatus()+"')";
        System.out.println(sql);
        int n = stmt.executeUpdate(sql);
        if (n==1){
            System.out.println("INSERT SUCCESS");
        }
        else{
            System.out.println("INSERT UNSUCCESSFUL");
        }  
           
        con.close();
        }
       catch(Exception err){
           err.printStackTrace();
       }    
        
   }
    
    public void deleteDB(){
       try{
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
        Statement stmt = con.createStatement();
        
        String sql = "Delete from Order WHERE OrderID ='"+ getOrderID() + "'";
        System.out.println(sql);
        int n = stmt.executeUpdate(sql);
        if (n==1){
            System.out.println("DELETE SUCCESS");
        }
        else{
            System.out.println("DELETE UNSUCCESSFUL");
        }
        con.close();
        }
        catch(Exception err){
            System.out.println("Error");
        }
     }
    
    public void updateDB(){      
              
       try{
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
        Statement stmt = con.createStatement();
        
        String sql = "Update Order  Set CustomerID ='"+getCustomerID()+"', EmployeeID ='"+getEmployeeID()+
                    "', Food ='"+getFood()+ "', Status ='"+getStatus()+
                    "' where OrderID = '"+getOrderID()+"'";
        System.out.println(sql);
        int n = stmt.executeUpdate(sql);
        if (n==1){
            System.out.println("UPDATE SUCCESS");
        }
        else{
            System.out.println("UPDATE UNSUCCESSFUL");
        }
        con.close();
        }
        catch(ClassNotFoundException | SQLException err){
            System.out.println("Error");
        }
   }

        
        
        
        /**
         The Display method displays the Employee data.
         **/
        public void Display(){
            
            System.out.println("Order Id: "+getOrderID());
            System.out.println("Customer Id: "+getCustomerID());
            System.out.println("Employee Id: "+getEmployeeID());
            System.out.println("Food: "+getFood());
            System.out.println("Status: "+getStatus());
        }
        
        
        public static void main(String[] args){
        Order o1 = new Order();
        o1.selectDBE("3");
        o1.Display();
              
        }
}
