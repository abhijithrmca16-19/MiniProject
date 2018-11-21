<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vehiclebook.aspx.cs"  EnableEventValidation="false" Inherits="sras_p.law.vehiclebook" %>

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
		<div class="video fh5co-video" style="background-image: url(images/s.jpg);">
		</div>
		<div class="choose animate-box">
			<div class="fh5co-heading">
				<h2> VEHICLE BOOKING</h2>
			</div>
			<form action="#">
				<div class="row form-group">
					<div class="col-md-12">
						<!-- <label for="hname">Hall Name</label> --> 
						
                       <asp:TextBox ID="txtvname" CssClass="form-control" runat="server" placeholder=" Vehicle Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot empty" controlToValidate="txtvname"></asp:RequiredFieldValidator>
					</div>

                   <div class="col-md-12">
						<!-- <label for="depname">Department</label> --> 
						
                       <asp:TextBox ID="txtvdep" CssClass="form-control" runat="server" placeholder=" Department"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot empty" controlToValidate="txtvdep"></asp:RequiredFieldValidator>
					</div>
					
                     <div class="col-md-12">
						<!-- <label for="purp">Purpose</label> -->
						
                        <asp:TextBox ID="txtvpur" CssClass="form-control" runat="server" placeholder="Purpose"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Cannot empty" controlToValidate="txtvpur"></asp:RequiredFieldValidator>
					</div>

                     <div class="col-md-12">
						<!-- <label for="rdate"> Request Date</label> -->
						
                        <asp:TextBox ID="txtrdatev" CssClass="form-control" runat="server" placeholder="Request Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Cannot empty" controlToValidate="txtrdatev"></asp:RequiredFieldValidator>
					</div>
				
                   <div class="col-md-12">
						<!-- <label for="num">Capacity</label> -->
						
                        <asp:TextBox ID="txtvcap" CssClass="form-control" runat="server" placeholder="Capacity"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Cannot empty" controlToValidate="txtvcap"></asp:RequiredFieldValidator>
					</div>
				

					<div class="col-md-12">
						<!-- <label for="date">Date</label> -->
						
                        <asp:TextBox ID="txtvdate" CssClass="form-control" runat="server" placeholder="Event Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Cannot empty" controlToValidate="txtvdate"></asp:RequiredFieldValidator>
					</div>
              
              
					<div class="col-md-12">
						<!-- <label for="time">Time</label> -->
						
                        <asp:TextBox ID="txtvtime" CssClass="form-control" runat="server" placeholder="Event Time"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Cannot empty" controlToValidate="txtvtime"></asp:RequiredFieldValidator>
					</div>
			

				<div class="form-group">
					<asp:Button ID="btnbook" CssClass="form-control" runat="server" Text="Book" Onclick="btnbook_Click"/>
				</div>

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

