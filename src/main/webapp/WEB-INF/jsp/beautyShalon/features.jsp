<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spr" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-/W3C/DTD HTML 4.01 Transitional/EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TMPS00015</title>
<link href="/shalon/css/styles.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Economica' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<!----menu--->
<link rel="stylesheet" href="/shalon/css/superfish.css" media="screen">
<script src="/shalon/js/jquery-1.9.0.min.js"></script>
<script src="/shalon/js/hoverIntent.js"></script>
<script src="/shalon/js/superfish.js"></script>
<script>

		// initialise plugins
		jQuery(function(){
			jQuery('#example').superfish({
				//useClick: true
			});
		});

		</script>
</head>
<body>


<div class="wrap1">
<div class="container">
  <div class="header">
    <div class="logo">
      <h1>untitled site</h1>
    </div>
    <div class="menu">
      <ul class="sf-menu" id="example">
        <li><a href="/beautyShalon/index">Home</a></li>
        <li class="current"> <a href="/beautyShalon/pages">Pages</a>
          <ul>
            <li> <a href="#">consectetuer </a> </li>
            <li class="current"> <a href="#">Nunc dignissim risus id metus.</a>
              <ul>
                <li class="current"><a href="#">Cras ornare tristique elit</a></li>
                <li><a href="#">Ut aliquam sollicitudin leo</a></li>
                <li><a href="#">Cras iaculis ultricies nulla.</a></li>
                <li><a href="#">Aliquam tincidunt </a></li>
                <li><a href="#">vestibulum nulla nec ante</a></li>
              </ul>
            </li>
            <li> <a href="#">Cras iaculis ultricies nulla</a></li>
            <li> <a href="#">Donec quis dui at</a></li>
          </ul>
        </li>
        <li> <a href="/beautyShalon/features">Features </a>
        <ul>
                <li class="current"><a href="#">risus id metus</a></li>
                <li><a href="#">vestibulum</a></li>
                <li><a href="#"> egestas placerat</a></li>
                <li><a href="#">semper sagittis</a></li>
                <li><a href="#">commodo nulla</a></li>
              </ul>
        </li>
        <li> <a href="/beautyShalon/contact">Contact</a> </li>
     	<li> <a href="/login">Login</a> </li>
      </ul>
    </div>
  </div>
  <div class="clearing"></div>
</div>
<div class="clearing"></div>
</div><!---header-wrap--->
<div class="wrap4">
  <div class="container">
    <div class="leftcol">
      <div class="title">
        <h1>features</h1>
      </div>
      <div class="page-content">
      <div class="panel borderbotm-none">
        <div class="content">
          <h2>Praesent placerat risus quis eros</h2>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.</p>
          <p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.</p>
          <p>Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna a ullamcorper laoreet, lectus arcu pulvinar risus, vitae facilisis libero dolor a purus. Sed vel lacus. Mauris nibh felis, adipiscing varius, adipiscing in, lacinia vel, tellus. Suspendisse ac urna. Etiam pellentesque mauris ut lectus. Nunc tellus ante, mattis eget, gravida vitae, ultricies ac, leo. Integer leo pede, ornare a, lacinia eu, vulputate vel, nisl.</p>
          <p>Suspendisse mauris. Fusce accumsan mollis eros. Pellentesque a diam sit amet mi ullamcorper vehicula. Integer adipiscing risus a sem. Nullam quis massa sit amet nibh viverra malesuada. Nunc sem lacus, accumsan quis, faucibus non, congue vel, arcu. Ut scelerisque hendrerit tellus. Integer sagittis. Vivamus a mauris eget arcu gravida tristique. Nunc iaculis mi in ante. Vivamus imperdiet nibh feugiat est.</p>
          <p>Ut convallis, sem sit amet interdum consectetuer, odio augue aliquam leo, nec dapibus tortor nibh sed augue. Integer eu magna sit amet metus fermentum posuere. Morbi sit amet nulla sed dolor elementum imperdiet. Quisque fermentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque adipiscing eros ut libero. Ut condimentum mi vel tellus. Suspendisse laoreet. Fusce ut est sed dolor gravida convallis. Morbi vitae ante. Vivamus ultrices luctus nunc. Suspendisse et dolor. Etiam dignissim. Proin malesuada adipiscing lacus. Donec metus. Curabitur gravida.</p>
          <p>Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat</p>
          <p>Phasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.</p>
        </div>
      </div>
      </div>
      
    </div>
    <div class="rightcol">
      <div class="title">
        <h1>Fusce vel iaculis</h1>
      </div>
      <div class="panel">
        <div class="content">
          <ul>
            <li><a href="#">Lorem ipsum dolor sit amet nisiseget</a></li>
            <li><a href="#">Quisque in elit mauris, id tincidunt</a></li>
            <li><a href="#">Phasellus vel sem ipsum, eget facilisis </a></li>
            <li><a href="#">Nunc sed erat vel ipsum euismod fauci</a></li>
            <li><a href="#">Donec id tellus augue, eu pretium </a></li>
            <li><a href="#">Mauris ac velit vel ligula tempus varius</a></li>
            <li><a href="#">Aliquam eu leo et augue volutpat hen</a></li>
            <li><a href="#">Etiam eu odio nec elit ullamcorper orn</a></li>
            <li><a href="#">Suspendisse scelerisque dolor id ante</a></li>
            <li class="borderbotm-none"><a href="#">Donec lacinia tellus et nulla volutpat pel</a></li>
          </ul>
        </div>
      </div>
    </div>
  <div class="clearing"></div>  
  </div>
</div>
<!---wrap4--->
<div class="wrap3">
<div class="container">
  <div class="footer"> Copyright (c) websitename. All rights reserved.<a href="www.alltemplateneeds.com" target="_blank"> < www.alltemplateneeds.com ></a><br />
    <span>Image courtesy .</span><a href="www.photorack.net" target="_blank" class="active"> www.photorack.net</a> </div>
<div class="clearing"></div>
</div>
</div>
<div class="shadows2">
</div>
</body>
</html>
