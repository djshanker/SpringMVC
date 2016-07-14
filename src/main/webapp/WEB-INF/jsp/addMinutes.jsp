<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="spring" uri = "http://www.springframework.org/tags" %>    
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page for adding minutes~</title>
</head>
<body>
<h1>Add minutes page for DJ!</h1>


Language Preference : <a href="?language=en">English</a> | <a href="?language=es">Spanish</a>


<form:form commandName = "exercise">
	<table>
		<tr>
			<td><spring:message code="goal.text"/> </td>
			<td><form:input path="minutes"/>
		</tr>
		<tr>
			<td colspan="2"></td>
			<td><input type= "submit" value="Enter the exercise"></td>
		</tr>
	</table>
</form:form>
<h1>Our target for the day is : ${target.minutes}</h1>

</body>
</html>