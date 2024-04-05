<%-- 
    Document   : CustOrderNow
    Created on : Nov 26, 2022, 8:22:08 PM
    Author     : bellk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Business.Customer"%>
<%@page import="Business.Employee"%>
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
            height: 2200px;
            width: 100%;
        }
        .center{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, 20%);
                width: 1000px;
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
            
            form .selection{
                position: relative;
                border-bottom: 2px solid #adadad;
                margin: 30px 0;
                background-color: #2691d9;
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
            
            .ChckContainer {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.ChckContainer input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
}

/* On mouse-over, add a grey background color */
.ChckContainer:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.ChckContainer input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.ChckContainer input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.ChckContainer .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
        
       
      
        </style> 
    
    </head>
    
    <body>
        <%
            Customer c1 =(Customer)session.getAttribute("c1");
            Employee e1 = (Employee)session.getAttribute("e1");
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
      
         <h2 style="color:green;font-family:magneto;font-size:75px;text-align:center;">Fill out your Order!</h2>      
        </div>
        
        <div class="container">
            <div class="center">
    <form Name="DataForm" id="login" action="CustorderServlet" method="post">
        
        <div class="txtfield">
            <input type="text" name="OrderID" class="DataForm__input"/>
            <span></span>
            
        </div>
        <div class="txtfield">
            <input type="text" readonly="readonly" name="CustomerID" value="<%=c1.getCustomerID()%>" class="DataForm__input"/>
            <span></span>
            
        </div>
            
            <div class="selection">    
            <p style="text-align:center;">Employee</p>
            <select name="Employee">
                <option value="1">Woody Pride</option>
                <option value="2">Buzz Lightyear</option>
                <option value="3">Andys Mom</option>
                <option value="4">Mr.Potato Head</option>
                <option value="5">Hamm Hog</option>
                <option value="6">Slinky Dog</option>
            </select>
            </div>
        <div>
            <p style="text-align:center;">Pizzas</p>
           
            <input type="checkbox" name="CustOrder" value="1"><label class="ChckContainer">Create your own Pizza (Personal)</label>
                <input type="checkbox" name="CustOrder" value="2"><label class="ChckContainer">Create your own Pizza (Small)</label>
                <input type="checkbox" name="CustOrder" value="3"><label class="ChckContainer">Create your own Pizza (Medium)</label>
                <input type="checkbox" name="CustOrder" value="4"><label class="ChckContainer">Create your own Pizza (Large)</label>
                <input type="checkbox" name="CustOrder" value="5"><label class="ChckContainer">Specialty Pizza (Personal)</label>
                <input type="checkbox" name="CustOrder" value="6"><label class="ChckContainer">Specialty Pizza (Small)</label>
                <input type="checkbox" name="CustOrder" value="7"><label class="ChckContainer">Specialty Pizza (Medium)</label>
                <input type="checkbox" name="CustOrder" value="8"><label class="ChckContainer">Specialty Pizza (Large)</label>
           
            </div>
            
            <div>
            <p style="text-align:center;">Drinks</p>
            
                <input type="checkbox" name="CustOrder" value="19">Beverage (Kids)
                <input type="checkbox" name="CustOrder" value="20">Beverage (Medium)
                <input type="checkbox" name="CustOrder" value="21">Beverage (Large)
                <input type="checkbox" name="CustOrder" value="22">Beverage (2-Liter)
            
            </div>
            
            <div>
            <p style="text-align:center;">Desserts</p>
            
                <input type="checkbox" name="CustOrder" value="16">Cinn-a-moon Pizza (Small)
                <input type="checkbox" name="CustOrder" value="17">Cinn-a-moon Pizza (Large)
                <input type="checkbox" name="CustOrder" value="15">Cinnamon Comets
           
            </div>
            
            <div>
            <p style="text-align:center;">Sides</p>
            
            <input type="checkbox" name="CustOrder" value="9"><label class="ChckContainer">Calzone</label>
                <input type="checkbox" name="CustOrder" value="10"><label class="ChckContainer">Toasty Sub</label>
                <input type="checkbox" name="CustOrder" value="11"><label class="ChckContainer">Planet Sampler</label>
                <input type="checkbox" name="CustOrder" value="13"><label class="ChckContainer">Chicken Alfredo</label>
                <input type="checkbox" name="CustOrder" value="14"><label class="ChckContainer">Chicken Pesto</label>
                <input type="checkbox" name="CustOrder" value="23"><label class="ChckContainer">Cheese Bread (Small)</label>
                <input type="checkbox" name="CustOrder" value="24"><label class="ChckContainer">Cheese Bread (Large)</label>
                <input type="checkbox" name="CustOrder" value="25"><label class="ChckContainer">Mojo's (6 piece)</label>
                <input type="checkbox" name="CustOrder" value="26"><label class="ChckContainer">Mojo's (12 piece)</label>
                <input type="checkbox" name="CustOrder" value="27"><label class="ChckContainer">Orbit Wings (5 piece)</label>
                <input type="checkbox" name="CustOrder" value="28"><label class="ChckContainer">Orbit Wings (10 piece)</label>
                <input type="checkbox" name="CustOrder" value="29"><label class="ChckContainer">Boneless Wings (6 piece)</label>
                <input type="checkbox" name="CustOrder" value="30"><label class="ChckContainer">Boneless Wings (12 piece)</label>
                <input type="checkbox" name="CustOrder" value="31"><label class="ChckContainer">Mozzarella Stix (4 piece)</label>
                <input type="checkbox" name="CustOrder" value="32"><label class="ChckContainer">Mozzarella Stix (8 piece)</label>
                <input type="checkbox" name="CustOrder" value="33"><label class="ChckContainer">Garlic Bread</label>
            
            </div>
            
            <div>
            <p style="text-align:center;">All You Can Eat!</p>
            
                <input type="checkbox" name="CustOrder" value="18">Buffet
                <input type="checkbox" name="CustOrder" value="12">Salad Bar
            
            </div>
        
            <div>
            <!--Log in and clear buttons-->
            <input class="button" type="submit" value="Submit">
            </div>
            
    </form>
    </div>
        </div>
        </div>
            
    </body>
</html>