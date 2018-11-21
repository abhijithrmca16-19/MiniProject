<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newreg.aspx.cs" EnableEventValidation="false" Inherits="sras_p.law.newreg" %>

<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Law &mdash; Free Website Template, Free HTML5 Template by freehtml5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

	<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FreeHTML5.co
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	
	<div id="fh5co-logo"><a href="home.aspx">saintgits resource allocation system<span>.</span></a></div>
							
						
        <form runat="server">
        <div id="fh5co-consult">
		<div class="video fh5co-video" style="background-image: url(images/s1.jpg);">
		</div>
		<div class="choose animate-box">
			<div class="fh5co-heading">
				<h2>REGISTER</h2>
			</div>
			<form action="#">
				<div class="row form-group">
					<div class="col-md-12">
						<!-- <label for="uname">Name</label> --> 
						
                       <asp:TextBox ID="txtname" CssClass="form-control" runat="server" placeholder="Name"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot empty" controlToValidate="txtname"></asp:RequiredFieldValidator>
					</div>
					
                    <div class="col-md-12">
						<!-- <label for="Dept">Department </label> -->
						
                        <asp:TextBox ID="txtdept" CssClass="form-control" runat="server" placeholder="Department"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="can't empty" controlToValidate="txtdept"></asp:RequiredFieldValidator>
					</div>
				 

                    <div class="col-md-12">
						<!-- <label for="desig">Designation</label> -->
						
                        <asp:TextBox ID="txtdesig" CssClass="form-control" runat="server" placeholder="Designation"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="can't empty" controlToValidate="txtdesig"></asp:RequiredFieldValidator>
					</div>
				

					<div class="col-md-12">
						<!-- <label for="email">Email</label> -->
						
                        <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" placeholder="Email Address"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                             ErrorMessage="incorrect email" ControlToValidate="txtemail" 
                             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
					</div>
              
					<div class="col-md-12">
						<!-- <label for="contact">Contact</label> -->
						
                        <asp:TextBox ID="txtcontact" CssClass="form-control" runat="server" placeholder="Contact"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ControlToValidate="txtcontact" ErrorMessage="incorrect number"  
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
					</div>
				
             
					<div class="col-md-12">
						<!-- <label for="paswd">Password</label> -->
						 <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" placeholder="password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ErrorMessage="password required"
                          ControlToValidate ="txtpass"></asp:RequiredFieldValidator>
					</div>
			
             
					<div class="col-md-12">
						<!-- <label for="cpass">Confirm Password</label> -->
					
                        <asp:TextBox ID="txtcpass" CssClass="form-control" runat="server" placeholder="Confirm password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ErrorMessage="password required" ControlToValidate="txtcpass"></asp:RequiredFieldValidator>
                           <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="not match">
    </asp:CompareValidator>
					</div>
				
				
				<div class="form-group">
					
                    <asp:Button ID="btnsubmit" CssClass="form-control" runat="server" Text="SignUp" Onclick="btnsubmit_Click"/>
				</div>
                    <asp:Label runat="server" ID="lblMsg" ></asp:Label>
                  </div>
			</form>	
		</div>
	</div>
        </form>
	
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

