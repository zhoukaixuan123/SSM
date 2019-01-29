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
	<script type="text/javascript" src="<%=basePath%>/js/jquery-1.9.1.js" ></script>
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
		 function js_method(){
		     window.opener="<%=path%>/address.do";
         }

         //悬停展示详情
         function selectDetails(user_id){

		     //悬停一秒  显示 具体信息
             timer = setTimeout(function(){
                 //做你想做的事
                 window.open ('<%=path%>/selectXQ.do?user_id='+user_id, 'newwindow', 'height=500, width=600, top=100, left=300, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=n o, status=no')

             },2000);
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
                    <li><a href="#home">主页</a></li>
                    <li><a href="#about">自我介绍</a></li>
                    <li><a href="#blog">我的展示</a></li>
                    <li><a href="#contact">联系我</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- ==== Navigation End ==== -->


	<!-- ==== Intro Section Start ==== -->
	<section class="intro-section" id="home">
		<div class="intro-content">
			<h1>关于我</h1>
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
				<img src="<%=basePath%>images/kaixuan.jpg" class="img-responsive" alt="">
			</div>
			<div class="col-md-6 col-sm-12">
				<div class="about-text">
					<h3>关于我的</h3>
					<p>姓名：${mapUser.get("user_name")}  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 年龄：${mapUser.get("user_age")} <br>
                        <br>
                       民族：${mapUser.get("user_data")}    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp    学历： ${mapUser.get("user_study")}

                    </p>
				</div>
				<div class="skills"><!-- Skills -->

                    <c:forEach items="${skilMap}" var="skill">
                        <div class="single-progress-item">
                                <%--技能介绍--%>
							<h4>${skill.get("skill_name")}</h4>
                            <div class="progress-bar-style" data-progress="100" onmouseover="selectDetails(${skill.get("user_id")})"></div>
                        </div>
                    </c:forEach>
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
					<h4>GitHub</h4>
					<p><a  href="https://github.com/zhoukaixuan123?tab=repositories" target="view_window" style="color: black">GitHub源码展示</a></p>
				</div>
				<!-- item -->
				<div class="col-md-3 col-sm-6 service-item">
					<div class="icon">
						<i class="fa fa-leaf"></i>
						<span></span>
					</div>
					<h4>CSDN</h4>
					<p><a href="https://blog.csdn.net/weixin_42226741" target="view_window" style="color: black">CSDN地址</a></p>
				</div>
				<!-- item -->
				<div class="col-md-3 col-sm-6 service-item">
					<div class="icon">
						<i class="fa fa-camera"></i>
						<span></span>
					</div>
					<h4>RESUME</h4>
					<p><a href="#"  style="color: black">简历</a></p>
				</div>
				<!-- item -->
				<div class="col-md-3 col-sm-6 service-item">
					<div class="icon">
						<i class="fa fa-cog"></i>
						<span></span>
					</div>
					<h4>PERSONAL PROJECTS</h4>
					<p><a href="#"  style="color: black">个人项目</a></p>
				</div>
			</div>
		</div>
	</section>
	<!-- ==== Services Section End ==== -->



	<!-- ==== Portfolios Section End ==== -->
	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>



	<!-- ==== Blogs Section Start ==== -->
	<section class="blog-section spad" id="blog">
		<div class="container">
			<div class="section-title">
				<h2>项目展示</h2>
				<p>I hope tomorrow will be better! Better technology! More core! Higher wages</p>
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
							<span>电话</span>
							<p>${mapUser.get("user_phone")}</p>
						</li>
						<li>
							<i class="fa fa-envelope-o"></i>
							<span>Email</span>
							<p>${mapUser.get("user_email")}</p>
						</li>
						<li>
							<i class="fa fa-map-marker"></i>
							<span><a  href="<%=path%>/address.do">地址</a></span>
							<p>${mapUser.get("user_address")}</p>
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

