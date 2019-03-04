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

    
</head>
<body>



	<!-- ==== Blogs Section Start ==== -->
	<section class="blog-section spad" id="blog">
		<div class="container">
			<div class="section-title">
				<h2>项目展示</h2>
				<p>I hope tomorrow will be better! Better technology! More core! Higher wages</p>
			</div>
			<div class="row">
				<!-- single-post -->
				<c:forEach items="${mapAchievement}" var="mapAchievement">
				<div class="col-md-4">
					<a class="blog-item">
						<img src="<%=basePath%>${mapAchievement.achievement_images}" alt="">
						<div class="blog-item-text">
							<h3>${mapAchievement.achievement_name}</h3>
							<p>${mapAchievement.achievement_skill}</p>
							<h5>${mapAchievement.achievement_describe}</h5>
						</div>
					</a>
				</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- ==== Blogs Section End ==== -->

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

