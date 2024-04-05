<%-- 
    Document   : editinfoC
    Created on : Nov 8, 2022, 10:09:56 AM
    Author     : bellk
--%>

<%@page import="Business.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            Customer c1 = (Customer)session.getAttribute("c1");
         %>
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
                transform: translate(-50%, 40%);
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
            
            form .txtfield2{
                position: relative;
                border-bottom: 2px solid #adadad;
                margin: 30px 0;
            }
            
            .txtfield2 input{
                width: 100%;
                padding: 0 5px;
                height: 40px;
                font-size: 16px;
                border: none;
                background: none;
                outline: none;
            }
            
            .txtfield2 label{
                position: absolute;
                top: 50%;
                left: 5px;
                transform: translateY(-180%);
                color: #2691d9;
                font-size: 16px;
                pointer-events: none;
                
            }
           
            .txtfield2 span::before{
                content: '';
                position: absolute;
                top: 40px;
                left: 0;
                width: 100%;
                height: 2px;
                background: #2691d9;
                transition: .5s;
            }
            
            
            
            .txtfield2 input:focus ~ span::before,
            .txtfield2 input:valid ~ span::before{
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Info</title>
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
            <img src="banner.jpg" alt="banner photo" height="auto" width="auto" padding="10px"></img>
        <h1 style="color:green;font-family:magneto;font-size:75px;">Update Customer Information</h1>
            <div class="center">
        
        <form name="PINFO" action="Ceditprofile" method="post">
            <div class="txtfield2">
            <input type="text" readonly="readonly" name="custid" value="<%=c1.getCustomerID()%>" class="input"/><span></span><label>Customer ID</label>
            </div>
            
            <div class="txtfield">
            <input type="password" name="custpass" value="<%=c1.getPassword()%>" class="input"/><span></span><label>Password</label>
            </div>
            
            <div class="txtfield">
            <input type="text" name="cfn" value="<%=c1.getFirstName()%>" class="input"/><span></span><label>First Name</label>
            </div>
            
            <div class="txtfield">
            <input type="text" name="cln" value="<%=c1.getLastName()%>" class="input"/><span></span><label>Last Name</label>
            </div>
            
            <div class="txtfield">
            <input type="text" name="cem" value="<%=c1.getEmail()%>" class="input"/><span></span><label>Email</label>
            </div>
            
            <div class="txtfield">
            <input type="text" name="cph" value="<%=c1.getPhone()%>" class="input"/><span></span><label>Phone</label>
            </div>
            
            <div class="txtfield">
            <input type="text" name="cb" value="<%=c1.getBirthday()%>" class="input"/><span></span><label>Birthday</label>
            </div>
            
            <div class="txtfield">
            <input type="text" name="cstr" value="<%=c1.getStreet()%>" class="input"/><span></span><label>Street</label>
            </div>
            
            <div class="txtfield">
            <input type="text" name="ccity" value="<%=c1.getCity()%>" class="input"/><span></span><label>City</label>
            </div>
            
            <div class="txtfield">
            <input type="text" name="cz" value="<%=c1.getZip()%>" class="input"/><span></span><label>Zip</label>
            </div>
            
            <div class="txtfield">
            <input type="text" name="cstate" value="<%=c1.getState()%>" class="input"/><span></span><label>State</label>
            </div>
            
            <div class="txtfield">
            <input type="text" name="cmr" value="<%=c1.getRole()%>" class="input"/><span></span><label>Movie Role</label>
            </div>
            
            <button class="button" type="submit">Update</button>
        </form>
        </div>
    </body>
</html>
