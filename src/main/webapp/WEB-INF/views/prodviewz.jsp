<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/respond.js"/>" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>" ></script>
<script
 src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<title>PRODUCT DETAIL</title>
<style>
table {
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
</head>
<body>

		<table border="1">
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>PRICE</th>
			<th>CATEGORY</th>
			<th>IMAGE NAME</th>
			<th>EDIT</th>
			<th>DELETE</th>
			
			<c:forEach items="${productmodelList}" var="productmodel">
				<tr>
					<td>${productmodel.id}</td>
					<td>${productmodel.name}</td>
					<td>${productmodel.description}</td>
					<td>${productmodel.price}</td>
					<td>${productmodel.category}</td>
					<td>${productmodel.imgname}</td>
					<td><a href="<c:url value="edit/${productmodel.id}"/>"><span class="glyphicon glyphicon-pencil"></span>Edit</a></td> 
	     			<td><a href="<c:url value="delete/${productmodel.id}"/>">Delete</a></td>
					<%-- <a href="editDoctor?id=${doctor.id}">Edit</a> --%>
				 <!-- Wrapper for slides -->
    <div class="retrieve" role="list">
      <div class="retrieve">
						<div class="item">
							<img src="<c:url value='/resources/upload/${productmodel.imgname}.jpg'/>"/>
						</div>
					</div>
					<sec:authorize access="hasRole('ROLE_USER')">
						<div class="row">
							<div class="col-md-6">
								<a href="#" class="btn btn-default "> view in detail</a>
							</div>
							<div class="col-md-6">
								<a href="addtocart/${product.id}" class="btn btn-default"><span
									class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
							</div>
						</div>
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
							<div class="row">
							<div class="col-md-6">
								<a href="<c:url value='edit/${productmodel.id}'/>" class="btn btn-default " class="glyphicon glyphicon-pencil"> Edit</a>
							</div>
							<div class="col-md-6">
								<a href="<c:url value='delete/${productmodel.id}'/>" class="btn btn-default"><span
									class="glyphicon glyphicon-delete"></span> Delete</a>
							</div>
						</div>
					</sec:authorize>
    </div>

<!-- 
<script type="text/javascript">
angular.module('sortApp',[]).controller('mainController',function($scope,$http){
 alert("hi");
 
  console.log("im in getProduct");
  $http({method:'GET',url:'displayBlog'}).success(function(data,status,headers,config)
    
  {
  alert(data); 
   //$scope.categ=JSON.parse(JSON.stringify(data));
   $scope.categ=data;
   console.log("length"+categ.length);
   for(var c=0;c<$scope.categ.length;c++)
    {
     var cc=$scope.categ[c];
     console.log(cc);
     console.log($scope.categ);
     return $scope.categ;
    }
   
   
  });
 
});


</script>

add in displaying page

<div class="container" ng-app="sortApp" ng-controller="mainController">
<tr ng-repeat="c in categ|filter:byname">
 <td>{{c.message}}</td>
  <td></td>
  <td>{{c.blog_category}}</td>
</div> -->

				</tr>
			</c:forEach>
		</table>
		
</body>
</html>