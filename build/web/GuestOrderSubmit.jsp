<%-- 
    Document   : GuestOrderSubmit
    Created on : Nov 30, 2022, 12:13:06 AM
    Author     : bellk
--%>

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
        </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
                        <li><a href="GuestOrder.jsp">Your Order</a></li>
                        <li><a href="SignUp.jsp">Sign up</a></li>
            </ul>
         </nav>
    </div>
</header>
    <!--Banner Image-->
        <img src="banner.jpg" alt="banner photo" height="auto" width="auto" padding="10px"></img>
        <h1 style="color:green;font-family:magneto;font-size:75px;">Order Submitted!</h1>
    </body>
</html>
