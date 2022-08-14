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

<link rel="stylesheet" href="css/style.css">

</head>

 

<body>

 

<!-- --Navbar-Start-- -->

<nav class="navbar navbar-expand-lg bg-light py-2 fixed-top">

<div class="container">

<a class="navbar-brand d-flex justify-content-between align-items-center order-lg-0" href="/index">

<span class="text-uppercase fw-bold text-primary">Kenakata</span>

</a>

 

 

<button class="navbar-toggler border-0 " type="button" data-bs-toggle="collapse"

data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"

aria-label="Toggle navigation">

<span class="navbar-toggler-icon"></span>

</button>

 

 

<div class="collapse navbar-collapse order-lg-1 d-lg-flex justify-content-center justify-content-lg-end"

id="navbarSupportedContent">

<div class="delete-button col-md-2 col-12 text-md-end text-start mt-md-0 mt-3 mt"><a href="/index"

class="shop-now btn text-uppercase rounded-0"><i class="fa-solid fa-arrow-left me-2"></i>    Home</a>


</div>

 

</div>

</div>

</nav>

<!-- --Navbar-End-- -->

 

<section class="main-area container">

<div class="title text-center">

<h2 class="position-relative d-inline-block">Cart & Checkout</h2>

</div>

 
 
 
 
 
    
<div class="cart-items-list row mt-5">

 <%int count = 0;
					try {
						String url = "jdbc:mysql://localhost:3306/kenakata";
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, "root", "");
						Statement stmt = con.createStatement();
						ResultSet rs = stmt.executeQuery("select * from cart");
						 
					%>
					<%
					while (rs.next()) {
						
					
					%> 
 
 
               

<div class="col col-12 cart-item row p-3">

<div class="item-image col-md-2 col-6">

<% String filename = rs.getString(3); %>
               
<img src="../images/<%=filename%>" class="img-fluid w-50" alt="">

</div>

<div class="item-info col-md-10 col-6 d-flex row align-items-center">

<h4 class="col-md-4 col-12"><%=rs.getString(2) %></h4>

<h4 class="price col-md-2 col-12"><%= rs.getInt(5) %></h4>

<div class="quantitity d-flex col-md-4 col-12">

<h4 class="me-3">Quantity

</h4>


<%count+=rs.getInt(5);%>


<form action="" class="w-50"> <input type="text" class="w-50" value="1"></form><p class="text-muted">In Stock <%= rs.getInt(4)%></p>

</div>

<div class="delete-button col-md-2 col-12 text-md-end text-start mt-md-0 mt-3 mt">
		<form action="delete" method="get">
							<input type="hidden" name="id" value="<%=rs.getInt(1)%>">
							<input type="submit" value="Delete" class="shop-now btn text-uppercase rounded-0">
       </form>

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

 

 



 

 

<!-- Total Amount -->

<div

class="col col-12 cart-item p-3 d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-between">

<div class="total-amount">

<h3>Total: <%=count %></h3>

</div>

<div class="delete-button me-5">

<a href="/buy" class="shop-now btn text-uppercase ">Checkout</a>

<a href="/index" class="fw-semibold btn text-uppercase ">Continue Shopping</a>

</div>

 

</div>

</div>

</section>

 

<!-- footer -->

<footer class="bg-dark py-5">

<div class="container">

<div class="row text-white g-4">

<div class="col-md-6 col-lg-4">

<a class="text-uppercase text-decoration-none brand text-white" href="index.html">Kenakata</a>

<p class="text-white text-muted mt-3">Kenakata is a newly growing online shop based on dhaka city.
                    In this shop you will get different product based on your own choice in a great discount. We have
                        some festivals on different time of the year. To get updates about our products and discount you can
                        subscribe to our newsletter. !</p>

</div>

 


<div class="col-md-6 col-lg-4">

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