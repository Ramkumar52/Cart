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
<title>VIEW CART</title>
</head>
<body>

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-10 col-md-offset-1">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Product</th>
							<th>Quantity</th>
							<th class="text-center">Price</th>
							<th class="text-center">Total</th>
							<th> </th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${cartList}" var="cart">
						<tr>
							<td class="col-sm-8 col-md-6">
								<div class="media">
									<a class="thumbnail pull-left" href="#"> <img
										class="media-object"
										src="<c:url value="resources/upload/${cart.productmodel.imgname}.jpg"/>"
										style="width: 72px; height: 72px;">
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="index">${cart.productmodel.name}</a>
										</h4>
										<h5 class="media-heading">
											by <a href="#">Brand name</a>
										</h5>
										<span>Status: </span><span class="text-success"><strong>In
												Stock</strong></span>
									</div>
								</div>
							</td>
							<td class="col-sm-1 col-md-1" style="text-align: center"><input
								type="email" class="form-control" id="exampleInputEmail1"
								value="${cart.quantity}"></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>${cart.productmodel.price}</strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>${cart.totalPrice}</strong></td>
							<td class="col-sm-1 col-md-1">
							<a href="<c:url value="/delete/cart/${cart.cartItemId}"/>">
								<button type="button" class="btn btn-danger">
									<span class="glyphicon glyphicon-remove"></span> Remove
								</button>
							</a></td>
						</tr>
						
						</c:forEach>
		
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td><a href="<c:url value="home"/>">
								<button type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-shopping-cart"></span>
									Continue Shopping
								</button>
							</a></td>
							<td><a href="<c:url value="#"/>">
								<button type="button" class="btn btn-success">
									Checkout <span class="glyphicon glyphicon-play"></span>
								</button>
							</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>