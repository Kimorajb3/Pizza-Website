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


public class Employee {
    //Declare Customer class variables
    private String EmployeeID;
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
    
    
    
    //Constructor without arguments. Sets variable value to "" when called.
    public Employee(){
        EmployeeID="";
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
        
        
        
    }//End constructor without arguments.
    
    
   //Constructor with arguments.
    public Employee(String ID, String fn, String ln,
    String em, String phone,String birthday,String str,String city,
    String st, String zip, String pass){
        
       
        EmployeeID = ID;
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
        
        
    }//End constructor with arguments.
    
    
    
   //set and get methods
        public String getEmployeeID(){
        return EmployeeID;
    }
    
    public void setCustomerID(String ID){
        EmployeeID = ID;
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
    
    public void selectDB(String ID){
    EmployeeID = ID;
    try{
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
        Statement stmt = con.createStatement();
        
    
String sql = "Select * from Employees WHERE EmployeeID ='"+ getEmployeeID() + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            rs.next();
            
            setFirstName(rs.getString(2));
            setLastName(rs.getString(3));
            setEmail(rs.getString(4));
            setPhone(rs.getString(5));
            setBirthday(rs.getString(6));
            setStreet(rs.getString(7));
            setCity(rs.getString(8));
            setState(rs.getString(10));
            setZip(rs.getString(9));
            setPassword(rs.getString(11));
}
    catch(ClassNotFoundException | SQLException err){
            err.printStackTrace();
        }
}
        
        public void Display(){
            
            System.out.println("Employee Id: "+getEmployeeID());
            System.out.println("Employee FirstName: "+getFirstName());
            System.out.println("Employee LastName: "+getLastName());
            System.out.println("Employee Email: "+getEmail());
            System.out.println("Employee Phone: "+getPhone());
            System.out.println("Employee Birthday: "+getBirthday());
            System.out.println("Employee Street: "+getStreet());
            System.out.println("Employee City: "+getCity());
            System.out.println("Employee State: "+getState());
            System.out.println("Employee Zip: "+getZip());
            System.out.println("Employee Password: "+getPassword());
        
        }
        
        public static void main(String[] args){
        Employee e1 = new Employee();
        e1.selectDB("1");
        e1.Display();
              
        }

}
                
              

        

