<%--
  Created by IntelliJ IDEA.
  User: kaixuan
  Date: 2019/1/11
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=GtCFHL4fatKG9V4ikV8T91tgl7dMKwIG"></script>
    <title>添加动画标注点</title>
</head>
<body>
<div id="allmap"></div>
</body>
</html>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");
    var point = new BMap.Point(116.89931, 39.839251);
    map.centerAndZoom(point, 11);
    //开启滚轮
    map.enableScrollWheelZoom(true);

    //创建小狐狸
    var pt = new BMap.Point(116.89931, 39.839251);
    var myIcon = new BMap.Icon("http://lbsyun.baidu.com/jsdemo/img/fox.gif", new BMap.Size(300,157));
    var marker2 = new BMap.Marker(pt,{icon:myIcon});  // 创建标注
    map.addOverlay(marker2);              // 将标注添加到地图中
</script>
