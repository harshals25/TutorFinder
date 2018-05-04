<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="db.Connect"%>

<%
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
    String password =  request.getParameter("password");
    String tfc = request.getParameter("class");
    String subjects="";
    String gender = request.getParameter("gender");
    int graduationYear = Integer.parseInt(request.getParameter("graduationyear"));
    String major = request.getParameter("major");
    String college = request.getParameter("college");
    int teachingex = Integer.parseInt(request.getParameter("teachingex"));
    String HTID = request.getParameter("htid");
    String email = request.getParameter("email");
    String area = request.getParameter("area");
      
    String subject[]=request.getParameterValues("subject");
    for(int i=0;i<subject.length;i++)
    {
        subjects+=subject[i]+" ";
    }
    
     Connect obj = new Connect();
    PreparedStatement st1=obj.con.prepareStatement("insert into registrationtutor values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    st1.setString(2,name);
    st1.setString(3,address);
    st1.setString(4,mobile);
    st1.setString(5,password);
    st1.setString(6,tfc);
    st1.setString(7,subjects);
    st1.setString(8,gender);
    st1.setInt(9,graduationYear);
    st1.setString(10,major);
    st1.setString(11,college);
    st1.setInt(12,teachingex);
    st1.setString(1,HTID);
    st1.setString(13,email);
    st1.setString(14,area);
    st1.executeUpdate();
    obj.con.close();
 //   response.sendRedirect("TutorLogin.jsp");
     
%>

<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>JobsInfo</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="freehtml5.co" />


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

	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400" rel="stylesheet">
	
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

	<!-- Pricing -->
	<link rel="stylesheet" href="css/pricing.css">

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
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-right">
						<p class="site"></p>
						<p class="num">Call: +01 123 456 7890</p>
						<ul class="fh5co-social">
							<li><a href="#"><i class="icon-facebook2"></i></a></li>
							<li><a href="#"><i class="icon-twitter2"></i></a></li>
							<li><a href="#"><i class="icon-mail"></i></a></li>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
						<div id="fh5co-logo"><a href="index.html"><i class="icon-study"></i>Tutor Finder<span>.</span></a></div>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li class="active"><a href="index.html">Home</a></li>
							<li><a href="jobRegister.html">Search Home Tutor</a></li>
							<li><a href="TutorRegister.html">Find Tution Job</a></li>
							<li><a href="howitwork.html">How it Works</a></li>
							<li><a href="faq.html">FAQ</a></li>
							<li><a href="contact.html">Contact</a></li>
							<li class="btn-cta"><a href="jobRegister.html"><span>Get a Tutor</span></a></li>
							<li class="btn-cta"><a href="adminLogin.jsp"><span>Admin</span></a></li>
                                                        
						</ul>
					</div>
				</div>
				
			</div>
		</div>
	</nav>
        
    
<div id="fh5co-about">
    <div class="container">
 <div style="border:1px solid black; border-radius: 25px;">
<center>
     <form action="TutorRegister.html">
         <p> Thank You For Registration.</p>
         <p> Please Do VIsit Our Office For Document Verification.</p>
         <p>Within 3 Days.</p>
        <input type="submit" value="ok" class="btn btn-primary">
</form>
        </center>
        </div>
</div>
</div>
<footer id="fh5co-footer" role="contentinfo" style="background-image: url(images/img_bg_4.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-3 fh5co-widget">
					<h3>About Education</h3>
					<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.</p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Learning</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Course</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Meetups</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Learn &amp; Grow</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Blog</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Testimonials</a></li>
						<li><a href="#">Handbook</a></li>
						<li><a href="#">Held Desk</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Engage us</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Marketing</a></li>
						<li><a href="#">Visual Assistant</a></li>
						<li><a href="#">System Analysis</a></li>
						<li><a href="#">Advertise</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Legal</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Find Designers</a></li>
						<li><a href="#">Find Developers</a></li>
						<li><a href="#">Teams</a></li>
						<li><a href="#">Advertise</a></li>
						<li><a href="#">API</a></li>
					</ul>
				</div>
			</div>

		</div>
	</footer>
	</div>

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
	<!-- Count Down -->
	<script src="js/simplyCountdown.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

