<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import ="java.io.FileOutputStream" %>    
<%@page import=" java.io.ObjectOutputStream" %> 


 <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="com.mysql.*"%>
 <%@ page import="java.util.*"%>
  <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 <%@ page language="java"%>
 <%@ page session="true"%>
 
<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>Document</title>
</head>
<body  style="background-color:#fff" >

	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				th:src="@{/images/logo.png}" src="../static/images/logo.png"
				width="auto" height="80" class="d-inline-block align-top" alt="" />
			</a>
			
<a class="nav-link" href="/admin/products/add" style="background-color:#47d147; color:black; ">Add Product</a>
			    
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto"></ul>
				<ul class="navbar-nav">
				   
					<li class="nav-item active"><a class="nav-link" href="/adminhome" style="background-color: 	  #ff4d94">Home
							Page</a></li>
					<li class="nav-item active"><a class="nav-link" href="/admin" style="background-color:	  	  #ff4d94">Logout</a>
					</li>
					

				</ul>

			</div>
		</div>
	</nav><br>
	<div class="container-fluid">

		
		<table class="table">

			<tr>
				<th scope="col" style="color:#000099" >Serial No.</th>
				<th scope="col" style="color:#000099" >Product Name</th>
				<th scope="col" style="color:#000099" >Category</th>
				<th scope="col" style="color:#000099" >Preview</th>
				<th scope="col" style="color:#000099" >Quantity</th>
				<th scope="col" style="color:#000099" >Price</th>
				<th scope="col" style="color:#000099" >Weight</th>
				<th scope="col" style="color:#000099" >Description</th>
				<th scope="col" style="color:#000099" >Delete</th>
				<th scope="col" style="color:#000099" >Update</th>
			</tr>
			
			
		
			
			<tbody>
				<tr>
			

					<%
					try {
						String url = "jdbc:mysql://localhost:3306/kenakata";
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, "root", "");
						Statement stmt = con.createStatement();
						Statement stmt2 = con.createStatement();
						ResultSet rs = stmt.executeQuery("select * from products");
			        %>			
					
			        <%
					while (rs.next()) {
					%>
					<td>
						<%= rs.getInt(1) %>
					</td>
					<td>
						<%= rs.getString(2) %>
					</td>
					<td>
						<%
							int categoryid = rs.getInt(4);
							ResultSet rs2 = stmt2.executeQuery("select * from categories where categoryid = "+categoryid+";");
							if(rs2.next())
							{
								out.print(rs2.getString(2));
							}
						%>
						
					</td>
					
				   
				   
				   
			
       
           
                <td>
               <% String filename = rs.getString("image"); %>
                <img src="/images/<%=filename%>" width="100" height="100"/>
                </td>
             
     
       
              
					
				
					<td>
						<%= rs.getInt(5) %>
					</td>
					<td>S
						<%= rs.getInt(6) %>
					</td>
					<td>
						<%= rs.getInt(7) %>
					</td>
					<td>
						<%= rs.getString(8) %>
					</td>

					<td>
					<form action="products/delete" method="get">
							<input type="hidden" name="id" value="<%=rs.getInt(1)%>">
							<input type="submit" value="Delete" class="btn btn-danger">
					</form>
					</td>
					<td>
					<form action="products/update" method="get">
							<input type="hidden" name="pid" value="<%=rs.getInt(1)%>">
							<input type="submit" value="Update" class="btn btn-warning">
					</form>
					
					</td>

				</tr>
				<%
				}
				%>

			</tbody>
		</table>
		<%
		} catch (Exception ex) {
		out.println("Exception Occurred:: " + ex.getMessage());
		}
		%>
		
		
		
	
	</div>



	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>