package com.kenakata.shop.controller;



import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;






@Controller
public class UserController{

	

	@GetMapping("/contact")
	public String contact()
	{
		return "contact";
	}
	@GetMapping("/buy")
	public String buy()
	{
		return "buy";
	}
	@GetMapping("/cart")
	public String cart() {
		return "cartnew";
	}
	
	
	@GetMapping("delete")
	public String remove(@RequestParam("id") int id)
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kenakata","root","");
			
			
			PreparedStatement pst = con.prepareStatement("delete from cart where id = ? ;");
			pst.setInt(1, id);
			int i = pst.executeUpdate();
			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/cart";
	}
	


	
	
	@GetMapping("/user/products")
	public String getproduct(Model model) {
		return "uproduct";
	}
	
	
	@GetMapping("/register")
	public String registerUser()
	{
		return "register";
	}
	
	@RequestMapping(value = "newuserregister", method = RequestMethod.POST)
	public String newUseRegister(@RequestParam("username") String username,@RequestParam("email") String email,@RequestParam("password") String password,@RequestParam("address") String address)
	{
		try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kenakata","root","");
			PreparedStatement pst = con.prepareStatement("insert into users(username,password,email,address) values(?,?,?,?);");
			pst.setString(1,username);
			pst.setString(2, password);
			pst.setString(3, email);
			pst.setString(4, address);
			

			
			int i = pst.executeUpdate();
			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		
		return "redirect:/";
	}
	
	
	

		
	
	@RequestMapping(value = "data",method=RequestMethod.POST)
	public String cartdb(@RequestParam("id") int id,@RequestParam("name") String name,@RequestParam("image") String picture, @RequestParam("quantity") int quantity, @RequestParam("price") int price,@RequestParam("categoryid") int categoryid) 
	
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kenakata","root","");
			
			PreparedStatement pst = con.prepareStatement("insert into cart(id,name,image,quantity,price,categoryid) values(?,?,?,?,?,?);");
			pst.setInt(1, id);
			pst.setString(2, name);
			pst.setString(3, picture);
			pst.setInt(4, quantity);
			pst.setInt(5, price);
			pst.setInt(6, categoryid);
			
			int i = pst.executeUpdate();			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/index";
	}
	


}


