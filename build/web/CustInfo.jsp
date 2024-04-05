<%-- 
    Document   : CustInfo
    Created on : Nov 7, 2022, 10:20:55 PM
    Author     : bellk
--%>

<%@page import="Business.Customer"%>
<%@page import="Business.Order"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
     <style>
           body{
               margin: 0;
               padding: 0;
               height: 100%;
               justify-content: center;
               align-items: center;
               background-image: url('pizpla.png');
               text-align:center;
               
           }
           
           .background-image{
                background-size: cover;
                background-repeat: no-repeat;
                box-sizing: border-box;
                background-position: center center;
                width: 100%;
                height: 100%;
            }
           
           .navcontainer{
                width: 80%;
                margin: 0 auto;
            }
            header{
                background:#040404;
            }
            
            header::after{
                content: '';
                display: table;
                clear: both;
            }
            
           nav{
                float: right;
           }
            nav ul{
                margin: 0;
                padding: 0;
                position: relative;
                top: 30px;
                list-style: none;
            }
            nav li{
                display: inline-block;
                margin-left: 70px;
                padding-top: 25px;
                position: relative;
            }
            nav a {
                color: white;
                text-decoration: none;
                text-transform: uppercase;
                font-size: 14px;
            }
            nav a:hover{
                color: #8987a2;
            }
            nav a::before{
                content: '';
                display: blcok;
                height: 5px;
                width: 100%;
                background-color: #747480;
                position: absolute;
                top: 0;
                width: 0%;
                transition: all ease-in-out 250ms;
            }
            nav a:hover::before{
                width: 100%;
            }
            
            .center{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, 90%);
                width: 400px;
                background: white;
                border-radius: 10px;
            }
            
            .center form{
                padding: 0 40px;
                box-sizing: border-box;
            }
            
            form .txtfield{
                position: relative;
                border-bottom: 2px solid #adadad;
                margin: 30px 0;
            }
            
            .txtfield input{
                width: 100%;
                padding: 0 5px;
                height: 40px;
                font-size: 16px;
                border: none;
                background: none;
                outline: none;
            }
            
            .txtfield label{
                position: absolute;
                top: 50%;
                left: 5px;
                color: #adadad;
                transform: translateY(-50%);
                font-size: 16px;
                pointer-events: none;
                transition: .5s;
            }
           
            .txtfield span::before{
                content: '';
                position: absolute;
                top: 40px;
                left: 0;
                width: 100%;
                height: 2px;
                background: #2691d9;
                transition: .5s;
            }
            
            .txtfield input:focus ~ label,
            .txtfield input:valid ~ label{
                top: -5px;
                color: #2691d9;
            }
            
            .txtfield input:focus ~ span::before,
            .txtfield input:valid ~ span::before{
                width: 100%;
            }
            
            .pass, .Acct{
                margin: -5px 0 20px 5px;
            }
            
            form{
                font-family:magneto;
            }
            
            .button{
                font-family:magneto;
                width: 100%;
                padding: 1rem 2rem;
                font-weight: bold;
                font-size: 1.1rem;
                color:#ffffff;
                border: none;
                border-radius: 4px;
                outline: none;
                cursor: pointer;
                background: #009579;
            }
            
            .button:hover{
                background: #007f67;
            }
            
            .button:active{
                transform: scale(0.98);
            }
                               
            .link{
                color: #252c6a;
                text-decoration: none;
                cursor: pointer;
            }
            
            .link:hover{
                text-decoration: underline;
            }
            
            .info{
               width: 100%;
               height: 100%;
               display: flex;
               flex-direction: row;
               justify-content: center;
               text-align:center;
               transform: translateY(-20%);
            }
            
            .hyper{
                width: 100px;
            }
            
            .orderdiv{
            border: 1px solid black;
            width: 1040px;
            height: 760px;
            background-color: white;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%, 50%);
            border-radius: 10px;
            padding: 50px 50px;
        }
        .info a {
            font-family:magneto;
                width: 40%;
                padding: 1rem 2rem;
                font-weight: bold;
                font-size: 1.1rem;
                color:#ffffff;
                border: none;
                border-radius: 4px;
                outline: none;
                cursor: pointer;
                background: #009579;
        }
        
        .info a:hover{
            background: #007f67;;  
        }
        
        .hyper{
            width: 90px;
        }
        
        .search input[type=text]{ 
            width:170px;
            height:30px;
            border-radius:25px;
            border: none;
 
        }
         
        .search{
            float: right;  
        }
         
        .search button{
            background-color: black;
            color: #f2f2f2;
            float: right;
            padding: 5px 10px;
            margin-right: 16px;
            font-size: 12px;
            border: none;
            cursor: pointer;
        }
        
        table{
                width: 100%;
                table-layout: fixed;
            }
            
            .header{
              background-color: #2D033B;  
            }
            
            .content{
              height:50px;
              overflow-x:auto;
              margin-top: 0px;
              background-color: #C147E9;
              border: 1px solid rgba(255,255,255,0.3);  
            }
            
            .Content{
              height:200px;
              overflow-x:auto;
              margin-top: 0px;
              background-color: #C147E9;
              border: 1px solid rgba(255,255,255,0.3);  
            }
            
            th{
              padding: 20px 15px;
              text-align: left;
              font-weight: 500;
              font-size: 12px;
              color: #E5B8F4;
              text-transform: uppercase;
              font-family: magneto;
            }

            td{
              padding: 15px;
              text-align: left;
              vertical-align:middle;
              font-weight: 300;
              font-size: 12px;
              color: #E5B8F4;
              border-bottom: solid 1px rgba(255,255,255,0.1);
            }
        </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PizzaPlanet.com/CustomerInfo</title>
</head>

<body>
    <div class="background-image">
        <header>
            <div class="navcontainer">
 <nav>
            <ul>
                <li><a href="index.jsp">Home</a>        
                <li><a href="CustOrderNow.jsp">Order Now</a></li>
                        <li><a href="Customer Login.jsp">Customer log in</a></li>
                        <li><a href="Employee Login.jsp">Employee log in</a></li>
                        <li><a href="SignUp.jsp">Sign up</a></li>
                        <div class="search">
            <form action="Search.jsp" method="post">
                <input type="text"
                    placeholder=" Search..."
                    name="Search">
                <button>
                    <i class="fa fa-search"
                        style="font-size: 18px;">
                    </i>
                </button>
            </form>
        </div>
            </ul>
         </nav>
    </div>
</header>
    <!--Banner Image-->
        <img src="banner.jpg" alt="banner photo" height="auto" width="auto" padding="10px"></img>
        
    <!--Welcome message-->
    <%
        Customer c1 = (Customer)session.getAttribute("c1");
        Order o1 = (Order)session.getAttribute("o1");
    %>
    
    <h1 style="color:green;font-family:magneto;font-size:75px;">Welcome to Pizza Planet!</h1>
    
    <div class="info">
               <a href="editinfoC.jsp" class = "hyper">Update Information</a>
               <a href="Logout.jsp" class="hyper">Logout</a>
    </div>
    <div class ="orderdiv">
        <h2 style="font-family:magneto;">Hello <%=c1.getFirstName() + " " + c1.getLastName()%></h2>
        <h2 style="font-family:magneto;">Customer Information</h2>
            <div class="header">
                <table border="0" cellpadding="0" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Customer ID</th>
                            <th>Address</th>
                            <th>Email</th>
                            <th>Phone</th>
                        </tr>
                    </thead>
                </table>
            </div>
            <div class="content">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                          <td><%=c1.getFirstName() + " "+ c1.getLastName()%></td>  
                          <td><%=c1.getCustomerID()%></td>
                          <td><%=c1.getStreet() + ", " + c1.getCity() + ", " + c1.getState() + ", " + c1.getZip()%></td>
                          <td><%=c1.getEmail()%></td>
                          <td><%=c1.getPhone()%></td>
                        </tr>
                    </tbody>
                </table>
            </div>
                        
     <h2 style="font-family:magneto;"> Order Information </h2>
            <div class="header">
                <table border="0" cellpadding="0" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Employee ID </th>
                            <th>Food </th>
                            <th>Status </th>
                        </tr>
                    </thead>
                </table>
            </div>
            <div class="Content">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <%
                        try{
                        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
                        Statement stmt = con.createStatement();
                        String CID = (String)c1.getCustomerID();
                        String sql = "Select * from Order WHERE CustomerID ='"+ CID + "'";
                        ResultSet rs = stmt.executeQuery(sql);
                        
                        while(rs.next()){
                        %>
                        <tr>
                            <td><%=rs.getString("OrderID")%></td>
                            <td><%=rs.getString("EmployeeID")%></td>
                            <td><%=rs.getString("Food")%></td>
                            <td><%=rs.getString("Status")%></td>
                        </tr>
                      
                        <%
                            }
                        }
                        catch(Exception e){
                        System.out.println(e.getMessage());
                        }
                        %>
                        
                    </tbody>
            </table>
        </div>                   
    </div>
    
</body>

</html>
