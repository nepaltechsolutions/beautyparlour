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
</div>
<!---header-wrap--->
<div class="wrap2">
<div class="container">
  <div class="banner"> <img src="/shalon/images/banner-img.jpg" alt="banner" />
    <div class="banner-shadows"></div>
  </div>
<div class="clearing"></div>
</div>
</div>
<!---banner-wrap--->
<div class="wrap3">
  <div class="container">
    <div class="box mar-right40">
      <div class="title">
        <h1>Corem ipsum dolor</h1>
        <h2>Donec eu erat lacusaecenas et tortor quam phar.</h2>
      </div>
      <div class="content">
        <p>Suspendisse ac fermentum risus. Integer ultrices molestie sem, et bibendum odio volutpat a. Maecenas accumsan consequat nisi et vehicula. Aenean pellentesque congue arcu, at vehicula libero porta atras dictum
          dui ligula feugiat diam, mollis sodales felis augue et eros.</p>
        <div class="button"><a href="#">More Info </a></div>
      </div>
    </div>
    <div class="box">
      <div class="title">
        <h1>Kuisoue ullam risus</h1>
        <h2>Maecenas convallis rhoncus auctor lipsum dolor.</h2>
      </div>
      <div class="content">
        <p>Etiam non tristique sapien. Donec id nunc mauris, et placerat felis. Mauris egestas nunc consectetur dui mattis tempus. Morbi sed dui eget sapien faucibus tincidunt.  Sed convallis odio quis ipsum ullamcorper moll  venenatis aecenas commodo ante et dolor conse.</p>
        <div class="button"><a href="#">More Info </a></div>
      </div>
    </div>
  <div class="clearing"></div>  
  </div>
</div>
<!---wrap3--->
<div class="wrap1 ">
  <div class="container">
    <div class="title">
      <h1>Vivamus euismod lacus at mi eleifend volutpat.</h1>
    </div>
    <div class="service mar-right40"> <img src="/shalon/images/image1.jpg" alt="image" />
      <div class="shadows"></div>
      <div class="title">
        <h2>Nam faucibus adipis</h2>
      </div>
      <div class="content">
        <p>Curabitur erat velit, tincidunt non hendrerit ac eleifend eu nisl. Nullam auctor dapibus justo, ac ultrices.</p>
        <div class="button"><a href="#">More Info </a></div>
      </div>
    </div>
    <div class="service mar-right40"> <img src="/shalon/images/image2.jpg" alt="image" />
      <div class="shadows"></div>
      <div class="title">
        <h2>Imperdiet risus luctu</h2>
      </div>
      <div class="content">
        <p>Aliquam consectetur aliquam nulla a pharetra. Mauris mauris mi, viverra cuis posuere sit posuereante.</p>
        <div class="button"><a href="#">More Info </a></div>
      </div>
    </div>
    <div class="service"> <img src="/shalon/images/image3.jpg" alt="image" />
      <div class="shadows"></div>
      <div class="title">
        <h2>Eleifend eunisl auctor</h2>
      </div>
      <div class="content">
        <p>Sed convallis odio quis ipsum ullamcorper mollis. Sed venenatis ante sed nisi egestas eu aliquam neque. </p>
        <div class="button"><a href="#">More Info </a></div>
      </div>
    </div>
  <div class="clearing"></div>  
  </div>
  <div class="clearing"></div>
</div>
<!---wrap4--->
<div class="wrap4">
  <div class="container">
    <div class="leftcol">
      <div class="title">
        <h1>Aenean nisl dui, elementum vel volutpat</h1>
      </div>
      <div class="panel">
        <div class="content">
          <h2>Nam faucibus adipis</h2>
          <p>Donec neque erat, rutrum eget vehicula eleifend, tempus vitae nulla. Duis consequat molestie dignissim. Nulla porttitor placerat nunc, a aliquet felis posuere vel. Sed malesuada dictum lobortis. Curabitur porttitor dui vel justo dictum condimentum. Vivamus dapibus dignissim aliquet. Pellentesque lacinia rutrum quam vel condimentum aliquam nulla sednisi.</p>
          <div class=" button"><a href="#">More Info</a></div>
        </div>
      </div>
      <div class="panel borderbotm-none">
        <div class="content">
          <h2>habitasse platea dictumst</h2>
          <p>Aliquam quis libero ante, non rhoncus metus. Morbi tincidunt lacinia nibh, nec aliquet justo ornare ut. Nulla facilisi. Nullam nec est erat. Praesent eget orci nisl, eu euismod risus. Mauris placerat metus quis nibh tempus ut hendrerit leo suscipit. Morbi pharetra ultricies mi id condimentum. Praesent augue metus, pharetra congue posuere eu, eleifend commodo justo. </p>
          <div class=" button"><a href="#">More Info</a></div>
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
