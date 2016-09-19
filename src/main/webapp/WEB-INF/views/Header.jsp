<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>GENUNE DATACARDS</title>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
    <ul class="nav navbar-nav navbar-TOP">
      <li><a href="<c:url value="/home"/>">Home</a></li>
      <li><a href="<c:url value="/viewall1"/>">ViewAll</a></li> 
       <c:if test="${pageContext.request.userPrincipal.name==null}">
      <li style="float:right"><a href="<c:url value="/login"/>">Login</a></li>    
       </c:if> 
      <li><a href="<c:url value="/about"/>">About</a></li>
      <li><a href="<c:url value="/contact"/>">Contact</a>
       <li><a href="<c:url value="/Cart"/>">Cart</a>
       <c:if test="${pageContext.request.userPrincipal.name==null}">
      <li style="float:right"><a href="<c:url value="/memberShip.obj"/>">Signup</a></li>
      </c:if> 
     <sec:authorize  access="hasRole('ROLE_ADMIN')">
      <li><a href="admin/Prodview">ManageProduct</a></li>
      </sec:authorize>
      <c:if test="${pageContext.request.userPrincipal.name!=null}">
      <li class="active"><a href="<c:url value="/logout"/>">Logout</a></li>
     <h6>${pageContext.request.userPrincipal.name}</h6> 
      </c:if>
     
    </ul>
  </div>
</nav>
</head>
