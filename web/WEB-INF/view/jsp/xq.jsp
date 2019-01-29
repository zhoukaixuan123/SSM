<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--引进el表达式--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    /*使用项目根目录*/
    String basePath = request.getContextPath()+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%--
  Created by IntelliJ IDEA.
  User: kaixuan
  Date: 2019/1/29
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>详情展示</title>
</head>
<body>
    <h4>${map.skill_name}</h4>
    <div><p>${map.skill_describe}</p></div>
</body>
</html>
