<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="content">
			<fieldset>
				<legend>Confirm Details</legend>
				<form:form modelAttribute="newUser">
					<form:label path="firstname">FirstName:</form:label>${newUser.firstname}
					<br /><br />
					<form:label path="lastname">LastName:</form:label>${newUser.lastname}
					<br /><br />
					<form:label path="email">Email Id:</form:label>${newUser.email}
					<br /><br />
					<form:label path="phonenumber">PhoneNumber:</form:label>${newUser.phonenumber}
					<br /><br />
					<form:label path="password">Password:</form:label>${newUser.password}
					<br /><br />
					<form:label path="confirmpassword">ConfirmPassword:</form:label>${newUser.confirmpassword}
					<br /><br />
					<form:label path="age">Age :</form:label>${newUser.age}
					<br /><br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_edit" type="submit" value="Edit" /> 
					<input name="_eventId_submit" type="submit" value="Confirm Details" /><br />
				</form:form>
			</fieldset>
		</div>
</body>
</html>