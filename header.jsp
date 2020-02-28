<!DOCTYPE HTML>

<html>
	<head>
		<title>SocialQ&A</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<div class="logo container">
						<div>
							<h1><a href="" id="logo">SocialQ&A:</a></h1>
							<p>An Online Social Network Based Question and Answer System</p>
						</div>
					</div>
				</header>

			<!-- Nav -->
				<nav id="nav">
					<ul>
						<li ><a href="index.jsp">Home</a></li>
						<li><a href="user.jsp">User</a></li>
						<li><a href="signup.jsp">Sign Up</a></li>
						<li><a href="admin.jsp">Social Q&A</a></li>
						</ul>
				</nav>

			<!-- Main -->	<div id="main-wrapper">
					<div id="main" class="container">
						<div class="row">
							<div class="3u 12u(mobile)">
								<div class="sidebar">
											<section>
											</section>

								</div>
							</div>
							<div class="9u 12u(mobile) important(mobile)">
								<div class="content content-right">

									<!-- Content -->

										<article class="box page-content">

											<section>
<%@ page  import="database.mysql.*" %>
<%
String path = request.getRealPath("/"); 
Check.main(path);
%>