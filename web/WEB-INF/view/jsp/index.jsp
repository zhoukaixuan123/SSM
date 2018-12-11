<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%--引进el表达式--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
     String path = request.getContextPath();
      /*使用项目根目录*/
      String basePath = request.getContextPath()+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
	<title>简介</title>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="<%=basePath%>images/favicon.ico" rel="shortcut icon">

	<!-- 样式 -->
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath%>css/owl.carousel.css">
	<link rel="stylesheet" href="<%=basePath%>css/magnific-popup.css">
	<link rel="stylesheet" href="<%=basePath%>css/reset.css">
	<link rel="stylesheet" href="<%=basePath%>css/style.css">


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!-- ==== MODERNIZR ==== -->
    <script src="<%=basePath%>js/modernizr.js"></script>
	<script>
		 window.onload=function (ev) {

		 }
	</script>
    
</head>
<body>

	<!-- ==== Preloader Section Start ==== -->
	<div id="preloader">
        <div class="pre-container">
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
        </div>
    </div>
	<!-- ==== Preloader Section End ==== -->
	
	<!-- ==== Navigation Start ==== -->
	<nav>
        <div class="row">
            <div class="container">
                <div class="logo">
                    <img src="<%=basePath%>images/logo.png" alt=""><!-- Logo -->
                </div>
                <div class="mobile-bar"><span></span></div>
                <ul class="nav-menu">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#portfolio">Portfolio</a></li>
                    <li><a href="#blog">Blog</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- ==== Navigation End ==== -->


	<!-- ==== Intro Section Start ==== -->
	<section class="intro-section" id="home">
		<div class="intro-content">
			<h1>${map.get("username")}</h1>
			<div class="social">
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href="#"><i class="fa fa-behance"></i></a>
                <a href="#"><i class="fa fa-dribbble"></i></a>
			</div>
		</div>
		<a href="#about" class="down">
			<i class="fa fa-angle-down"></i>
		</a>
	</section>
	<!-- ==== Intro Section End ==== -->


	<!-- ==== About Section Start ==== -->
	<section class="about-section spad" id="about">
		<div class="container">
			<div class="col-md-6 col-sm-12 about-image">
				<img src="<%=basePath%>images/avator.jpg" class="img-responsive" alt="">
			</div>
			<div class="col-md-6 col-sm-12">
				<div class="about-text">
					<h3>关于我的</h3>
					<p>个人介绍...................................</p>
				</div>
				<div class="skills"><!-- Skills -->
					<div class="single-progress-item">
						 <%--技能介绍--%>
						<h4>java</h4>
						<div class="progress-bar-style" data-progress="80"></div>
					</div>
					<div class="single-progress-item">
						<h4>html</h4>
						<div class="progress-bar-style" data-progress="90"></div>
					</div>
					<div class="single-progress-item">
						<h4>javaScript</h4>
						<div class="progress-bar-style" data-progress="75"></div>
					</div>
					<div class="single-progress-item">
						<h4>linux</h4>
						<div class="progress-bar-style" data-progress="93"></div>
					</div>
					<div class="single-progress-item">
						<h4>git/svn</h4>
						<div class="progress-bar-style" data-progress="85"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ==== About Section End ==== -->


	<!-- ==== Services Section Start ==== -->
	<section class="services-section spad">
		<div class="container">
			<!-- Services Items -->
			<div class="row">
				<!-- item -->
				<div class="col-md-3 col-sm-6 service-item">
					<div class="icon">
						<i class="fa fa-magic"></i>
						<span></span>
					</div>
					<h4>GRPHICE</h4>
					<p>个人项目展示...服务地址</p>
				</div>
				<!-- item -->
				<div class="col-md-3 col-sm-6 service-item">
					<div class="icon">
						<i class="fa fa-leaf"></i>
						<span></span>
					</div>
					<h4>BRANDING</h4>
					<p>个人项目展示...服务地址</p>
				</div>
				<!-- item -->
				<div class="col-md-3 col-sm-6 service-item">
					<div class="icon">
						<i class="fa fa-camera"></i>
						<span></span>
					</div>
					<h4>PHOTOGRAPHY</h4>
					<p>个人项目展示...服务地址</p>
				</div>
				<!-- item -->
				<div class="col-md-3 col-sm-6 service-item">
					<div class="icon">
						<i class="fa fa-cog"></i>
						<span></span>
					</div>
					<h4>CUSTOMIZATION</h4>
					<p>个人展示................</p>
				</div>
			</div>
		</div>
	</section>
	<!-- ==== Services Section End ==== -->


	<!-- ==== Portfolios Section Start ==== -->
	<section class="portfolios-section spad" id="portfolio">
		<div class="container">
			<div class="section-title">
				<h2>个人项目</h2>
				<p>Out believe has request not how comfort evident. Up delight cousins we feeling<br>minutes. Genius has looked end piqued spring.</p>
			</div>
			<ul class="portfolio-filter">
			    <li class="filter" data-filter="*">ALL</li>
			    <li class="filter" data-filter=".ill">ILLUSTRATIONS</li>
			    <li class="filter" data-filter=".brand">BRANDING</li>
			    <li class="filter" data-filter=".fs">FASHION</li>
		    </ul>
		   	<!-- Portfolio items -->
			<div class="row portfolio_container">
				<!-- item -->	
				<div class="grid-item col-md-4 col-sm-4 col-xs-12 ill">
					<div class="work-item">
						<img src="../images/portfolio/1.jpg" alt="">
						<div class="work-inner">
							<a class="work-zoom" href="#workID-1"><i class="fa fa-search"></i></a>
						</div>
					</div>
					<div id="workID-1" class="mfp-hide work-popup">
	                  	<img src="../images/portfolio/1.jpg" alt="">
	                  	<div class="work-popup-content">
		                    <h3>Project Title</h3>
		                    <p>In media, which includes textual, audio, and visual content, free licensing schemes such as some of the licenses made by Creative Commons have allowed for the dissemination of works under a clear set of legal permissions.</p>
		                </div>
	              	</div> 
				</div>
				<!-- item -->	
				<div class="grid-item col-md-4 col-sm-4 col-xs-12 brand">
					<div class="work-item">
						<img src="../images/portfolio/2.jpg" alt="">
						<div class="work-inner">
							<a class="work-zoom" href="#workID-2"><i class="fa fa-search"></i></a>
						</div>
					</div>
					<div id="workID-2" class="mfp-hide work-popup">
	                  	<img src="../images/portfolio/2.jpg" alt="">
	                  	<div class="work-popup-content">
		                    <h3>Project Title</h3>
		                    <p>In media, which includes textual, audio, and visual content, free licensing schemes such as some of the licenses made by Creative Commons have allowed for the dissemination of works under a clear set of legal permissions.</p>
		                </div>
	              	</div> 
				</div>
				<!-- item -->	
				<div class="grid-item col-md-4 col-sm-4 col-xs-12 fs">
					<div class="work-item">
						<img src="../images/portfolio/3.jpg" alt="">
						<div class="work-inner">
							<a class="work-zoom" href="#workID-3"><i class="fa fa-search"></i></a>
						</div>
					</div>
					<div id="workID-3" class="mfp-hide work-popup">
	                  	<img src="../images/portfolio/3.jpg" alt="">
	                  	<div class="work-popup-content">
		                    <h3>Project Title</h3>
		                    <p>In media, which includes textual, audio, and visual content, free licensing schemes such as some of the licenses made by Creative Commons have allowed for the dissemination of works under a clear set of legal permissions.</p>
		                </div>
	              	</div> 
				</div>
				<!-- item -->	
				<div class="grid-item col-md-4 col-sm-4 col-xs-12 ill">
					<div class="work-item">
						<img src="../images/portfolio/4.jpg" alt="">
						<div class="work-inner">
							<a class="work-zoom" href="#workID-4"><i class="fa fa-search"></i></a>
						</div>
					</div>
					<div id="workID-4" class="mfp-hide work-popup">
	                  	<img src="../images/portfolio/4.jpg" alt="">
	                  	<div class="work-popup-content">
		                    <h3>Project Title</h3>
		                    <p>In media, which includes textual, audio, and visual content, free licensing schemes such as some of the licenses made by Creative Commons have allowed for the dissemination of works under a clear set of legal permissions.</p>
		                </div>
	              	</div> 
				</div>
				<!-- item -->	
				<div class="grid-item col-md-4 col-sm-4 col-xs-12 brand">
					<div class="work-item">
						<img src="../images/portfolio/5.jpg" alt="">
						<div class="work-inner">
							<a class="work-zoom" href="#workID-5"><i class="fa fa-search"></i></a>
						</div>
					</div>
					<div id="workID-5" class="mfp-hide work-popup">
	                  	<img src="../images/portfolio/5.jpg" alt="">
	                  	<div class="work-popup-content">
		                    <h3>Project Title</h3>
		                    <p>In media, which includes textual, audio, and visual content, free licensing schemes such as some of the licenses made by Creative Commons have allowed for the dissemination of works under a clear set of legal permissions.</p>
		                </div>
	              	</div> 
				</div>
				<!-- item -->	
				<div class="grid-item col-md-4 col-sm-4 col-xs-12 fs">
					<div class="work-item">
						<img src="../images/portfolio/6.jpg" alt="">
						<div class="work-inner">
							<a class="work-zoom" href="#workID-6"><i class="fa fa-search"></i></a>
						</div>
					</div>
					<div id="workID-6" class="mfp-hide work-popup">
	                  	<img src="../images/portfolio/6.jpg" alt="">
	                  	<div class="work-popup-content">
		                    <h3>Project Title</h3>
		                    <p>In media, which includes textual, audio, and visual content, free licensing schemes such as some of the licenses made by Creative Commons have allowed for the dissemination of works under a clear set of legal permissions.</p>
		                </div>
	              	</div> 
				</div>
			</div>
		</div>
	</section>
	<!-- ==== Portfolios Section End ==== -->
	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>


	<!-- ==== Testinonial Section Start ==== -->
 	<section class="testinonial-section spad">
		<div class="container">
			<div class="section-title">
				<h2>CLINTS</h2>
				<p>Out believe has request not how comfort evident. Up delight cousins we feeling<br>minutes. Genius has looked end piqued spring.</p>
			</div>
			<div class="testinonial-carousel">
				<div class="brand-item">
					<a href="">
						<img src="<%=basePath%>images/brand/1.svg" alt="">
					</a>
				</div>
				<div class="brand-item">
					<a href="">
						<img src="<%=basePath%>images/brand/2.svg" alt="">
					</a>
				</div>
				<div class="brand-item">
					<a href="">
						<img src="<%=basePath%>images/brand/3.svg" alt="">
					</a>
				</div>
				<div class="brand-item">
					<a href="">
						<img src="<%=basePath%>images/brand/4.svg" alt="">
					</a>
				</div>
				<div class="brand-item">
					<a href="">
						<img src="<%=basePath%>images/brand/5.svg" alt="">
					</a>
				</div>
				<div class="brand-item">
					<a href="">
						<img src="<%=basePath%>images/brand/6.svg" alt="">
					</a>
				</div>
				<div class="brand-item">
					<a href="">
						<img src="<%=basePath%>images/brand/7.svg" alt="">
					</a>
				</div>
				<div class="brand-item">
					<a href="">
						<img src="<%=basePath%>images/brand/8.svg" alt="">
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- ==== Testinonial Section End ==== -->


	<!-- ==== Blogs Section Start ==== -->
	<section class="blog-section spad" id="blog">
		<div class="container">
			<div class="section-title">
				<h2>个人展示</h2>
				<p>Out believe has request not how comfort evident. Up delight cousins we feeling<br>minutes. Genius has looked end piqued spring.</p>
			</div>
			<div class="row">
				<!-- single-post -->
				<div class="col-md-4">
					<a href="single-blog.html" class="blog-item">
						<img src="<%=basePath%>images/blog/blog1.jpg" alt="">
						<div class="blog-item-text">
							<h3>Out believe has request not how</h3>
							<p>Quick six blind smart out burst. Perfectly on furniture dejection determine my depending an to. Add short water court fat.</p>
							<h5>7 February 2017 / POSTED BY ADMIN</h5>
						</div>
					</a>
				</div>
				<!-- single-post -->
				<div class="col-md-4">
					<a href="single-blog.html" class="blog-item">
						<img src="<%=basePath%>images/blog/blog2.jpg" alt="">
						<div class="blog-item-text">
							<h3>Out believe has request not how</h3>
							<p>Quick six blind smart out burst. Perfectly on furniture dejection determine my depending an to. Add short water court fat.</p>
							<h5>7 February 2017 / POSTED BY ADMIN</h5>
						</div>
					</a>
				</div>
				<!-- single-post -->
				<div class="col-md-4">
					<a href="single-blog.html" class="blog-item">
						<img src="<%=basePath%>images/blog/blog3.jpg" alt="">
						<div class="blog-item-text">
							<h3>Out believe has request not how</h3>
							<p>Quick six blind smart out burst. Perfectly on furniture dejection determine my depending an to. Add short water court fat.</p>
							<h5>7 February 2017 / POSTED BY ADMIN</h5>
						</div>
					</a>
				</div>
			</div>
			<div class="text-center mt20">
				<a href="blog-page.html" class="site-button">LOAD MORE.</a>
			</div>
		</div>
	</section>
	<!-- ==== Blogs Section End ==== -->


	<!-- ==== Contact Section Start ==== -->
	<section class="contact-section spad" id="contact">
		<div class="container">
			<div class="section-title">
				<h2>联系我</h2>
				<p>Out believe has request not how comfort evident. Up delight cousins we feeling<br>minutes. Genius has looked end piqued spring.</p>
			</div>
			<div class="row">
				<div class="col-md-5">
					<ul class="con-info">
						<li>
							<i class="fa fa-phone"></i>
							<span>Phone</span>
							<p>+1 (123) 456-7890</p>
						</li>
						<li>
							<i class="fa fa-envelope-o"></i>
							<span>Email</span>
							<p>domain@gmail.com</p>
						</li>
						<li>
							<i class="fa fa-map-marker"></i>
							<span>Address</span>
							<p>A902, Crosswinds Apt, Western Road,<br> Brighton, East Sussex, Bath</p>
						</li>
					</ul>
				</div>
				<div class="col-md-7 contact-left">
					<div id="form-chack"></div>
					<!-- Contact Form -->
					<form action="mail.php" id="contact-form" method="POST" >

						<input type="text" name="name" id="name" required placeholder="Your Name*">
						
						<input type="email" name="email" id="email" required placeholder="Your Email*">

						<div class="send-btn-div">
							<textarea id="massage" name="massage" required placeholder="Your Massage*"></textarea>
							<button type="submit" class="send-btn"><i class="fa fa-send"></i></button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- ==== Contact Section End ==== -->


	<!-- ==== Footer Start ==== -->
	<footer>
		<div class="container">
			<div class="social">
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href="#"><i class="fa fa-behance"></i></a>
                <a href="#"><i class="fa fa-dribbble"></i></a>
			</div>
			<p>Copyright &copy; 2017.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
		</div>
	</footer>
	<!-- ==== Footer End ==== -->


	<!-- ==== Jquery and other scripts ==== -->
	<script src="<%=basePath%>js/jquery-2.1.4.min.js"></script>
	<script src="<%=basePath%>js/jquery.nav.js"></script>
	<script src="<%=basePath%>js/imagesloaded.pkgd.min.js"></script>
	<script src="<%=basePath%>js/isotope.pkgd.min.js"></script>
	<script src="<%=basePath%>js/owl.carousel.min.js"></script>
	<script src="<%=basePath%>js/magnific-popup.min.js"></script>
	<script src="<%=basePath%>js/main.js"></script>
</body>
</html>

