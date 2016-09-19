<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
.table{
border-collapse: collapse;
    width: 100%;
}
th, td {
    text-align: left;
    padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2}
th {
    background-color: #4CAF50;
    color: white;
}
</style>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table border="1">
<th>ID</th>
<th>NAME</th>
<th>DESCRIPTION</th>
<th>PRICE</th>
<th>CATEGORY</th>
<c:forEach items="${productmodelList }" var="productModel">
 <tr>
   <td>${productModel.id}</td>
   <td>${productModel.name}</td>
   <td>${productModel.description}</td>
   <td>${productModel.price}</td>
   <td>${productModel.category}</td>
 </tr>
 </c:forEach>
 
</table>
</body>
</html>