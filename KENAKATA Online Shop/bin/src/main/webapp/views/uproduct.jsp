<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
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
<body class="bg-light">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				th:src="@{/images/logo.png}" src="../static/images/logo.png"
				width="auto" height="40" class="d-inline-block align-top" alt="" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto"></ul>
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="/adminhome">Home
							Page</a></li>
					<li class="nav-item active"><a class="nav-link" href="/logout">Logout</a>
					</li>

				</ul>

			</div>
		</div>
	</nav>
	<div class="container-fluid">

		
		<table class="table">

			<tr>
				<th scope="col">Serial No.</th>
				<th scope="col">Product Name</th>
				<th scope="col">Category</th>
				<th scope="col">Preview</th>
				<th scope="col">Quantity</th>
				<th scope="col">Price</th>
				<th scope="col">Weight</th>
				<th scope="col">Descrption</th>
				<th scope="col">Buy</th>
				
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
					<td><img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgVFhUYGBgYGhkZGBkZGhwYHBgcGBgZGRoaGRoeIS4lHB4rIRgaJzgmKy8xNTU1HCQ7QDs0Py40NTEBDAwMEA8QHxISHzQrIyE0NDQ0NDQ0NDQ0NDQxNDQ0NDQ0NDExNDQ1NDQ0NDQ0NDQ0MTQ0NDQ0NTQ0MTQ0NDQxNP/AABEIAOQA3QMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAgMEBQYBBwj/xABFEAABAwIDBQUGAwQHCAMAAAABAAIRAyEEEjEFQVFhcQaBkbHwEyIyocHRQlLhB2KS8RQ0Q0RzorMkU1SCk7LC0hUXI//EABoBAQADAQEBAAAAAAAAAAAAAAABAgMEBQb/xAAnEQACAgEEAQMFAQEAAAAAAAAAAQIRAwQSITFBBVFxEyIyYYEVsf/aAAwDAQACEQMRAD8A9mQhCAEIQgBCEIAQhCAEIQgBCEIAQhCAEIQgBCFyUAIUXF46nTEve1oNhJieio6nbGh+EPd3QNOd+G7esp5oQ/Joq5xj2zSoWSf2rduZAvre25RD2sqi2Vp7iO/VYPW4vcyeogblCx9Dtf8Amp235T4QCrrAbeo1TlDocdA73SZ4cVpDU45cJl45Yy6ZboXJXV0GgIQhACEIQAhCEAIQhACEIQAhCEAIQhAcXF1ZD9oe1quHoNdRfkc58SA0mA02GYEcFVy2q2WhFzkorya5dXlnYbbe0KuKyGo6tRDZrF7WjJItlc0D3p3XkTwlepykZKStE5MbhLaxLnQsVt3tY4Oy0YAuC8iZNxLd0DWSpfanaZn2LDGheRw1ABG/7rG1KcX4xHSY8152q1Mr2w8ds4c2Z3tiR61ZznAve55OpcSY8fVylUzB9bv5plzgJPMD14hFNpcLWF7+tV59Xyzkq+Sa6tABPASmmVHOmL9Pl0XKhbqbjduG+CBqeijPxO6bTu6blbaKJridJHPl4KO98GdIO4kEdN8pDsQBJ9b1EdVJ0v5abz1SiaNlsHtcWOFOsS5pIAedWzAE/ujXjdb6lUDgCCCDcEGQRyXhJqX3d3lz/Xktv2A2+cxwz3SDemSdLXb9Qu/TZpJqMmdeHI/xkeioXF1ekdQIQhACEIQAhcQgBC4VAxu1KVL4nX4C58NyhtLlkqLk6SJ6Csnje0Ncz7GkANxdLie4QB4lUFbbeIzxVc5rYmASzXpoZ5rJ5oo64aHLNW6X9PSi8Deo1TaNFvxVWDq5o8ysA/D0n++QXzYlznO4WMmycNFujaVMQBfI0EG+hi4so+tfRqtB7yNm7buGH9vS4We03GosdV59+0Da9OvUpNpvDmsD3OI0mQCOfw/NWeGf7sSPAcvXesttR3tMRWFiGtLbjfAbbvKyy5W1Rrj0scct13Rrew+Lw+GwrQ92V7znqe67V/wt0vDYC0tfb1ENOV4LgLNvM7tVn8OSdDpqdIAGg5qLXqZ38m29c1WWdxhx/Di10Y4k5c2xFUuc4uddziS77dFX7Sb7p4x7vI8PFWTiBZVe1qzQJJBixBMSdwjVef8AJ4bKz2YIg8QYH5Y15CY8FMxbYaBunQW5W748VDxFZhc1+cRF9SQRroOBHgivtSnYyTAMDKfEz3KySCEYic2WdB73UG/zKge0vEcgPC3klVMawGffcHbwAJMQRcyCBxUc4xl4a8HWZbobGBGuimiaJJeGgA3NjyH3TVSpoTc3t8ky+s11/eFvyjp+buSXPbYy7T8vX95KQo7Vfed38l2hXLS1zSWlpBBFoIMgieiYcW6ySR+7p3TcpLTwJPUR9Spok947P7UGIoMqDUiHDg4fEPXFWi8o7BYnFseRSol9Jzhnn3Q0i2ZrjbNGovoNNV6svUwZN8Tuxy3RsWhCFsXBcXVxAJCj43GspML6jg1o1J8hxPJN7U2jTw9N1Wo6GtE8ydzQN7ibALDse/EPGIxAgAzQozZjdznjQv5qspV0b4cDycvhIuqu0a1e4mhT3f7x44n8g5a9FHp0Gs+ESeJMkpL65KSHx9vuueXPZ6MMaiqiSW1SLmI5j6rP7R2w0vyuJiPy+7/EJ8uCufatPxQeR08N6rdpbOa+C0NBG505fAKkotrg3xUpXJEChVbMtgGN094czeOYKl08SCem4nTlO8KA6g5ph9F3AFkvb1G8LgrNFpHu8ZBM7iCueUZLo1nXaLl7A64FiL9eCzGwhmq4g/lqsbJFoNRx/wDEK7oYpuk2niqDYGIDG1i7UVs0H4iM5Mhu+yXJ3Zg26NxiHBlPUDjJEacVmam3GMEAFzuXwg9fsCn62JY9v/6PDS4SADJYJEAc1Uv2W8yQCW3uARPAwfossm5pNo8T1CGaVOnSGMXtCpUJ9+Afym3jqoTKkTbXWPopb8LBuI9cU3kP237zHNYbkeO/2MM37wdRMWH1SWsHLyUo0yN0/VJDeI9c03EbiNUpxMHhbce5MOpjUWPD7Hw1U7IOMeMeS57P18lKnRZSIlOmfV0sUt3j64qQ2ny9dU+1knU+JRzIcivdhVK2dsp9Z4ZTALjoDYDmeAV7sXYD8Q+A0hkw5+4DlxOq9F2J2eo4YHICSdXOMnu3BdGDDPLz0jfHjlLnwStkbPbQpNpMEBo63NyZ6yp0LqF66VKkdyVcHUIQpJOJFRwAJJgC5PJLWD/antz2GHFFph1c5TGoptgvjrZv/MVWT2qy+LG8k1FeSkxO0ztHGEgn+jYcyxu6o8fjdytbl1V29973WT7BWpPPF8dLaDz71pHP3rnT4tntPGoPZHpDrqiTKZNRc9pKgv8AA453BCQKi7mCiiUx1jiN5Sn4g779bpgv703UqBSRQt1RsfAySd7W91yomIpUnuDjTZmHIA8N2qTUdu81Ge4TY63UM0jHyid7doGVrWgRYAC3FR6mKM6x3qM+sLj+HryOkKDicaMsEmwG6+kQI3KG0jVYtz6J1Z83B1seUcQbHRQMTiw2PdDrX1Gmsbp5KE7HZhAkC3G5HPcSo7quYXkwLdZ38f0XPNQl2i79LwZPzimWjcS3LIaLWJLjadJESOeqSS8uADGRF/iMa7yR3bikUaZcCWyXWIBBdmBlsnpEc5U7DsPxXNyMpETuIuDA0soWGHsYf5OkjdRRCdSqDXIQD8WVzbaXvY8Y+iRUcWAlzJEG4Oh3R1V8zCmAS4xMi2h09eCMVhMv4SQTf8MRbQDhHgrPDF+DKfp2kk62r+cEDs9hmYqq2mHZJa5zcwnNlEgNjU74MWngt3guxdJrg5zi8XlpAymR4i9157h3CjWY6mLtdmYRwEyOc3Xs2BxIqU2vGjgCO9a4NPifjlHk6306GnknFcMcw9FrAGtAAFgAnlxC7kkuEcp1CEKQCEIQCV4F+0naZrY+oJltLLSaOgl/+Zzh3Be81qmVrnH8IJ8BK+YMTiPaVH1Dq97nfxOJ+qxzPij0fTYXkcvZG87EVAKDmzcVDP8AA2D5q4rV4WE7NbU9lUAd8D7HlOhWqxr7+tNyxTtHqZIVL5JLsVzCG4hUxr2BkXJJGsDdKV7ewvqpI2F4Kwg/JcdWjqqgYsTFhH0ShigTO7zQsoFl/SYm6j1sYD3WgKvfjmgGwM26b1VV8brE+PiostGBaYjGmCQeHdMa/JRsTtAMOoIBAkcOipf6dA6kdT37rKIa1zpv1uqyZ0QikuS2q7TIfmYZHPhwPyTDsU6HQNb6cJ04QoQdIHknHVLAQLbxY3tBWTOmNLodp1bRJA1A5+t6n0mmCGmcxGhtIghVtCNTGo684V5sihJLYO4gzaNbjoVWrNN1K2W2z8MMuY6kARPOfvKuQyRp4cG8+Ki4anAHO4VlRp/SDG7fPHVbRiefmnbs7SYCSCJzCQbQIG/ql1aYc2NDqOo0T7G2tYjhcX3jhoiqCIMcOl/5rSjj3WzJYykRMtuwlzToBYki265W1/Z5jc1A05nI6RyDvejuMqh27h/cDh8QkWtrrPzS/wBnuIiu9k/FIjoJE87HxVcb2zo01kVm0rl5XJ6YhcC6u0+aBCEIAXF1CAqO1NbJg8Q78tKof8hXzOzRfSPbSnmwOIb+amW+MBfOD25TB1FisM3g9X05cSYsuhXmD2yQAH+8AI5wNLlZ1xSs6xo9Tcm+TQP2iyTe25JGOJOs+fIKhNRLo1SCCDBG9G2SnGy8bitbmx89bpVTaFrcdePeqT2p04mUVaznGSfpooNHKJZ1McIAEzeTOs8uSgVa5Kjh1kPKgOSrgca66UX3O7XungmA5Lzo0FIkD4fXglZiYEDTdvACZz2hLpOgz56Kpsn7EqhfTWRHBa/ZHwCxBFvDj4rKYVskACBaOtgb/NbDZdMtaRFmmOd+KiK5GWX20XGHb+nKVa0mCeUqvwo4Hh4q0ZYLaJ52WQvKBPhHLcm6jbWm1h64p8jXu70h8efyV2c6fJBxNMOaQdTfvF/NU3Zr3MSHEQS5u/icp+q0DheZt58FncGcuJjg8EfxA/UrN8STOvH92Kcf0eshdSWpS7T5kEIQgBCEICs7QszYeoP3fqF4Dt3ZuWHsG9wcOU2819EY2nmY9vFpHyXju2cPdw4FZZFZ6OhlVo85cuFys8dh8pMARIMKseNQsaPRk/JwldBSEApRCkPtPFce5NgoJUUabuBQcglJLkEpRXcdlOAplOBGi0ZD7QltTTSnaZG8T65LNo6ostNkEF2WPeJEcREGy2eHbAnf9rLCYJ0ObxlbjBvlsdFKGXpFxhPr8lbg2CpMG+19fV1b0n2CujiyokZrJl5CHVEw93BWszjE7muD4+CzVGp/tEz+JoHGHOkT4q/dUienhZZ7Z9EuxdIEXL2yeIzTPgFSXaR14klCTfsewNSklqUu0+WBCEIAQhCASV5j2mwmV7xG8r09Y3tphLh40Nj19QqyXB0aaW2fyeRbUbr0VHXYtNtmllcfWqpazPssWj2IuyqK4n6lHgmzTKqQ0zjSglcPFD0F8HULgXSoJTBLYeKbSmoyYvkfYU8AI8+XBMNJJT4ELNnbj5RIpOuDoAdRYrT7KxkmJsSL8tAVlQ3SRHrVWWDOUSePunjFzHreidGso2jb4Z8ON5HFWtOrbzWXweLBudMojdcK1oVp/Fukc1ZM5ZwLh1Qa/wAt6Ze+fn/JRmVJ1STUiZB8uamyigcxb9ADHTz8VYdk8JnrNfHwyflA81RvqFxAA3/LQLd9lMLlYXRE2HQJjW6fwU1k/pYGvL4NAF1CF2HzgIQhACEIQHFX7awntKTm74kdysUkoSnTs8R27hSQbXFllajdy9W7XbLyvcQPdfcfXwXm2PoZXEQsJKj2tPNSiVJbyTQpypTmpBYqm/kiGnNkh9M6KZl+665g5FQNtorvZlLDDZSfZpLmKGXjAj5E62n+qXlSmj5qGaRggpCE64Xvr90hqWqs6IdCwdLk+rKRh6hmBfcB14KO1t4Nuu5ONknpvFrAKh0ItMLVcI/emOcaq6wWKBjSQBpvgzfisvTeRBn79FOw2IgQBeZJ4jh0TcWeGzWsrW5fayar4mLC9oPeqyniTlB1+tynGX62EqLM/opO2WmyqDnva0azHedb969SwtEMYG8BCynYrZ1vauFtGzx0JWxhdeGNRv3Pm/U8/wBTJtXS/wCikIQtzzAQhCAEIQgBCEICBtXACswsOurTwK8j7Q7NLXGRBEyF7Us52p2KKrS9o94C44jj1CpKNo6dNm2Sp9Hh1amo+X5K92ngyxxBB5fRVD6cbtFkexdq0R3sSSOKkEegkuG75qpohlo3cUaeSXluh5n7KrNYja442hKjguRrf9VBojjRF7a6Hx8EsceOmnoJsJxriO/XxVWbROySblOAfrz5pEdOvFPQIEa71Rs6Io6WWndMSpGHBsesKKApeFpkkeuqobplrhhIAHI8oE71odi7NNV7WgWJkneAq3AYUuIAFzbv5L1Ds/soUWAke8RflyW2LHuf6PI9R1ixQpdvossJhwxoaNGiE+hC7z5Rtt2zqEIQgEIQgBCEIAQhCAFxdQgMJ2y7OAg1WNt+Jo3cxyXl+Lo5SQvokheeds+xpcDWw7Z1LmDXq3j0WcoXyjv02p2/bI8sfy/kkPcu1iQSDqJ8d/Qpgv8AXFZNHpxmhRXZm/yTef8ARDX6+Kozoi0KEcuWvyXN6Tn+Y3LjHalQappixbW/eglIalTdVaNYyHM1t104BbcLeMJprtfU/olNGvj3KjRtGQ9TEmAr7Z2GvfW2m7qq7ZeFc9waGlxcRAEkzyC9X7NdkwyKlYAu1DdzevEq0IOT4MNZrIYIcvl+BzspsTKBVeLxYHzWuXAF1d0YqKpHyObNLNNykC6hCsZAhCEAIQhACEIQAhCEAIQhAC5C6hAZjtF2Lw2Llzm5Kh/tGQHE8XDR3evNtsfs0xtKTSyYhm7Kcj+9rrHud3L29Cq4pm0M84dM+Ysds+rSJFSk+mRrna5o8Yj5qHn4fLevqV9MGxAI4ESqnGdlsFUMvwtFxO/2bQfECVR4zrh6hXaPnEu6ozL3x/7PNmn+7AdH1B5OSf8A642b/wAOf+pV/wDdVeJnRH1KHlM8GBTg+i96b2A2aP7q09XvPm5SqXY3AN0wlHvYHf8AdKj6LJ/1IrqLPAMOxzyGsaXHg33ie4LW7D7B4uuQXt9kw/ifYx+6wXPfC9nw2BpUxFOmxg4NaG+QUmFKwryZT9VyVUFRRdn+zVDCj3RmfEF7ruPIcByCvoXEStkkuEeZOcpy3SdtikIQpKghCEAIQhACEIQELZeKNWjSqkZfaU2PyzOXO0Oid8Spqq+zX9Uw3+BR/wBNqtEAIQhACELhQHULKYnaNV9U02vphzK9MNytc4Na4VBFQh4zOOWcvuxzF0w7tJVfTgZGVXaNAc4hvsHvLw3MDGdkA6brlAbJCxf/AM5XYHO9tQqA06Bacpa1oeS11Uk1YLAbG4uRcQVJq7arhjn5sOwMZRJJlzZqXc4OztDhAOVtpJF7XA1aFkDtqq19UGrSa01GBpqMc0UmOw7Kgc8ZwcrnSwae9Nz8Kar7cq1G6NY5tTD5aAzNqvBqUnZ8xcIY4uLfh3GTqABtELP19tEUWPD6Qc4tD3OBy0Q7Nd7C8OF2ltyLg9FCq9oauctb7JxJy5crs1MZmNbUf712Pzy0Q3dc3gDWoVBsfaVZ9RzKgYYFSMrXNvSrOounM4yHFuYcJiTqu7exT24UvfUbh3AAuhwIzRPs2vcBMm0gSRMQgL5CzeNrNL3PFdzKbKbqlR4fmYM7CGQDLdJdp+XjeNh6pqsYGYhzi+o4Mc2rmNOk0h7s5aYc4NteYL2gzFwNahZKltCqXVKbM1VxPvVKVT2gpBznyMj4DXgAQ0TqCbas4baddzcO9/tmMdTguDWOzE4dz3VXQSSQ4DK2PzEzIAA2aFhjtt7LNeHs9o9weahIqtYGZaVKplOd7i4kj91zRxF1srF1n13+0bUYCxpbTcG5WAPeAZaTLnCCd1o3XAv0IQgBCEIAQhCAq+zX9Uw3+BR/02q0QhACEIQAhCEAkLqEIAQEIQAhCEAIQhAAQUIQAhCEAIQhAC4EIQCkIQgBCEIAQhCA/9k="
						height="100px" width="100px">
					<td>
						<%= rs.getInt(5) %>
					</td>
					<td>
						<%= rs.getInt(6) %>
					</td>
					<td>
						<%= rs.getInt(7) %>
					</td>
					<td>
						<%= rs.getString(8) %>
					</td>

					<td>
					<form action="/buy" method="get">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg>	<input type="hidden" name="id" value="<%=rs.getInt(1)%>">
							<input type="submit" value="Buy" class="btn btn-info btn-lg">
							
					</form>
					</td>
					<td>
					
					
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