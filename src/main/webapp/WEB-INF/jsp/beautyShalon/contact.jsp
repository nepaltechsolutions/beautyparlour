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
<c:set var="context" value="${pageContext.request.contextPath}" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TMPS00015</title>
<link href="${context}/shalon/css/styles.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Economica' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<!----menu--->
<link rel="stylesheet" href="${context}/shalon/css/superfish.css" media="screen">
<script src="${context}/shalon/js/jquery-1.9.0.min.js"></script>
<script src="${context}/shalon/js/hoverIntent.js"></script>
<script src="${context}/shalon/js/superfish.js"></script>
<script>

		// initialise plugins
		jQuery(function(){
			jQuery('#example').superfish({
				useClick: true
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
        <li><a href="${context}/beautyShalon/index">Home</a></li>
        <li class="current"> <a href="${context}/pages.html">Pages</a>
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
        <li> <a href="${context}/beautyShalon/features">Features </a>
        <ul>
                <li class="current"><a href="#">risus id metus</a></li>
                <li><a href="#">vestibulum</a></li>
                <li><a href="#"> egestas placerat</a></li>
                <li><a href="#">semper sagittis</a></li>
                <li><a href="#">commodo nulla</a></li>
              </ul>
        </li>
        <li> <a href="${context}/beautyShalon/contact">Contact</a> </li>
      	<li> <a href="${context}/login">Login</a> </li>
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
        <h1>contact</h1>
      </div>
      <div class="page-content">
      <div class="panel borderbotm-none">
        <div class="content">
          <h2>Praesent placerat risus quis eros</h2>



<form:form id="contact-form" modelAttribute="contact" action="${context}/contactme" method='POST'>
					<div class="col-sm-6 col-md-6">
						<c:if test="${not empty statusMessage}">
							<div class="newSpace">
								<div class="alert alert-danger">
									<span class="glyphicon glyphicon-hand-right"></span> <strong>Exception
										Message</strong>
									<hr class="message-inner-separator">
									<p>${statusMessage}</p>
								</div>
							</div>
						</c:if>
					</div>
          <div class="contact-form mar-top30">
            <label> <span>Full name</span>
            <form:input path="fullName" class="input_text" id="fullName" name="fullName"	
							placeholder=" " required="required" />
			<form:errors path="fullName" cssClass="errorMsg" />
            
<!--             <input type="text" class="input_text" name="name" id="name"/> -->
            </label>
            <label> <span>Email</span>
<!--             <input type="text" class="input_text" name="email" id="email"/> -->
            <form:input path="email" class="input_text" id="email" name="email"	
							placeholder=" " required="required" />
			<form:errors path="email" cssClass="errorMsg" />
            </label>
            <label> <span>Subject</span>
<!--             <input type="text" class="input_text" name="subject" id="subject"/> -->
            <form:input path="subject" class="input_text" id="subject" name="subject"	
							placeholder=" " required="required" />
			<form:errors path="subject" cssClass="errorMsg" />
            
            </label>
            <label> <span>Message</span>
<!--             <textarea class="message" name="feedback" id="feedback"></textarea> -->
            <form:textarea path="message" class="input_text" id="message" name="message"	
							placeholder=" " required="required" />
			<form:errors path="message" cssClass="errorMsg" />
           
            <input  style= "cursor:pointer" class="button" value="Submit" type="submit"  />
            
            </label>
          </div>
        </form:form>
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
