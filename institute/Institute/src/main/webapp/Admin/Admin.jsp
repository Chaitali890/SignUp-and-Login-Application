<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<html>
<head>
  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">   
    <title>admin.jsp</title>
    <%@include file="/all_js_css.jsp" %>    
</head>
<body>
<%@include file="/navbar.jsp" %>

<center>
<h1>Student Management</h1>
</center>

<table border="1" cellpadding="5">
<caption>List of Students</caption>
<tr>
<th>Id</th>
<th>Course</th>
<th>Email</th>
<th>Name</th>
<th>Year</th>
<th>
</tr>

 <c:forEach var="enq" items="${listEnquire}">
                <tr>
                    <td><c:out value="${enq.id}" /></td>
                    <td><c:out value="${enq.course}" /></td>
                    <td><c:out value="${enq.email}" /></td>
                    <td><c:out value="${enq.name}" /></td>
                    <td><c:out value="${enq.year}" /></td>
                </tr>
            </c:forEach>

</table>





</body>
</html>
