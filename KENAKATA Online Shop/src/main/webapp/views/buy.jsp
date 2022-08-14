<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
</head>
<body >


  <form>
    <div class="form-container">
      <div class="personal-information">
        <h1>Payment Information</h1>
      </div> <!-- end of personal-information -->
           
          <input id="column-left" type="text" name="first-name" placeholder="First Name"/>
          <input id="column-right" type="text" name="last-name" placeholder="Surname"/>
          <input id="input-field" type="text" name="number" placeholder="Card Number"/>
          <input id="column-left" type="text" name="expiry" placeholder="MM / YY"/>
          <input id="column-right" type="text" name="cvc" placeholder="CCV"/>
         
          <div class="card-wrapper"></div>
      
          <input id="input-field" type="text" name="streetaddress" required="required" autocomplete="on" maxlength="45" placeholder="Streed Address"/>
          <input id="column-left" type="text" name="city" required="required" autocomplete="on" maxlength="20" placeholder="City"/>
          <input id="column-right" type="text" name="zipcode" required="required" autocomplete="on" pattern="[0-9]*" maxlength="5" placeholder="ZIP code"/>
          <input id="input-field" type="email" name="email" required="required" autocomplete="on" maxlength="40" placeholder="Email"/>
          <p><button class="button"><a href="/index">SUBMIT</a></button></p>        
    </form>
  </div>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,900,700,500);

body {
  padding: 82px;
  background-color: #ff8a86;
  margin: 0 auto;
  width: 600px;
}

a:link {
  color: red;
  background-color: transparent;
  text-decoration: none;
}

a:visited {
  color: pink;
  background-color: transparent;
  text-decoration: none;
}

a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}

a:active {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}
.button {
  border:2;
  background-color:#dc3545 ;
  padding: 10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 250px;
  
  
}

.body-text {
  padding: 0px 20px 30px 40px;
  font-family: "Roboto";
  font-size: 1em;
  color: #dc3545;
  text-align: center;
  line-height: 1.2em;
}
.form-container {
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.card-wrapper {
  background-color:	#333333;
  width: 98%;
  display: flex;

}
.personal-information {
  
  background-color: #dc3545;
  color: #fff;
  padding: 1px 0;
  text-align: center;
}
h1 {
  font-size: 1.3em;
  font-family: "Roboto"
}
input {
  margin: 1px 0;
  padding-left: 3%;
  font-size: 14px;
}
input[type="text"]{
  display: block;
  height: 50px;
  width: 96.7%;
  border: none;
}
input[type="email"]{
  display: block;
  height: 50px;
  width: 96.7%;
  border: none;
}

#column-left {
  width: 46%;
  float: left;
  margin-bottom: 2px;
}
#column-right {
  width: 47%;
  float: right;
}

@media only screen and (max-width: 480px){
  body {
    width: 100%;
    margin: 0 auto;
  }
  .form-container {
    margin: 0 2%;
  }
  input {
    font-size: 1em;
  }
  #input-button {
    width: 100%;
  }
  #input-field {
    width: 96.5%;
  }
  h1 {
    font-size: 1.2em;
  }
  input {
    margin: 2px 0;
  }
 
  #column-left {
    width: 98%;
    display: block;
    float: none;
  }
  #column-right {
    width:98%;
    display: block;
    float: none;
  }
}</style>
<script>
$('form').card({
    container: '.card-wrapper',
    width: 200%,

    formSelectors: {
        nameInput: 'input[name="first-name"], input[name="last-name"]'
    }
});
</script>
</body>
</html>