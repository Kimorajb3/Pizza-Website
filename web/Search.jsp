<%-- 
    Document   : Search
    Created on : Nov 26, 2022, 1:17:36 PM
    Author     : bellk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Business.Customer"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>

<!DOCTYPE html>
<html>
    <head>
        <title>PizzaPlanet.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href=
"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            
        
            html, body{
               margin: 0;
               padding: 0;
               height: 100%;
               justify-content: center;
               align-items: center;
               background-image: url('bg2.png');            
               font-size: 18px;
               border-radius: 4px;
            }
            .background-image{
                background-image: url("bg2.jpg"); 
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
            .logo{
                float: left;
                padding: 5px 0;
                position: relative;
                left: -80px;
                width: 150px;
                height: 100px;
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
                display: block;
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
        .container{
            background-image: url("bg2.jpg");
            height: 400px;
            width: 100%;
        }
        .Resultscontainer{
            max-width: 1000px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 10px;
            padding-right: 10px;
            box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
        }
        
        .Table {
    border-radius: 5px;
    font-size: 25px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: black;
}

.Table td, .Table th {
    color: red;
    text-align: center;
    padding: 8px;
}

.Table td {
    color: red;
    border-right: 1px solid #f8f8f8;
    font-size: 25px;
}

.Table thead th {
    color: red;
    background: black;
}


.Table thead th:nth-child(odd) {
    color: red;
    background: #324960;
}

.Table tr:nth-child(even) {
    color: red;
    background: #F8F8F8;
}
          
      
        </style> 
    
    </head>
    
    <body>
        <%
            Customer c1 =(Customer)session.getAttribute("c1");
        %>
        
        <!--background image -->
        <div class="background-image">
            <header>
            <!-- navigation bar -->
            <div class ="navcontainer">
                <img src="pizpla.png" alt="logo" class="logo">
                <nav>
                    <ul>
                        <li><a href="OrderNow.jsp">Order Now</a></li>
                        <li><a href="Customer Login.jsp">Customer log in</a></li>
                        <li><a href="Employee Login.jsp">Employee log in</a></li>
                        <li><a href="SignUp.jsp">Sign up</a></li>       
                        <div class="search">
            <form action="./Search.jsp" method="post">
                <input type="text"
                    placeholder=" Search..."
                    name="Search"
                    value="">
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
      
         <h2 style="color:green;font-family:magneto;font-size:75px;text-align:left;">Results</h2>      
        </div>
        
        <div class="container">
            <div class="Resultscontainer">
            <center>
                <table class="Table">
                    <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Size</th>
                        <th>Price</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        try{
                        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                        Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/bellk/OneDrive/Desktop/Pizzaplanet.mdb");
                        Statement stmt = con.createStatement();
                        String search = request.getParameter("Search");
                        String sql = "Select * from Menu WHERE MenuItemName ='"+ search + "'";
                        ResultSet rs = stmt.executeQuery(sql);
                        
                        while(rs.next()){
                        %>
                        <tr>
                            <td><%=rs.getString("MenuItemName")%></td>
                            <td><%=rs.getString("Size")%></td>
                            <td>$<%=rs.getDouble("Price")%></td>
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
            </center>
            </div>
        </div>
        </div>
            
    </body>
</html>