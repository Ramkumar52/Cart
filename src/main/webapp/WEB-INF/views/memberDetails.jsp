<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.form-group{
border-collapse: collapse;
    width: 100%;
    
     text-align: left;
    padding: 4px;
    
    background-color: red;
    color: white;
}
.btn btn-success{
color:green;
}
</style>
</head>

<body>
<div class="content">
			<fieldset>
				<legend>Become Member</legend>
		
				<form:form modelAttribute="newUser" ><br />
				<div class="form-group">
					<form:label path="firstname" class="col-md-3 control-label">Firstname:</form:label>
					<div class="col-md-9">
					<form:input path="firstname" /><br />
					</div>
					</div>
					
					<!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('firstname')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<div class="form-group">
					<form:label path="lastname" class="col-md-3 control-label">Lastname: </form:label>
					<div class="col-md-9">
					<form:input path="lastname" /><br />
					</div>
					</div>
					
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('lastname')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<div class="form-group">
					<form:label path="email" class="col-md-3 control-label">Email Id: </form:label>
					<div class="col-md-9">
					<form:input path="email" /><br />
					</div>
					</div>
					
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<div class="form-group">
					<form:label path="phonenumber"  class="col-md-3 control-label">Phone Number: </form:label>
					<div class="col-md-9">
					<form:input path="phonenumber" /><br />
					</div>
					</div>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('phonenumber')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<div class="form-group">
					<form:label path="password" class="col-md-3 control-label">Password: </form:label>
					<div class="col-md-9">
					<form:input path="password" type="password"/><br />
					</div>
					</div>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<div class="form-group">
					<form:label path="confirmpassword" class="col-md-3 control-label">Confirm Password: </form:label>
					<div class="col-md-9">
					<form:input path="confirmpassword" type="password"/><br />
					</div>
					</div>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('confirmpassword')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<div class="form-group">
					<form:label path="age" class="col-md-3 control-label">Age: </form:label>
					<div class="col-md-9">
					<form:input path="age" /><br />
					</div>
					</div>
					
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('age')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<input name="_eventId_submit" type="submit" class="btn btn-success"  type="button" value="Submit" /><br />
				</form:form>
			</fieldset>
		</div>
</body>
</html>