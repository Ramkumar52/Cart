<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="/WEB-INF/views/Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
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
<title>ADD PRODUCT</title>
</head>
<body>
	<form:form action="productmodel.do" method="POST" modelAttribute="ob"
		enctype="multipart/form-data">

		<table class="table table-hover">

			<tr>
				<td>Category <form:select path="category" name="CATEGORY">
						<form:option value="NONE" label="--Select--" />
						<form:option value="3G">3G</form:option>
						<form:option value="4G">4G</form:option>
						<form:option value="HUB">HUB</form:option></td>
				</form:select>
			</tr>
			<br>
			
			<tr>
				<td>Product ID</td>
				<td>				
				<form:input name="id" type="text" path="id" placeholder="id"/></td>
			</tr>
			<br>
			<tr>
				<td>Product Name</td>
				<td><form:input name="name" type="text" path="name" placeholder="name"/></td>
				<form:errors path="name"></form:errors>
			</tr>
			<br>
			<tr>
				<td>Product Description</td>
				<td><form:input name="description" type="text" path="description" placeholder="description"/></td>
				<form:errors path="description" ></form:errors>
			</tr>
			<br>
			<tr>
				<td>Product Price</td>
				<td><form:input type="num" path="price" placeholder="price"/></td>
			</tr>
			<br>
<td>Image Name</td>
			<td> <form:input path="imgname" type="text" placeholder="image name"/></td>
            <form:errors path="imgname" type="text"/>
			<td><form:input path="filename" type="file" /></td>
			
			<tr>
				<td colspan="2">
				<input   type="submit" name="action" value="Add" button class="btn btn-success btn-add" type="button">
        </button>
				<input  type="submit" name="action" value="ViewAll" button class="btn btn-success btn-add" type="button">
        </button></td>
			</tr>
		</table>
		<br>
		
	</form:form>
</body>
</html>