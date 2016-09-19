<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/respond.js"/>"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<title>GENUNE DATACARDS</title>
<style type="text/css">
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}
</style>
</head>
<body>

	<div class="container">
		<div class="col-md-3">
			<p class="lead">CATEGORY</p>
			<div class="list-group">
				<a href="gi" class="list-group-item">3G</a> <a href="gii"
					class="list-group-item">4G</a> <a href="hubi"
					class="list-group-item">HUB</a>
			</div>
		</div>
              

                    <div class="col-md-9">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="resources/IMAGES/Images/nc.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="resources/IMAGES/Images/nc1.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="resources/IMAGES/Images/nc3.jpg" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                            
                        </div>
                    </div>

                
	</div>
	<br>
	</div>
	<div class="row">

		<div class="col-sm-3 col-lg-3 col-md-3">
			<div class="thumbnail">
				<img src="<c:url value="resources/IMAGES/Images/img11.JPG"/>" alt="">
				<div class="caption">
					<h4 class="pull-right">Rs.1999.00</h4>
					<h4>
						<a href="#">IDEA</a>
					</h4>
				</div>
				<div class="ratings">
					<p class="pull-right">15 reviews</p>
					<p>
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span>
					</p>
				</div>
			</div>
		</div>

		<div class="col-sm-3 col-lg-3 col-md-3">
			<div class="thumbnail">
				<img src="<c:url value="resources/IMAGES/Images/img12.png"/>" alt="">
				<div class="caption">
					<h4 class="pull-right">Rs.1699.99</h4>
					<h4>
						<a href="#">AIRTEL</a>
					</h4>
				</div>
				<div class="ratings">
					<p class="pull-right">12 reviews</p>
					<p>
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star-empty"></span>
					</p>
				</div>
			</div>
		</div>

		<div class="col-sm-3 col-lg-3 col-md-3">
			<div class="thumbnail">
				<img src="<c:url value="resources/IMAGES/Images/1mg13.png"/>" alt="">

				<div class="caption">
					<h4 class="pull-right">Rs.1330.00</h4>
					<h4>
						<a href="#">POWERFI</a>
					</h4>
				</div>
				<div class="ratings">
					<p class="pull-right">31 reviews</p>
					<p>
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star-empty"></span>
					</p>
				</div>
			</div>
		</div>
		<div class="col-sm-3 col-lg-3 col-md-3">
			<div class="thumbnail">
				<img src="<c:url value="resources/IMAGES/Images/img14.png"/>" alt="">

				<div class="caption">
					<h4 class="pull-right">Rs.1330.00</h4>
					<h4>
						<a href="#">INTEX</a>
					</h4>
				</div>
				<div class="ratings">
					<p class="pull-right">25 reviews</p>
					<p>
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star-empty"></span> <span
							class="glyphicon glyphicon-star-empty"></span>
					</p>
				</div>
			</div>
		</div>
	</div>


	<!-- /.container -->

</body>
</html>

