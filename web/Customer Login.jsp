<%-- 
    Document   : Customer Login
    Created on : Aug 22, 2022, 12:52:33 PM
    Author     : count
--%>

<!--
* Class: CIST 2931
* Term: Fall 2022
* Instructor: Mr. Ronald Enz
* Author: Justin Feagans Co-author: Kimora Bailey
-->
<!-- <%@page contentType="text/html" pageEncoding="UTF-8" %> -->

<!DOCTYPE html>

<html>

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>PizzaPlanet.com/Customer login page</title>

     <style>
           html, body{
               margin: 0;
               padding: 0;
               height: 100vh;
               justify-content: center;
               align-items: center;
               background-image: url('pizpla.png');
               text-align:center;
               font-size: 18px;
               border-radius: 4px;
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
        </style>

</head>

<body>
    <div class="background-image">
        <header>
            <div class="navcontainer">
 <nav>
            <ul>
                <li><a href="index.jsp">Home</a>        
                <li><a href="OrderNow.jsp">Order Now</a></li>
                        <li><a href="Customer Login.jsp">Customer log in</a></li>
                        <li><a href="Employee Login.jsp">Employee log in</a></li>
                        <li><a href="SignUp.jsp">Sign up</a></li>
            </ul>
         </nav>
    </div>
</header>
    <!--Banner Image-->
        <img src="banner.jpg" alt="banner photo" height="auto" width="auto" padding="10px"></img>
        
    <!--Welcome message-->
    
    <h1 style="color:green;font-family:magneto;font-size:75px;">Welcome to Pizza Planet!</h1>

    <h2 style="color:white;">Please log in to continue.</h2>
  
    <!-- call the function validate() in the form on submit attribute -->
<div class="center">
    <form Name="DataForm" id="login" action="CustServlet" method="post">
        <div class="txtfield">
            <!--Label for text box-->
            <input type="text" name="CustomerID" class="DataForm__input" required/>
            <span></span>
            <label>Username</label>
        </div>
        
        <div class="txtfield">
            <!--Label for text box-->
            <input type="password" name="Password" class="DataForm__input" required/>
            <span></span>
            <label>Password</label>
        </div>
        
            <!--Log in and clear buttons-->
            <input class="button" type="submit" value="Log in"><br><br>
            <input class="button" type="reset" value="Clear">
       
            <!--Choice to make an account. Forgot your Password doesn't work yet. Don't worry about it.-->
            <div class="pass">
            <p><a href="#" class="link"> Forgot your password?</a></p>         
            </div>
            
            <div class="Acct">
                <p>Don't have an account?<br> <a class="link" href="SignUp.jsp" id="CreateAcct"> Create one!</a></p>
            </div>
            
    </form>
    </div>
    </div>
</body>

</html>

