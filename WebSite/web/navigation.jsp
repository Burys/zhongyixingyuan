<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: ThinkPad
  Date: 2021/10/19
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>中艺星源</title>
  <link rel="stylesheet" type="text/css" href="navigation.css">
  <link rel="icon"       type="text/css" href="images/brand.png">
  <script type="text/javascript">
    let visible = false;
    let entity = null;
    function visible_change(){
      visible = !visible;
      if (visible) {
        entity = document.getElementById("service");
        entity.style.transform = 'translateX(-' + 603 + 'px)';
        entity = document.getElementById("service-hide");
        entity.style.opacity = "0";
        entity = document.getElementById("gotoTop");
        entity.style.opacity = "0";

      } else {
        entity = document.getElementById("service");
        entity.style.transform = 'translateX(' + 603 + 'px)';
        entity = document.getElementById("service-hide");
        entity.style.opacity = "1";
        entity = document.getElementById("gotoTop");
        entity.style.opacity = "1";
      }
    }
  </script>
</head>
<body>
<script type="text/javascript">
  //设置定时器
  let timeout = setTimeout(visible_change, 5000);
</script>
<%
  Date date = new Date();
  SimpleDateFormat dateFormat= new SimpleDateFormat("HH:mm:ss");
  // boolean visible = false;
%>
<div class="service" id="service" style="opacity: 1;z-index: 999">
  <div class="service-topbar">
    <div class="service-topbar-title">咨询老师</div>
    <div class="service-topbar-icon" onclick="visible_change()">x</div>
  </div>
  <div class="service-content">
    <div class="service-left-content">
      <div class="service-left-top-content">
        <div class="service-left-top-title">中艺星源老师&nbsp;<%=dateFormat.format(date)%></div>
        <div class="service-left-top-introduce">
          <div class="introduce-p1">&emsp;&emsp;您好！我是中艺星源赵老师!</div>
          <div class="introduce-p2">&emsp;&emsp;中艺星源真诚专业的为每一位家长和同学提供免费的艺术高考规划咨询，名额有限，先报先得哦！</div>
          <img src="images/QR-code.PNG" style="width: 150px;margin-left: 110px;margin-bottom: 5px;">
          <div class="introduce-p3">&emsp;&emsp;中艺星源祝每一位考生都能在艺术考试中大放光彩！</div>
        </div>
      </div>
      <div class="service-left-bottom-content">
        — 电话联系我们：13666268832 —
      </div>
    </div>
    <img class="service-right-content" src="images/service_pic.png">
  </div>
</div>
<div class="service-hide" id="service-hide" onclick="visible_change()">咨询老师</div>
<a href="homepage.jsp"><div class="top-refresh" id="gotoTop" style="display: block;  ">^</div></a>
<%--网页导航栏区域--%>
<%--<img class = "left-pic" src="images/left-pic.PNG">--%>

<%--<img class = "right-pic" src="images/right-pic.PNG">--%>
<div id="homepage-nav">
  <div class="homepage-navstyle">
    <div class="navstyle-top">您好，欢迎进入<a href="homepage.jsp">中艺星源教育</a></div>
    <img src="icons/home.png" style="height: 21px;margin-left: 480px;margin-right: 3px"><div class="navstyle-top"><a href="homepage.jsp">中艺星源官网</a></div>
    <img src="icons/collect.png" style="height: 20px;margin-left: 15px;margin-right: 3px"><div class="navstyle-top"><a href="">加入收藏</a></div>
    <img src="icons/phone.png" style="height: 20px;margin-left: 15px;margin-right: 3px"><div class="navstyle-top"><a href="">联系我们</a></div>
    <img src="icons/school.png" style="height: 20px;margin-left: 15px;margin-right: 3px"><div class="navstyle-top"><a href="">艺考院校</a></div>
    <img src="icons/question.png" style="height: 20px;margin-left: 10px"><div class="navstyle-top"><a href="">艺考咨询</a></div>
  </div>
</div>

<%--主题图片--%>
<div id="display_img">
  <div id="brand_img"><img src="images/brand.png"></div>
  <div id="tel_img"><img src="icons/phone.png"></div>
  <div id="phone_box">
    <div class="tel_num">文老师：136-9900-4707</div>
    <div class="tel_num">赵老师：136-6626-8832</div>
  </div>

</div>

<%--专业导航栏区域--%>
<div id="major-nav">
  <a href="major_broadcast.jsp"><div class="navstyle-major" >中艺播音</div></a>
  <a href="major_direct.jsp"><div class="navstyle-major">中艺编导</div></a>
  <a href="major_perform.jsp"><div class="navstyle-major">中艺表演</div></a>
  <a href="major_music.jsp"><div class="navstyle-major">中艺音乐</div></a>
  <a href="major_art.jsp"><div class="navstyle-major">中艺美术</div></a>
  <a href="major_dance.jsp"><div class="navstyle-major">中艺舞蹈</div></a>
  <a href="major_calligraphy.jsp"><div class="navstyle-major">中艺书法</div></a>
  <a href="major_airhostess.jsp"><div class="navstyle-major">中艺空乘</div></a>
</div>

<%--活动导航栏区域--%>
<div id="active-nav">
  <a href="homepage.jsp"><div class="navstyle-active">官方首页</div></a>
  <a href=""><div class="navstyle-active">艺考课程</div></a>
  <a href=""><div class="navstyle-active">教学环境</div></a>
  <a href=""><div class="navstyle-active">艺考成果</div></a>
  <a href=""><div class="navstyle-active">视频专区</div></a>
  <a href=""><div class="navstyle-active">艺考咨询</div></a>
  <a href=""><div class="navstyle-active">学校动态</div></a>
  <a href=""><div class="navstyle-active">关于我们</div></a>
</div>
</body>
</html>
