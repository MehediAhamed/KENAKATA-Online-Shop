
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import ="java.io.FileOutputStream" %>    
<%@page import=" java.io.ObjectOutputStream" %> 



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

    
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kenakata</title>

    <!-- --font-awesome-- -->
    <script src="https://kit.fontawesome.com/057de2a31d.js" crossorigin="anonymous"></script>
    <!-- --Bootstrap-css-- -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- --Custom-css-- -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>

<style>
@import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap');

:root {
    --sm-font: 'Quicksand', sans-serif;
    --green: #3BB77E;
    --black: #253D4E;
    --light-green: #C3E7D5;
    --red: var(--bs-danger);
    --light-red: #ff8a86;
}

html {
    scroll-behavior: smooth !important;
}

body {
    font-family: var(--sm-font);
}

section {
    margin-top: 90px;
}

.btn:not(.nav-btn button, .active-filter-btn) {
    background-color: #fff;
    color: rgb(85, 85, 85);
    padding: 10px 28px;
    border: 1px solid var(--black);
}

.btn:not(.nav-btn button):hover {
    background-color: var(--red);
    color: #fff;
    border-color: var(--red);
}

/* --Buttons-- */
.bg-primary {
    background-color: var(--red) !important;
}

.text-primary {
    color: var(--red) !important;
}

/* --Navbar-- */
.navbar {
    box-shadow: 0 3px 9px 3px rgba(0, 0, 0, 0.1);
}

.navbar-brand span {
    letter-spacing: 2px;
    font-family: var(--sm-font);
    font-size: 2rem;
}

.nav-btn i {
    color: var(--black);
}

.nav-item {
    border-bottom: 0.5px solid rgba(0, 0, 0, 0.05);
}

.nav-link:hover {
    color: var(--red) !important;
}

.nav-link {
    font-family: var(--sm-font);
    font-weight: 600;
}






#header {
    background: url(../images/cart-red.png) right no-repeat, var(--light-red);
    background-size: 60rem;
    margin-top: 85px;
    font-family: var(--sm-font);
    color: var(--black);
}

#header h2 {
    font-size: 5rem;
}

#header h3 {
    font-size: 2.5rem;
}

.shop-now {
    background-color: var(--red) !important;
    font-weight: bold;
    color: #fff !important;
    border: 1px solid var(--red) !important;

}

.shop-now:hover {
    border: 1px solid var(--black) !important;
    background-color: transparent !important;
    font-weight: bold;
    color: var(--black) !important;
}

/* --Title-- */
.title h2::before {
    position: absolute;
    content: "";
    width: 40px;
    height: 5px;
    background-color: var(--red);
    left: 43%;
    top: 56px;
}


/* --Collection-- */
.filter-button-group .btn {
    font-weight: 600;
}

.active-filter-btn {
    background-color: var(--red) !important;
    color: #fff !important;
    padding: 10px 28px;
    border: 1px solid var(--red) !important;
}

.filter-button-group .btn:hover {
    color: #fff !important;
}

.collection-img span {
    top: 20px;
    right: 20px;
    width: 46px;
    height: 46px;
    border-radius: 50%;
}

.product-tile {
    color: var(--black) !important;
}

.star {
    font-size: 0.8rem;
}

/* Special */
.special-img span {
    top: 20px;
    right: 20px;
}

.special-list btn {
    padding: 8px 20px !important;
}

.special-img img {
    transition: all 0.3s ease;
}

.special-img img:hover {
    transform: scale(1.2);
}



/* Offers */
#offers {
    background: url(../images/festival.jpg) no-repeat, #FEFDF8;
    background-size: 50rem;
    background-position: right;
    color: var(--black) !important;
}

.offer-btn {
    background-color: #DB3960 !important;
    color: #fff !important;
    font-weight: 600;
}

.offer-btn:hover {
    background-color: transparent !important;
    color: var(--black) !important;
    border: 1px solid #DB3960 !important;
}

#offers .row {
    min-height: 60vh;
}

.offers-content span {
    font-size: 28px;
}

.offers-content h2 {
    font-size: 60px;
    font-family: var(--sm-font);
}


.populer-cart {
    padding: 5px 10px !important;
}

#about {
    background-color: rgba(179, 179, 179, 0.05);
}

/* newsletter */
#newsletter {
    background-color: rgba(179, 179, 179, 0.05);
}

#newsletter p {
    max-width: 600px;
}

#newsletter .input-group {
    max-width: 500px;
}

#newsletter .form-control {
    border-top-left-radius: 25px;
    border-bottom-left-radius: 25px;
}

#newsletter .btn {
    background-color: var(--red);
    color: #fff;
    border-color: var(--red);
}

#newsletter .btn:hover {
    background-color: #000;
    border-color: #000;
}


/* footer */
footer .brand {
    font-family: var(--sm-font);
    letter-spacing: 2px;
}

footer a {
    -webkit-transition: color 0.3s ease;
    -o-transition: color 0.3s ease;
    transition: color 0.3s ease;
}

footer a:hover {
    color: var(--bs-danger) !important;
}

@media (min-width:992px) {
    .nav-item {
        border-bottom: 0;
    }


}

@media (max-width:992px) {

    .navbar-brand span {
        font-size: 1.5rem;
    }

    .navbar {
        width: 100vw !important;
    }

    #header {
        background-color: #ff8a86 !important;
        background-image: none;
        margin-top: 85px;
        font-family: var(--sm-font);
        color: var(--black);
    }
}</style>

    <!-- --Navbar-Start-- -->
    <nav class="navbar navbar-expand-lg bg-light py-2 fixed-top">
        <div class="container">
            <a class="navbar-brand d-flex justify-content-between align-items-center order-lg-0" href="#collection">
                <span class="text-uppercase fw-bold text-primary">Kenakata</span>
            </a>


            <button class="navbar-toggler border-0 " type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


            <div class="collapse navbar-collapse order-lg-1 d-lg-flex justify-content-center justify-content-lg-evenly"
                id="navbarSupportedContent">
                <ul class="navbar-nav  mb-2 mb-lg-0 order-md-1 order-lg-0">
                    <li class="nav-item px-2 py-2">
                        <a class="nav-link text-uppercase text-dark active" aria-current="page" href="#header">Home</a>
                    </li>
                    <li class="nav-item px-2 py-2">
                        <a class="nav-link text-uppercase text-dark" href="#collection">Collection</a>
                    </li>
                    <li class="nav-item px-2 py-2">
                        <a class="nav-link text-uppercase text-dark" href="#offers">Specials</a>
                    </li>
                    <li class="nav-item px-2 py-2">
                        <a class="nav-link text-uppercase text-dark border-0" href="#populer">Popular</a>
                    </li>
                    <li class="nav-item px-2 py-2">
                        <a class="nav-link text-uppercase text-dark" href="#about">About</a>
                    </li>


                </ul>
                <div class="nav-btn px-40 order-md-0 order-lg-1 ">
                                     
                    
                    <button type="button" class="btn position-relative">
                       <a href="/cart">
                       <i class="fa fa-shopping-cart"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge bg-primary">5</span>
                      </a>
                    </button>
                    
                   
                    <button type="button" class="btn position-relative">
                     <a href="/contact">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                     </a>
                        <span class="position-absolute top-0 start-110 translate-middle badge bg-primary">2</span>
                    </button>
                </div>

            </div>
        </div>
    </nav>
    <!-- --Navbar-End-- -->

    <!-- --Header-Start-- -->
    <header id="header" class="vh-100">
        <div class="container h-100 d-flex align-items-center justify-content-start">
            <div class="text-lg-start text-center">
                <h3 class="text-capitalize ">Best Collection</h3>
                <h2 class="text-uppercase py-2 fw-bold">New Arrival</h2>
                <a href="#collection" class=" shop-now btn mt-3 text-uppercase">Shop Now</a>
            </div>
        </div>
    </header>
    <!-- --Header-End-- -->

    <!-- --Collection-Start-- -->
    <section id="collection" class="py-5">
    
    

        <div class="container">
            <div class="title text-center">
                <h2 class="position-relative d-inline-block">New Collection</h2>
            </div>

           


            <div class="collection-list mt-4 row gx-3  gy-3  ">
          
          
           
					<%
					try {
						String url = "jdbc:mysql://localhost:3306/kenakata";
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, "root", "");
						Statement stmt = con.createStatement();
						
						ResultSet rs = stmt.executeQuery("select * from products");
					%>
					
                    <%
					    while (rs.next()) {
					%>
				
					
                <div class="col-md-6 col-lg-4 best featured" data-aos="zoom-in-up">
                    <div class="card border-muted p-4">
               <form action="data" method="post">
                      <input type="hidden" readonly="readonly" class="form-control border border-success" name="id"  value="<%= rs.getInt(1) %>">
                      
                      <input type="hidden" readonly="readonly" class="form-control border border-success" name="quantity"  value="<%= rs.getInt(5) %>">
                      
                      
                          
                      <input type="hidden" readonly="readonly" class="form-control border border-success" name="categoryid"  value="<%= rs.getInt(4) %>">
                      
                      
                      
                      
                        <div class="collection-img  w-100 d-flex justify-content-center align-items-center">
                           
                            
                         <% String filename = rs.getString("image"); %>
                       
                        <img src="/images/<%=filename%>" class="img-fluid" alt="1.jpg">
               
                        <input type="hidden" readonly="readonly"  class="form-control border border-success" required name="image" value="<%=filename%>" min="1" >
                        
                         
                        </div>

                        <div class="text-start">
                        
                        
             
               
                   
                            <p class="category text-muted mb-0" ><small><%= rs.getString(2) %></small></p>
                            
                           
                            <p class="text-capitalize my-1 product-tile fw-bold"  ><%= rs.getString(8) %></p>
                            
                             <input type="hidden" readonly="readonly"  class="form-control border border-success" required name="name" value="<%= rs.getString(8) %>" min="1" >
                        
                            <div class="rating mt-0">
                                <span class="text-primary"><i class="fas fa-star star"></i></span>
                                <span class="text-primary"><i class="fas fa-star star"></i></span>
                                <span class="text-primary"><i class="fas fa-star star"></i></span>
                                <span class="text-primary"><i class="fas fa-star star"></i></span>
                                <span class="text-muted"><i class="fas fa-star star"></i></span>
                            </div>
                            <div class="price-buy d-flex justify-content-between align-items-center mt-3 h-25">
                            
                            <div>
                                <h2 class="price-tag text-primary fw-bold m-0"><%= rs.getInt(6) %> TK</h2>
                             </div>   
                                
                             <input type="hidden" readonly="readonly"  class="form-control border border-success" required name="price" value="<%= rs.getInt(6) %>" min="1" >
                                
                            
                              
                                <input type="submit" value="Cart +" class="btn fw-bold" >
                                <a href="/buy" class="btn fw-bold">Buy </a>
                             
                                
                                  </form>  
                            </div>
                        </div>
                    </div>
                    
                 
                </div>
               
                    <%
				     }
				    %>
				    
				    
				    
				    	<%
		} catch (Exception ex) {
		out.println("Exception Occurred:: " + ex.getMessage());
		}
		%>
			

	  <!-- --Special Product-End-- -->

    <!-- --Offer-Start-- -->
    <section id="offers" class="py-5" data-aos="zoom-in">
        <div class="container">
            <div
                class="row d-flex align-content-center justify-content-center text-center justify-content-lg-start text-lg-start">
                <div class="offers-content">
                    <span class="">Discount Up to 40%</span>
                    <h2 class="mt-2 mb-4">Grand Sale Offer!</h2>
                    <a href="" class="btn offer-btn">Explore More</a>
                </div>

            </div>
        </div>
    </section>
    <!-- --Offer-End-- -->

	 <!-- --Populer-Start-- -->

    <section id="populer" class="py-5">
                
		<div class="container">
          <!-- --Populer-Start-- -->

    <section id="populer" class="py-5">
        <div class="container">
            <div class="title text-center pt-3 pb-5">
                <h2 class="position-relative d-inline block ms-4">Popular Of This Year</h2>
            </div>

           
            <div class="collection-list mt-4 row gx-3  gy-3  ">
          
          
           
					<%
					try {
						String url = "jdbc:mysql://localhost:3306/kenakata";
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, "root", "");
						Statement stmt = con.createStatement();
						
						ResultSet rs = stmt.executeQuery("select * from products");
					%>
					
                    <%
					    while (rs.next()) {
					%>
				
					
                <div class="col-md-6 col-lg-4 best featured" data-aos="zoom-in-up">
                    <div class="card border-muted p-4">
               <form action="data" method="post">
                      <input type="hidden" readonly="readonly" class="form-control border border-success" name="id"  value="<%= rs.getInt(1) %>">
                      
                      <input type="hidden" readonly="readonly" class="form-control border border-success" name="quantity"  value="<%= rs.getInt(5) %>">
                      
                      
                          
                      <input type="hidden" readonly="readonly" class="form-control border border-success" name="categoryid"  value="<%= rs.getInt(4) %>">
                      
                      
                      
                      
                        <div class="collection-img  w-100 d-flex justify-content-center align-items-center">
                           
                            
                         <% String filename = rs.getString("image"); %>
                       
                        <img src="/images/<%=filename%>" class="img-fluid" alt="1.jpg">
               
                        <input type="hidden" readonly="readonly"  class="form-control border border-success" required name="image" value="<%=filename%>" min="1" >
                        
                         
                        </div>

                        <div class="text-start">
                        
                        
             
               
                   
                            <p class="category text-muted mb-0" ><small><%= rs.getString(2) %></small></p>
                            
                           
                            <p class="text-capitalize my-1 product-tile fw-bold"  ><%= rs.getString(8) %></p>
                            
                             <input type="hidden" readonly="readonly"  class="form-control border border-success" required name="name" value="<%= rs.getString(8) %>" min="1" >
                        
                            <div class="rating mt-0">
                                <span class="text-primary"><i class="fas fa-star star"></i></span>
                                <span class="text-primary"><i class="fas fa-star star"></i></span>
                                <span class="text-primary"><i class="fas fa-star star"></i></span>
                                <span class="text-primary"><i class="fas fa-star star"></i></span>
                                <span class="text-muted"><i class="fas fa-star star"></i></span>
                            </div>
                            <div class="price-buy d-flex justify-content-between align-items-center mt-3 h-25">
                            
                            <div>
                                <h2 class="price-tag text-primary fw-bold m-0"><%= rs.getInt(6) %> TK</h2>
                             </div>   
                                
                             <input type="hidden" readonly="readonly"  class="form-control border border-success" required name="price" value="<%= rs.getInt(6) %>" min="1" >
                                
                            
                              
                                <input type="submit" value="Cart +" class="btn fw-bold" >
                                <a href="/buy" class="btn fw-bold">Buy </a>
                             
                                
                                  </form>  
                            </div>
                        </div>
                    </div>
                    
                 
                </div>
               
                    <%
				     }
				    %>
				    
				    
				    
				    	<%
		} catch (Exception ex) {
		out.println("Exception Occurred:: " + ex.getMessage());
		}
		%>
			
			
    <!-- --Populer-End-- -->


    <!-- --About-Us-Start-- -->
    <section id="about" class="py-5">
        <div class="container">
            <div class="row ">
                <div class="col-lg-6 order-lg-1 text-center text-lg-start" data-aos="fade-left">
                    <div class="">
                        <h2 class="position-relative d-inline-block">About Us</h2>
                    </div>

                    <p class="mt-5 lead text-muted">Kenakata is a newly growing online shop based on dhaka city.</p>
                    <p>In this shop you will get different product based on your own choice in a great discount. We have
                        some festivals on different time of the year. To get updates about our products and discount you can
                        subscribe to our newsletter. !</p>
                    <a href="" class="btn bg-primary text-white fw-bold mt-5">Visit Shop</a>
                </div>

                <div class="col-lg-6 order-lg-0" data-aos="fade-right">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d67311.28499996691!2d90.37329945751193!3d23.777816487608156!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8b087026b81%3A0x8fa563bbdd5904c2!2sDhaka!5e0!3m2!1sen!2sbd!4v1658929979051!5m2!1sen!2sbd"
                        class="container-fluid mt-5 mt-lg-0 h-100" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </section>
    <!-- --About-Us-End-- -->

    <!-- --Newsletter-Start-- -->
    <section id="newsletter" class="py-5">
        <div class="container">
            <div class="d-flex flex-column align-items-center justify-content-center" data-aos="zoom-out">
                <div class="title text-center pt-3 pb-5">
                    <h2 class="position-relative d-inline-block ms-4">Newsletter Subscription</h2>
                </div>

                <p class="text-center text-muted">Want to get more and more discounts? Subscribe now</p>
                <div class="input-group mb-3 mt-3">
                    <input type="text" class="form-control" placeholder="Enter Your Email ...">
                    <button class="btn btn-primary rounded-pill rounded-start" type="submit"><a href="/register" style="color:white">Subscribe</a></button>
                </div>
            </div>
        </div>
    </section>
    <!-- --Newsletter-End-- -->

    <!-- footer -->
    <footer class="bg-dark py-5">
        <div class="container">
            <div class="row text-white g-4">
                <div class="col-md-6 col-lg-3">
                    <a class="text-uppercase text-decoration-none brand text-white" href="#">Kenakata</a>
                    <p class="text-white text-muted mt-3">Kenakata is a newly growing online shop based on dhaka city.
                    In this shop you will get different product based on your own choice in a great discount. We have
                        some festivals on different time of the year. To get updates about our products and discount you can
                        subscribe to our newsletter. !</p>
                </div>

                <div class="col-md-6 col-lg-3">
                    <h5 class="fw-light">Links</h5>
                    <ul class="list-unstyled">
                        <li class="my-3">
                            <a href="#header" class="text-white text-decoration-none text-muted">
                                <i class="fas fa-chevron-right me-1"></i> Home
                            </a>
                        </li>
                        <li class="my-3">
                            <a href="#collection" class="text-white text-decoration-none text-muted">
                                <i class="fas fa-chevron-right me-1"></i> Collection
                            </a>
                        </li>
                        <li class="my-3">
                            <a href="#" class="text-white text-decoration-none text-muted">
                                <i class="fas fa-chevron-right me-1"></i> Blogs
                            </a>
                        </li>
                        <li class="my-3">
                            <a href="#about" class="text-white text-decoration-none text-muted">
                                <i class="fas fa-chevron-right me-1"></i> About Us
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-6 col-lg-3">
                
                    <h5 class="fw-light mb-3">Contact Us</h5>
                    <div class="d-flex justify-content-start align-items-start my-2 text-muted">
                        <span class="me-3">
                            <i class="fas fa-map-marked-alt"></i>
                        </span>
                        <span class="fw-light">
                            Board Bazar, Gazipur.
                        </span>
                    </div>
                    <div class="d-flex justify-content-start align-items-start my-2 text-muted">
                        <span class="me-3">
                            <i class="fas fa-envelope"></i>
                        </span>
                        <span class="fw-light">
                            kenakata.support@gmail.com
                        </span>
                    </div>
                    <div class="d-flex justify-content-start align-items-start my-2 text-muted">
                        <span class="me-3">
                            <i class="fas fa-phone-alt"></i>
                        </span>
                        <span class="fw-light">
                            +9786 6776 236
                        </span>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3">
                    <h5 class="fw-light mb-3">Follow Us</h5>
                    <div>
                        <ul class="list-unstyled d-flex">
                            <li>
                                <a href="https://www.facebook.com/" class="text-white text-decoration-none text-muted fs-4 me-4">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.twitter.com/" class="text-white text-decoration-none text-muted fs-4 me-4">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" class="text-white text-decoration-none text-muted fs-4 me-4">
                                    <i class="fab fa-instagram"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.printest.com/" class="text-white text-decoration-none text-muted fs-4 me-4">
                                    <i class="fab fa-pinterest"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- end of footer -->


    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>
    <!-- --Jquery-- -->
    <script src="js/jquery.js"></script>
    <!-- Isotop Js -->
    <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.js"></script>
    <!-- --Bootstrap-Js-- -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>

    <!-- --Custom-Js-- -->
    <script src="js/script.js"></script>
    
    
    
    
    
    
</body>

</html>