<%@page import="java.util.Date"%>
<%@page import="dao.Book_Dao"%>
<%@page import="model.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Play books</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="bootstrap/css/homepage-css.css">
	<script src="bootstrap/js/jquery-1.12.0.min.js"></script>
	<link rel="stylesheet" href="js.js">
	<link 
		rel="stylesheet" 
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	>
	
</head>
<body onresize="onResizeWindow()">
<!-- action -->
<div class="action">
	<div class="action-left">
		<!-- logo -->
		<img src="img/logo.png" style="width:180px; height:39px; margin-left:30px;">
	</div>
	<div class="action-main">
		    <div class="input-group">
		      <input type="text" class="form-control" placeholder="Search for...">
		      <span class="input-group-btn">
		        <button class="btn btn-default" type="button" id="btnSearch" style="background:#039BE5;color:white;">Search</button>
		      </span>
		  </div>
	</div>
	<div class="action-right">
		<ul class="nav navbar-nav navbar-right" style="z-index:101">
				<li><a href="#">Vũ Dũng</a></li>
				<li class="dropdown">
					<a href="" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars menu-bar-right"></i></a>
					<ul class="dropdown-menu">
						<li><a href="#">Profile</a></li>
						<li><a href="#">My Library</a></li>
						<li><a href="#">Payment</a></li>
						<li><a href="#">Sign Out</a></li>
					</ul>
				</li>
			</ul>
		<!-- <i class="fa fa-bars menu-bar"></i>
		<a href="">Vũ Dũng</a> -->
	</div>
</div>
<!-- header-link -->
<div class="headerLink">
	<div class="header-icon">
		<img src="img/icon-book.png" style=" margin-left:24px; margin-top:8px;float:left;">
		<p style="margin-left:20px; font-size: 16px; color:white; float:left; margin-top:9px;">Books</p>
	</div>

	<!-- menu -->
	<div class="head-menu">
		<ul class="menu-top">
			<li><a href="">Home</a> </li>
			<li><a href="">Category</a> </li>
			<li><a href="">Top Charts</a> </li>
			<li><a href="">New Releases</a> </li>
			<li><a href="">Top Paid</a> </li>

		</ul>
	</div>

</div>
<!-- content -->
<div class="content">
	<div class="content-menu-left">
		<div class="menu-left">
			<li>My Library</li>
			<li>Shop</li>
			<!-- <hr style="margin-left:20px; margin-right: 20px; size:3;"> -->
		</div>
	</div>
	<!-- load san pham -->
	<%
		Book_Dao bookDao =  new Book_Dao();
		List<Book> listRecomendedBook = bookDao.getAllBook();
	%>
	<div class="content-main">
		<!-- Recommended for You -->
		<div class="recomend-item">
			<!-- head-text -->
			<div class="recomend-head">
				<div class="head-text">
					<span>Recommended for You</span>
				</div>
				<div class="head-button">
					<input class="button-more" type="button" value="See More" id="SeeMore">
				</div>
			</div>
			<!-- list book -->
			<ul class="list-book">
				<!-- item -->
				<%
				for(Book b: listRecomendedBook) {
					String url ="img/books/" + b.getiD_Book() + ".jpg";
				%>
				<li class="box-item">
				<!-- image of book -->
					<div>
					<span class="rool">
						<a href=""><i style="font-size:25px; float:right; color:white; margin-top:10px; margin-right:10px;" class="fa fa-ellipsis-v"></i></a>
					</span>
						<img src="<%=url%>"
						style="width:162px; height:246px;">
					</div>
					<!-- name of book -->
					<div class="name-of-book">
						<div style="font-size:16px; padding-left:5px; padding-top:5px;color:gray; max-width:162px;height:28px;overflow: hidden;">
							<%=b.getTitle()%>
						</div>
						<div style="font-size:13px; padding-left:5px; color:gray;float:left;">
							<%=b.getiD_Author()%>
						</div>
						<div style="font-size:15px; padding-left:5px;padding-right:10px; color:#039BE5;float:right;">
							<%
								if(b.getPrice() == 0){
									%><%="FREE"%><%
								}
								else
								{
									%><%=b.getPrice() %><%
								}
							%>
						</div>
						<div style="font-size:12px; padding-left:5px; padding-top:10px;color:gray;clear:both;font-style: italic;">
							Top book
						</div>
					</div>
				</li>
				<% } %>
			</ul>
		</div>
	</div>
</div>

<!-- footer -->
<div class="footer">
	<ul class="footer-menu">
		<span class="footer-text">©2016 Books</span>
		<li><a href="">Site Terms of Service</a></li>
		<li><a href="">Privacy Policy</a></li>
		<li><a href="">Developers</a></li>
		<li><a href=""> Artists</a></li>
		<li><a href=""> About us</a></li>
	</ul>
</div>
<script src="bootstrap/js/bootstrap.js"></script>
<script>
	$(document).ready(function() {
        $(window).bind("scroll", function() {
                var pos  = $(this).scrollTop();
                var pos_y = $(this).scrollLeft();

                if(pos < 50){
                	jQuery('.headerLink').css({"top":70 - pos +"px"});
                	jQuery('.content-menu-left').css({"top":110 - pos +"px"});
                }else{
                	if(pos > 50){
                		jQuery('.headerLink').css({"top": "0px"});
                		jQuery('.content-menu-left').css({"top": "40px"});
                	}
                	else
                		if(pos == 0){
                			jQuery('.headerLink').css({"top": "70px"});
                			jQuery('.content-menu-left').css({"top": "110px"});
                		}
                }

                jQuery('.headerLink').css({"left":0 - pos_y +"px"});
            	jQuery('.content-menu-left').css({"left":0 - pos_y+"px"});

        });
	});
</script>
</body>
</html>