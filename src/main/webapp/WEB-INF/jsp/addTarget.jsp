<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.error {
	color: #ff0000;
}
.errorblock {
	color: #000;
	backgroundcolor: #ffEEEE;
	border:3px solid #ff0000;
	padding: 8px;
	margin: 16px; 
}
</style>



</head>
<body>
<form:form commandName = "target">
<form:errors path= "*" cssClass="errorblock" element="div"  />
	<table>
		<tr>
			<td>Enter the no. of minutes</td>
			<td><form:input path="minutes" cssClass="error"/></td>
			<td><form:errors path="minutes" cssClass="error"/></td>
			
			
		</tr>
		<tr>
			<td colspan="3">
			<input type="submit" value="Enter the target minutes"/>
			
			</td>
			
		</tr>
	</table>

</form:form>
</body>
</html>