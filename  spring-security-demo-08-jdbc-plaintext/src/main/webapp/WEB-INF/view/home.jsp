<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<html>


<body>
		
<% pageContext.setAttribute("currentYear", java.util.Calendar.getInstance().get(java.util.Calendar.YEAR)); %>
Current year is: <c:out value="${currentYear}" /><br>
		Welcome !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!<br><hr>
		
		<p>Welcome to home page</p> <hr>
		
		<hr>
		
		<!--  display user name and roles -->
		<p>
		User: <security:authentication property= "principal.username" />
		<!--  this will give the user Id which is logged in --><br><br>
		
		Role(s): <security:authentication property="principal.authorities" />
		<!--  will display the list of Roles. authorities == roles -->
		</p>
		<hr>
		
		<security:authorize access="hasRole('MANAGER')">
		<!--  everything inside this tag will be shown for a given access role
		The link will be shown only for Managers-->
		
		<!-- Add a link to point to /leaders .. this is for managers -->
		
		<p>
		<a href="${pageContext.request.contextPath }/leaders">LeaderShip Meeting</a>
		(only for managers)
		</p>
		
		</security:authorize>
		
		
		<security:authorize access="hasRole('ADMIN')">
		<!--  everything inside this tag will be shown for a given access role
		The link will be shown only for ADMINS-->
		
		<!--  Add a link to point to /systems... this is for admins -->
		
		<p>
		<a href="${pageContext.request.contextPath }/systems">IT Systems Meeting</a>
		(only for admins)
		</p>
		
		</security:authorize>
		<hr>
		<!-- Add a logout button -->
		
		<form:form action="${pageContext.request.contextPath }/logout" 
							method="POST">
		
		<input type="submit" value="Logout" />
		</form:form>
		
		
		
		
</body>
</html>