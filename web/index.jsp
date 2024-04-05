<!--
* Class: CIST 2931
* Term: Fall 2022
* Instructor: Mr. Ronald Enz
* Author: Justin Feagans Co-author: Kimora Bailey
-->

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
                width: 90%;
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
            .menu-container{
                max-width: 1200px;
                margin: 0 auto;
                padding: 1.5em;
            }
            .menu{
                font-family: sans-serif;
                font-size: 14px;
            }
            .menu-group-heading{
                margin: 0;
                padding-bottom: 1em;
                border-bottom: 2px solid #ccc;
            }
            .menu-group{
                display: grid;
                grid-template-columns: 1fr;
                gap: 1.5em;
                padding: 1.5em 0;
            }
            .menu-item{
                display: flex;                               
            }
            .menu-item-image{
                width: 160px;
                height: 160px;
                flex-shrink: 0;
                object-fit: cover;
                margin-right: 1.5em;
            }
            .menu-item-text{
                flex-grow: 1;
            }
            .menu-item-heading{
                display: flex;
                justify-content: space-between;
                margin: 0;
            }
            .menu-item-name{
                margin-right: 1.5em;
            }
      
        </style> 
    
    </head>
    
    <body>
        
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
                        <li><a href="GuestOrder.jsp">Your Order</a></li>
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
        <h1 style="color:green;font-family:magneto;font-size:75px;text-align:center;">Welcome to Pizza Planet!</h1>
        <div class="menu-container">
            <div class="menu">
                <h2 class="menu-group-heading">Try Our New Pizza!</h2>
                <div class="menu-group">
                    <div class="menu-item">
                    <img src="cinnamon.jpg" alt="CinnaS" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Cinn-a-moon Pizza (Small)</span>
                            <span class="menu-item-price">$3.99</span>
                        </h3>
                        <p> Pizza Planet's Cinn-a-moon Pizza are sweet, irresistible treats. Order them for dessert or for parties.</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="cinnamon.jpg" alt="CinnaL" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Cinna-a-moon Pizza (Large)</span>
                            <span class="menu-item-price">$8.99</span>
                        </h3>
                        <p> Pizza Planet's Cinn-a-moon Pizza are sweet, irresistible treats. Order them for dessert or for parties.</p>
                    </div>
                    </div>
                    
                </div>
                
                <h2 class="menu-group-heading">Create Your Own Pizza</h2>
                <div class="menu-group">
                    <div class="menu-item">
                    <img src="custom.jpg" alt="CustomP" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Personal</span>
                            <span class="menu-item-price">$3.99</span>
                        </h3>
                        <p> Create your own Personal Pizza.<br> You get to be the chef!</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="smallcreate.jpg" alt="CustomS" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Small</span>
                            <span class="menu-item-price">$6.99</span>
                        </h3>
                        <p> Create your own Personal Pizza.<br> You get to be the chef!</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="mediumcreate.jpg" alt="CustomM" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Medium</span>
                            <span class="menu-item-price">$9.99</span>
                        </h3>
                        <p> Create your own Personal Pizza.<br> You get to be the chef!</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="largecreate.jpg" alt="CustomL" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Large</span>
                            <span class="menu-item-price">$12.99</span>
                        </h3>
                        <p> Create your own Personal Pizza.<br> You get to be the chef!</p>
                    </div>
                    </div>
                </div>
                
                <h2 class="menu-group-heading">Specialty Pizza</h2>
                <div class="menu-group">
                    <div class="menu-item">
                    <img src="specialp.jpg" alt="SpecialP" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Personal</span>
                            <span class="menu-item-price">$6.49</span>
                        </h3>
                        <p> You know what makes our pizza special?<br> We get to make the pizza! <br> You don't like it? <br> Too bad! No refunds!</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="specials.jpg" alt="SpecialS" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Small</span>
                            <span class="menu-item-price">$9.99</span>
                        </h3>
                        <p> You know what makes our pizza special?<br> We get to make the pizza! <br> You don't like it? <br> Too bad! No refunds!</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="specialm.jpg" alt="SpecialM" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Medium</span>
                            <span class="menu-item-price">$13.99</span>
                        </h3>
                        <p> You know what makes our pizza special?<br> We get to make the pizza! <br> You don't like it? <br> Too bad! No refunds!</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="specialL.jpg" alt="SpecialL" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Large</span>
                            <span class="menu-item-price">$16.99</span>
                        </h3>
                        <p> You know what makes our pizza special?<br> We get to make the pizza! <br> You don't like it? <br> Too bad! No refunds!</p>
                    </div>
                    </div>
                    
                </div>
                
                <h2 class="menu-group-heading">Drinks</h2>
                <div class="menu-group">
                   <div class="menu-item">
                    <img src="kidscup.jpg" alt="KidsC" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Kids</span>
                            <span class="menu-item-price">$1.20</span>
                        </h3>
                        <p> Our drinks include: lemonade, fruit punch, water, hawaiian punch, fanta, sprite, pepsi, coca-cola and that's it!</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="Mcup.jpg" alt="MCup" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Medium</span>
                            <span class="menu-item-price">$1.50</span>
                        </h3>
                        <p> Our drinks include: lemonade, fruit punch, water, hawaiian punch, fanta, sprite, pepsi, coca-cola and that's it!</p>
                    </div>
                    </div> 
                    
                    <div class="menu-item">
                    <img src="Lcup.jpg" alt="LCup" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Large</span>
                            <span class="menu-item-price">$1.80</span>
                        </h3>
                        <p> Our drinks include: lemonade, fruit punch, water, hawaiian punch, fanta, sprite, pepsi, coca-cola and that's it!</p>
                    </div>
                    </div> 
                    
                    <div class="menu-item">
                    <img src="bottle.jpg" alt="Bottle" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">2-Liter Bottle </span>
                            <span class="menu-item-price">$2.49</span>
                        </h3>
                        <p> Our drinks include: lemonade, fruit punch, water, hawaiian punch, fanta, sprite, pepsi, coca-cola and that's it!</p>
                    </div>
                    </div> 
                  
                    
                </div>
                
                <h2 class="menu-group-heading">Sides & More!</h2>
                <div class="menu-group">
                    <div class="menu-item">
                    <img src="calzone.jpg" alt="Calzone" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Calzone</span>
                            <span class="menu-item-price">$6.99</span>
                        </h3>
                        <p> Fresh Homemade dough stuffed with a blend of provolone & mozzarella cheeses, pizza sauce, two toppings, and topped with grated parmesan cheese.</p>
                    </div>
                    </div> 
                    
                    <div class="menu-item">
                    <img src="sub.jpg" alt="ToastySub" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Toasty Sub</span>
                            <span class="menu-item-price">$4.99</span>
                        </h3>
                        <p> A twist on American classics featuring one Cold Cut Combo, two Black Forest Ham, two Turkey Breast, one Tuna and two Italian B.M.T.® on Tomato Basil.</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="planetsamp.jpg" alt="PlanetSamp" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Planet Sampler</span>
                            <span class="menu-item-price">$12.99</span>
                        </h3>
                        <p> Our Planet Sampler is our most out of this world creation! It's so bizarre. No seriously. How did we make this?</p>
                    </div>
                    </div> 
                    
                    <div class="menu-item">
                    <img src="chicalf.jpg" alt="Chicalf" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Chicken Alfredo</span>
                            <span class="menu-item-price">$6.99</span>
                        </h3>
                        <p>Juicy grilled chicken is served warm on a bed of fettuccine pasta tossed with rich Alfredo sauce topped with Parmesan cheese.</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="chicpes.jpg" alt="ChicPes" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Chicken Pesto</span>
                            <span class="menu-item-price">$6.99</span>
                        </h3>
                        <p> Chicken Breast grilled in Pesto, Romaine Lettuce, Tomatoes, Roasted Red Peppers, Feta and Greek Seasoning!</p>
                    </div>
                    </div> 
                    
                    
                    <div class="menu-item">
                    <img src="cinncomet.jpg" alt="CinnComet" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Cinnamon Comets</span>
                            <span class="menu-item-price">$3.99</span>
                        </h3>
                        <p>At this point, just don't question. It's good so just eat it. Trust us! </p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="chbread.jpg" alt="ChBread" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Cheese Breads (Small)</span>
                            <span class="menu-item-price">$5.99</span>
                        </h3>
                        <p> Pizza Planet's oven-baked Stuffed Cheesy Bread satisfies with an exquisite cheese blend, hearty bread, and savory seasonings.</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="chbread.jpg" alt="ChBread" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Cheese Breads (Large)</span>
                            <span class="menu-item-price">$9.99</span>
                        </h3>
                        <p> Pizza Planet's oven-baked Stuffed Cheesy Bread satisfies with an exquisite cheese blend, hearty bread, and savory seasonings.</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="mojo.jpg" alt="Mojo" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Mojo's (6-piece)</span>
                            <span class="menu-item-price">$1.69</span>
                        </h3>
                        <p> Pizza Planet's exclusive: sliced potatoes, lightly battered & fried to a golden brown</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="mojo.jpg" alt="Mojo" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Mojo's (12-piece)</span>
                            <span class="menu-item-price">$2.79</span>
                        </h3>
                        <p> Pizza Planet's exclusive: sliced potatoes, lightly battered & fried to a golden brown</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="orbwings.jpg" alt="OrbWings" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Orbit Wings (5-piece)</span>
                            <span class="menu-item-price">$4.99</span>
                        </h3>
                        <p>Some of you have never ordered a large combo of Spicy wings with soju, and it shows.</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="orbwings.jpg" alt="OrbWings" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Orbit Wings (10-piece)</span>
                            <span class="menu-item-price">$8.99</span>
                        </h3>
                        <p>Some of you have never ordered a large combo of Spicy wings with soju, and it shows.</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="boneless.jpg" alt="Boneless" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Boneless Wings (6-piece)</span>
                            <span class="menu-item-price">$4.99</span>
                        </h3>
                        <p>Boneless chicken wings tossed in your choice of sauce.</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="boneless.jpg" alt="Boneless" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Boneless Wings (12-piece)</span>
                            <span class="menu-item-price">$8.99</span>
                        </h3>
                        <p>Boneless chicken wings tossed in your choice of sauce.</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="mozza.jpg" alt="Mozza" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Mozzarella Stix (4-piece)</span>
                            <span class="menu-item-price">$2.99</span>
                        </h3>
                        <p> Crispy outside with melty Mozzarella inside, this favorite is served with marinara sauce!</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="mozza.jpg" alt="Mozza" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Mozzarella Stix (8-piece)</span>
                            <span class="menu-item-price">$5.99</span>
                        </h3>
                        <p>Crispy outside with melty Mozzarella inside, this favorite is served with marinara sauce!</p>
                    </div>
                    </div>
                    
                    <div class="menu-item">
                    <img src="garlic.jpg" alt="GB" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Garlic Bread</span>
                            <span class="menu-item-price">$1.29</span>
                        </h3>
                        <p>Seeded Italian loaf coated in butter from end to end, then sprinkled with a blend of parmesan cheese, mozzarella, and garlic salt.</p>
                    </div>
                    </div>
                    
                    <h2 class="menu-group-heading">Salad Bar & Buffet</h2>
                    <div class="menu-group">
                        
                        <div class="menu-item">
                    <img src="salad.jpg" alt="Salad" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Salad Bar</span>
                            <span class="menu-item-price">$5.99</span>
                        </h3>
                        <p> Our salad bars provide lettuce, chopped tomatoes, assorted raw, sliced vegetables (such as cucumbers, carrots, celery, olives and green or red bell peppers), dried bread croutons, bacon bits, shredded cheese, and various types of salad dressing.</p>
                    </div>
                    </div>
                        
                        <div class="menu-item">
                    <img src="buffet.jpg" alt="Buffet" class="menu-item-image">
                    <div class="menu-item-text">
                        <h3 class="menu-item-heading">
                            <span class="menu-item-name">Buffet</span>
                            <span class="menu-item-price">$8.35</span>
                        </h3>
                        <p> Any of the food you can get for a classic buffet you can also choose to serve as one of our plated meals to extend a more formal feel to your event.</p>
                    </div>
                    </div>
                        
                    </div>
                </div>
            </div>
        </div>
        </div>
    </body>
</html>
