package Business;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;




/**
* Class: CIST 2931 
* Term: Fall 2022
* Instructor: Mr. Ronald Enz
* Description: Advanced systems project
* Author: Justin Feagans
* By turning in this code, I Pledge:
* 1. That I have completed the programming assignment independently.
* 2. I have not copied the code from a student or any source.
* 3. I have not given my code to any student.

**/
/***
 The Employee class is used to hold Employee Data
 */


public class Customer {
    //Declare Customer class variables
    private String CustomerID;
    private String FirstName;
    private String LastName;
    private String Email;
    private String Phone;
    private String Birthday;
    private String Street;
    private String City;
    private String State;
    private String Zip;
    private String Password;
    private String Role;
    
    
    
    //Constructor without arguments. Sets variable value to "" when called.
    public Customer(){
        CustomerID="";
        FirstName="";
        LastName="";
        Email="";
        Phone="";
        Birthday="";
        Street="";
        City="";
        State="";
        Zip="";
        Password="";
        Role="";
        
        
    }//End constructor without arguments.
    
    
   //Constructor with arguments.
    public Customer(String Id, String fn, String ln,
    String em, String phone,String birthday,String str,String city,
    String st, String zip, String pass, String role){
        
       
        CustomerID = Id;
        FirstName= fn;
        LastName=ln;
        Email=em;
        Phone=phone;
        Birthday=birthday;
        Street=str;
        City=city;
        State=st;
        Zip=zip;
        Password=pass;
        Role=role;
        
    }//End constructor with arguments.
    
    
    
   //set and get methods
        public String getCustomerID(){
        return CustomerID;
    }
    
    public void setCustomerID(String Id){
        CustomerID = Id;
    }
    
    public String getFirstName(){
        return FirstName;
    }
    
    public void setFirstName(String fn){
        FirstName= fn;
    }
    
    public String getLastName(){
        return LastName;
    }
    
    public void setLastName(String ln){
        LastName=ln;
    }
    
    public String getEmail(){
        return Email;
    }
    
    public void setEmail(String em){
        Email=em;
    }
    
    public String getPhone(){
        return Phone;
    }
    
    public void setPhone(String phone){
        Phone=phone;
    }
    
    public String getBirthday(){
        return Birthday;
    }
    
    public void setBirthday(String birthday){
        Birthday=birthday;
    }
    
    public String getStreet(){
        return Street;
    }
    
    public void setStreet(String str){
        Street=str;
    }
    
    public String getCity(){
        return City;
    }
    
    public void setCity(String city){
        City = city;
    }
    
    public String getState(){
        return State;
    }
    
    public void setState(String st){
        State = st;
    }
    
    public String getZip(){
        return Zip;
    }
    
    public void setZip(String zip){
        Zip = zip;
    }
    
    public String getPassword(){
        return Password;
    }
    
    public void setPassword(String pass){
        Password = pass;
    }
    
    public String getRole(){
        return Role;
    }
    
    public void setRole(String role){
        Role = role;
    }
    

        
        /**
         The select method gets one Customer from the DB.
         **/
        //SELECTDB
       
        
         
      //INSERTDB
public void selectDB(String Id){
    CustomerID = Id;
    try{
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
        Statement stmt = con.createStatement();
        
    
String sql = "Select * from Customers WHERE CustomerID ='"+ getCustomerID() + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            rs.next();
            
            setFirstName(rs.getString(2));
            setLastName(rs.getString(3));
            setEmail(rs.getString(4));
            setPhone(rs.getString(5));
            setBirthday(rs.getString(6));
            setStreet(rs.getString(7));
            setCity(rs.getString(8));
            setState(rs.getString(9));
            setZip(rs.getString(10));
            setPassword(rs.getString(11));
            setRole(rs.getString(12));
}
    catch(ClassNotFoundException | SQLException err){
            err.printStackTrace();
        }
}

public void insertDB(String Id, String fn, String ln, String em, String phone,String birthday, String str, String city, String st,
        String zip, String pass, String role){
        CustomerID = Id;
        FirstName= fn;
        LastName=ln;
        Email=em;
        Phone=phone;
        Birthday=birthday;
        Street=str;
        City=city;
        State=st;
        Zip=zip;
        Password=pass;
        Role=role;     
       try{
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
        Statement stmt = con.createStatement();
        
        String sql = "Insert into Customers (CustomerID, FirstName, LastName, Email, Phone, Birthday, Street, City, State, Zip, Password, MovieRole) "
                      + "values('"+getCustomerID()+"','"+getFirstName()+"','"+getLastName()+"','"+getEmail()+"','"+getPhone()+"','"+getBirthday()+"','"+getStreet()+"','"+getCity()+"','"+getState()+
                        "','"+getZip()+"','"+getPassword()+"','"+getRole()+"')";
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
        
          /**
         The delete method deletes one Customer from the DB.
         **/
        //DELETEDB
         public void deleteDB(){
       try{
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
        Statement stmt = con.createStatement();
        
        String sql = "Delete from Customers WHERE CustomerID ='"+ getCustomerID() + "'";
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
        
        String sql = "Update Customers  Set FirstName ='"+getFirstName()+"', LastName ='"+getLastName()+
                    "', Email ='"+getEmail()+"', Phone ='"+getPhone()+"', Birthday ='"+getBirthday()+"', Street ='"+getStreet()+
                    "', City ='"+getCity()+"', State ='"+getState()+"', Zip ='"+getZip()+"', Password ='"+getPassword()+"', MovieRole ='"
                    +getRole()+"' where CustomerID = '"+getCustomerID()+"'";
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
            
            System.out.println("Customer Id: "+getCustomerID());
            System.out.println("Customer FirstName: "+getFirstName());
            System.out.println("Customer LastName: "+getLastName());
            System.out.println("Customer Email: "+getEmail());
            System.out.println("Customer Phone: "+getPhone());
            System.out.println("Customer Birthday: "+getBirthday());
            System.out.println("Customer Street: "+getStreet());
            System.out.println("Customer City: "+getCity());
            System.out.println("Customer State: "+getState());
            System.out.println("Customer Zip: "+getZip());
            System.out.println("Customer Password: "+getPassword());
            System.out.println("Customer Role: "+getRole());
        
        }
        
        
        public static void main(String[] args){
        Customer c1 = new Customer();
        c1.selectDB("001");
        c1.Display();
              
        }

        }                 
                
        

        

