<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
          <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <title>Document</title>
    
</head>
<body>

<section class="wrapper">
        <div class="container-fostrap">
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img th:src="@{/images/logo.png}"  src="../static/images/logo.png" width="auto" height="40" class="d-inline-block align-top" alt=""/>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
		
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <h4>Welcome ${ username } </h4>
            <ul class="navbar-nav mr-auto"></ul>
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" th:href="@{/}" href="#">Home</a>
                </li>
                 <li class="nav-item active">
                    <a class="nav-link" href="profileDisplay" >Profile</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" sec:authorize="isAuthenticated()" href="logout">Logout</a>
                </li>
               
            </ul>

        </div>
    </div>
</nav>
<div class="bg mt-5">
  <div class="bg-product mt-5">
    <div class="container product">
      <div class="row">
        <div id="sliderproduct" class="carousel slide " data-ride="carousel" data-interval="10000">
          <ol class="carousel-indicators">
            <li data-target="#sliderproduct" data-slide-to="0" class="active"></li>
            <li data-target="#sliderproduct" data-slide-to="1"></li>
            <li data-target="#sliderproduct" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox" data-interval="10000000">
            <div class="carousel-item active">
              <div class="container text-center">
                <div class="row">
                  <div class="col-sm-6 image">
                    <div class="item">
                      <h1>Today Deal</h1>
                      <img class="img-fluid" src="https://static-01.daraz.com.bd/p/d6d6c64dea5fc374b6c478497b65dbd1.jpg" alt="">
                    </div><!--enditem-->
                  </div><!--endcol-->
                  <div class="col-sm-6">
                    <div class="top d-flex justify-content-center">
                      <a href=""><b>2</b> <br>days</a>
                      <a href=""><b>20</b> <br> hours</a>
                      <a href=""><b>15</b> <br>min</a>
                      <a href=""><b>2</b> <br> sec</a>
                    </div><!--endtop-->
                    <div class="details">
                      <h2 class="cr3"> Blue Panjabi</h2>
                      <p class="cr4"> Genuine Cotton,<br> Eid Collection</p>
                      <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                      </div><!--endrating-->
                      <p class="cr1">$6000</s></p>
                  <a href="/user/products" class="btn btn-food">Buy Now</a>
                </div><!--enddetails-->
              </div><!--endcol-->
            </div><!--endrow-->
          </div><!--endcontainer-->
        </div><!--endcarousel-item-->
        <div class="carousel-item">
          <div class="container text-center">
            <div class="row">
              <div class="col-sm-6 image">
                <div class="item">
                  <h1>Today Deal</h1>
                  <img class="img-fluid" src="https://jotodeal.com/wp-content/uploads/2021/04/Walton-Discount-Offer.jpg" alt="">
                </div><!--enditem-->
              </div><!--endcol-->
              <div class="col-sm-6">
                <div class="top d-flex justify-content-center">
                  <a href=""><b>2</b> <br>days</a>
                  <a href=""><b>20</b> <br> hours</a>
                  <a href=""><b>15</b> <br>min</a>
                  <a href=""><b>2</b> <br> sec</a>
                </div><!--endtop-->
                <div class="details">
                  <h2 class="cr3">Air Cooler</h2>
                  <p class="cr4">Walton,<br>Eid Offer</p>
                  <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div><!--endrating-->
                  <p class="cr1">$15000</s></p>
              <a href="/user/products" class="btn btn-food">Buy Now</a>
            </div><!--enddetails-->
          </div><!--endcol-->
        </div><!--endrow-->
      </div><!--endcontainer-->
    </div><!--endcarousel-item-->
      <div class="carousel-item">
          <div class="container text-center">
            <div class="row">
              <div class="col-sm-6 image">
                <div class="item">
                  <h1></h1>
   <img class="img-fluid" src="https://igloobd.com/product_images/1584292623.png" alt="">
                </div><!--enditem-->
              </div><!--endcol-->
              <div class="col-sm-6">
                <div class="top d-flex justify-content-center">
                  <a href=""><b>2</b> <br>days</a>
                  <a href=""><b>20</b> <br> hours</a>
                  <a href=""><b>15</b> <br>min</a>
                  <a href=""><b>2</b> <br> sec</a>
                </div><!--endtop-->
                <div class="details">
                  <h2 class="cr3">Ice Cream</h2>
                  <p class="cr4">Igloo,<br>French Vanilla</p>
                  <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div><!--endrating-->
                  <p class="cr1">$500</s></p>
              <a href="/user/products" class="btn btn-food">Buy Now</a>
            </div><!--enddetails-->
          </div><!--endcol-->
        </div><!--endrow-->
      </div><!--endcontainer-->
    </div><!--endcarousel-item-->
    <a class="carousel-control-prev fa fa-angle-left" href="#sliderproduct" role="button" data-slide="prev">
    </a>
    <a class="carousel-control-next fa fa-angle-right" href="#sliderproduct" role="button" data-slide="next">
    </a>
  </div><!--endslidesliderproduct-->
</div><!--endrow-->
</div><!--endcontainer-->
</div><!--endbg-product-->
</div>
</div>


<style>
:root{
  --cr1:#F36E45;
  --cr2:#fff;
  --cr3:#000000da;
  --cr4:#000000a1;
  --cr5:#BEB4B1;
  --fs1:34px;
  --fs2:24px;
  --fs3:20px;
  --fs4:16px;
  --fs5:14px;
}
body {
  background: #e5e5e5;
}
/* the same attribute */
.cr1{
  color: var(--cr1);
}
.c2{
  color:  var(--cr2);
}
.cr3{
  color:  var(--cr3);
}
.cr4{
  color:  var(--cr4);
}
.cr5{
  color:  var(--cr5);
}
.fs1{
  font-size: 34px;
}
.fs2{
  font-size: 24px;
}
.fs3{
  font-size: 20px;
}
.fs4{
  font-size: 16px;
}
.fs5{
  font-size: 14px;
}
/* end the same attribute */
@font-face {
  src: url(ProductSansRegular_0.ttf);
  font-family: product;
}
*{padding: 0px;margin: 0px;box-sizing: border-box;font-family: segoe ui}
body,html{width:100%;height:100%;}
[class*="container"]{
  max-width: 1170px !important;
}

.bg-product{
  /* SET Height cho nó rồi bảo sao ko lỗi? */
  /*height: 446px;*/
  background: #d1d7f5;
  /* overflow: hidden; */
}
#sliderproduct{
  width: 100%;
}
#sliderproduct .carousel-inner {
  overflow: visible;
}

#sliderproduct .col-sm-6.image {
  background: #fff;
  box-shadow: 0px 4px 8px 0px #959595;
  position: relative;
  /* Thêm cái của nợ này vào bảo sao nó ko tràn bờ đê */
  /*top: -44px;
  padding: 100px;
  padding-top: 40px;*/
}
.item {
  padding: 20px 20px 40px 20px;
}

.col-sm-6.image .item img.img-fluid {
  /* Ai mướn thêm cái vào làm phá bố cục css của người ta.. mún trang web đẹp thì phải lựa cái ảnh đẹp đẹp vào rồi set cái độ rộng cho nó vừa là được rồi */
  /*min-width: 100%;*/
  width: 315px;
}
.col-sm-6.image h1 {
  margin-bottom: 20px;
}


#sliderproduct .top a {
  text-decoration: none;
  text-transform: uppercase;
  font-size: 18px;
  padding: 14px 22px;
  background: #e0794f;
  box-sizing: border-box !important;
  text-align: center;
  margin: 0px 2px;
  display: block;
  color: #fff;
  width: 96px;
}

#sliderproduct .col-sm-4.mr-auto {
  margin-top: 22px;
}

*{}

#sliderproduct p.cr1 {
  font-size: 20px;
  font-weight: 500;
  margin-bottom: 30px;
}

#sliderproduct .col-sm-6:last-child {
  /* Cần nâng cao thêm kiến thức về sử dụng padding */
  padding-top: 27px;
  padding-bottom: 27px;
}
#sliderproduct .details p.d-inline-block {
  color: #e0794f;
}

#sliderproduct .details .fa {
  color: #e0794f;
  padding: 0px 3px;
}

#sliderproduct .rating {
  margin: 23px 0px;
}

#sliderproduct .details .btn {
  text-transform: uppercase;
  font-weight: 400;
  padding: 16px 22px;
  background: #e0794f;
  color: #fff;
  border-radius: 81px;
  font-size: 14px;
  display: inline-block;
}

#sliderproduct .details h2 {
  margin: 25px 0px 30px 0px;
  font-size: 24px;
  font-weight: 700;
}

#sliderproduct .details p.cr4 {
  font-weight: 500;
  font-size: 16px;
  line-height: 19px;
  margin-bottom: 0px;
}
#sliderproduct .carousel-item{
  transition: 0.4s;
}


#sliderproduct a.carousel-control-prev, #sliderproduct a.carousel-control-next {
  border-radius: 50%;
  background-color: brown;
  width: 46px;
  height: 46px;
  font-size: 30px;
  text-align: center;
  line-height: 40px;
  opacity: 1;
  top: 50%;
  transform: translate(-50%,-60%);
}

.bg {
  height: 570px;
  overflow: hidden;
}

#sliderproduct ol.carousel-indicators {
  display: none;
}

.footer {
  position: fixed;
  bottom: 0;
  padding: 15px;
  width: 100%;
  text-align: center;
  background-color:#292929;
  color: #fff;
  font-family: sans-serif;
  font-size: 14px;
}
.footer img {
  width: 26px;
  position: relative;
  top: 0px;
  left: -3px;
}
.footer a {
  color: #fff;
  font-weight: bold;
  text-decoration: none;
  
  
}</style>
<div class="row">
   <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4" data-aos="zoom-in-down">
                            <div class="card">
                                <a class="img-card">
                                    <img src="https://www.gizmochina.com/wp-content/uploads/2019/08/Walton-Primo-R6-Max.jpg" />

                                </a>
                                <div class="card-content">
                                    <h4 class="card-title">
                                        Best deal
                                    </h4>
                                    <p class="">
                                       checkout our products
                                        <br>
                                    </p>
                                </div>
                                <div class="card-read-more">
                                    <a href="/user/products" class="btn btn-link btn-block">
                                        GO
                                    </a>
                                </div>
                            </div>
                        </div>
<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4" data-aos="zoom-in-down">
                            <div class="card">
                                <a class="img-card">
                                    <img src="data:image/jpeg;base64,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" />

                                </a>
                                <div class="card-content">
                                    <h4 class="card-title">
                                        Contact us
                                    </h4>
                                    <p class="">
                                      find out us.
                                        <br>
                                    </p>
                                </div>
                                <div class="card-read-more">
                                    <a href="/contact" class="btn btn-link btn-block">
                                        Contact
                                    </a>
                                </div>
                            </div>
                        </div>

	<style>
        @import url('https://fonts.googleapis.com/css2?family=Titillium+Web:wght@200;300&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Arimo&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@300&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Signika:wght@300&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Titillium Web', sans-serif;
        }

        html,
        body {
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            height: 100%;
            width: 100%;

            font-family: 'Roboto', sans-serif;
            font-weight: 400;
        }
        
         ::selection {
            color:white;
            background: black;
            font-weight: 700;
        }

        .wrapper {
            display: table;
            height: 100%;
            width: 100%;
        }

        .container-fostrap {
            display: table-cell;
            background-color: #b1ade2;
            background-image: linear-gradient(315deg, #b1ade2 0%, #7ddff8 74%);
            padding: 1em;
            text-align: center;
            vertical-align: middle;
        }

        h1.heading {
            color: #fff;
            font-size: 1.15em;
            font-weight: 900;
            margin: 0 0 0.5em;
            color: #505050;
            text-shadow: 0px 4px 3px rgba(0, 0, 0, 0.4),
                0px 8px 13px rgba(0, 0, 0, 0.1),
                0px 18px 23px rgba(0, 0, 0, 0.1);
        }

        @media (min-width: 450px) {
            h1.heading {
                font-size: 3.55em;
            }
        }

        @media (min-width: 760px) {
            h1.heading {
                font-size: 3.05em;
            }
        }

        @media (min-width: 900px) {
            h1.heading {
                font-size: 3.25em;
                margin: 0 0 0.3em;
            }


        }

        .card {
            display: block;
            width: auto;
            margin: 20px;
            line-height: 1.42857143;
            background-color: #fff;
            border-radius: 2px;
            min-width: 15rem;
            min-height: 400px;
            overflow: hidden;
            transition: 0.5s ease;
            animation: start_animation 0.5s ease 1;
            box-shadow: rgba(0, 0, 0, 0.09) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
        }

        .cfont {
            font-family: 'Arimo', sans-serif;
        }

        .card:hover {
            box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
        }

        .img-card {
            width: 80%;
            height: 225px;
            min-width: 14rem;
            border-top-left-radius: 2px;
            border-top-right-radius: 2px;
            display: flex;
            overflow: hidden;
        }

        .img-card img {
            margin-top: 15px;
            width: fit-content;
            height: 200px;
            object-fit: cover;
            transition: all .25s ease;
            filter: drop-shadow(0.35rem 0.35rem 0.4rem rgba(0, 0, 0, 0.5));
        }

        .card-content {
            padding: 15px;
            text-align: left;

        }

        .card-content p {
            font-family: 'M PLUS Rounded 1c', sans-serif;
        }

        .card-title {
            font-family: 'Signika', sans-serif;
            margin-top: 0px;
            font-weight: 600;
            font-size: 1.65em;
        }

        .card-title a {
            color: #000;
            text-decoration: none !important;
        }

        .card-read-more {
            border-top: 1px solid #D4D4D4;
        }

        .card-read-more a {
            text-decoration: none !important;
            padding: 10px;
            font-weight: 600;
            text-transform: uppercase
        }


        .navbar {
            background-color: black;
            opacity: 0.9;
            z-index: 999;
            width: 100%;
        }

        .navbar::before {
            content: "";
            position: absolute;
            top: 0%;
            bottom: 0%;
            left: 0;
            right: 0;
            z-index: -1;
        }

        .nav-item a {
            color: white;
            font-weight: 500;
            font-size: 17px;
            transition: 0.5s ease;
        }

        .nav-item a:hover {
             color: rgb(0, 195, 255);
            font-weight: bold;
            transition: 0.5s ease-in-out;
            
        }

        .navbar-brand {
            color: white;
            font-weight: 600;
            font-size: 20px;
        }

        .nav-item {
            margin-right: 20px;
        }	
        </section>
</div>	
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>