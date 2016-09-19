<%-- <body>
        <div class="container">
            <div class="row">    
                <div class="col-xs-12 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">  
                    <!-- image-preview-filename input [CUT FROM HERE]-->
                    <div class="input-group image-preview">
                        <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                        <span class="input-group-btn">
                            <!-- image-preview-clear button -->
                            <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                                <span class="glyphicon glyphicon-remove"></span> Clear
                            </button>
                            <!-- image-preview-input -->
                            <div class="btn btn-default image-preview-input">
                                <span class="glyphicon glyphicon-folder-open"></span>
                                <span class="image-preview-input-title">Browse</span>
                                <input type="file" accept="image/png, image/jpeg, image/gif" name="input-file-preview"/> <!-- rename it -->
                            </div>
                        </span>
                    </div><!-- /input-group image-preview [TO HERE]--> 
                </div>
            </div>
        </div>
    
        <label for="category">Categories:</label>
        <select multiple class="form-control" id="category">
            <option value="one">One</option>
            <option value="two">Two</option>
            <option value="three">Three</option>
            <option value="four">Four</option>
            <option value="five">Five</option>
        </select>

        <table>
            <thead>
                <tr>
                    <th><label>Size</label></th>
                    <th><label>Color</label></th>
                    <th><label>Other</label></th>
                    <th><label>Price</label></th>
                    <th><label>Quantity</label></th>
                    <th><label>Promotion</label></th>
                    <th></th>
                </tr>
            </thead>

            <tbody><%@page language="java" contentType="text/html; charset=ISO-8859-1"
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

		<table>

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
				<td><form:input path="id" /></td>
			</tr>
			<br>
			<tr>
				<td>Product Name</td>
				<td><form:input path="name" /></td>
			</tr>
			<br>
			<tr>
				<td>Product Description</td>
				<td><form:input path="description" /></td>
			</tr>
			<br>
			<tr>
				<td>Product Price</td>
				<td><form:input path="price" /></td>
			</tr>
			<br>
<td>Image Name</td>
			<td> <form:input path="imgname" type="text" /></td>

			<td><form:input path="filename" type="file" /></td>
			
			<tr>
				<td colspan="2">
				<input  type="submit" name="action" value="Add" <button class="btn btn-success btn-add" type="button" input  type="submit" name="action" value="Add">
           <i class="glyphicon glyphicon-plus gs"></i> 
        </button>/>
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" /> 
				<input type="submit" name="action" value="ViewAll" /></td>
			</tr>

		</table>
		<br>
		<a href="/prodviewz">viewall</a>
	</form:form>
</body>
</html>
                <tr>
                    <td><input class="form-control" name="size[]" type="text" placeholder="Size" /><%@page language="java" contentType="text/html; charset=ISO-8859-1"
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
				<td><form:input class="form-control" name="id" type="text" path="id" /></td>
			</tr>
			<br>
			<tr>
				<td>Product Name</td>
				<td><form:input class="form-control" name="name" type="text" path="name" /></td>
			</tr>
			<br>
			<tr>
				<td>Product Description</td>
				<td><form:input class="form-control" name="description" type="text" path="description" /></td>
			</tr>
			<br>
			<tr>
				<td>Product Price</td>
				<td><form:input class="form-control" name="price" type="num" path="price" /></td>
			</tr>
			<br>
<td>Image Name</td>
			<td> <form:input path="imgname" type="text" /></td>

			<td><form:input path="filename" type="file" /></td>
			
			<tr>
				<td colspan="2">
				<input  type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" /> 
				<input type="submit" name="action" value="ViewAll" /></td>
			</tr>
		</table>
		<br>
		<a href="/prodviewz">viewall</a>
	</form:form>
</body>
</html></td>
                    <td><input class="form-control" name="color[]" type="text" placeholder="Color" /></td>
                    <td><input class="form-control" name="other[]" type="text" placeholder="Other" /></td>
                    <td><input class="form-control" name="price[]" type="text" placeholder="Price" /></td>
                    <td><input class="form-control" name="quantity[]" type="number" placeholder="Quantity" /></td>
                    <td><input class="form-control" name="promotion[]" type="text" placeholder="Promotion" /></td>
                    <td>
                        <button class="btn btn-danger btn-remove" type="button">
                            <i class="glyphicon glyphicon-minus gs"></i>
                        </button>
                    </td>
                </tr>
            </tbody>

        </table>

        <button class="btn btn-success btn-add" type="button" input  type="submit" name="action" value="Add">
           <i class="glyphicon glyphicon-plus gs"></i> 
           <b> Add</b>
        </button>

    </body> --%>