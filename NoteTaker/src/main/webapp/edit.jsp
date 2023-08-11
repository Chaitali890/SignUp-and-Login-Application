<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %>
    
    <h1>This is edit page</h1>
    
    <%
    	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    	
    	Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		Note note = (Note)s.get(Note.class,noteId);
		
	%>
		
		 <form action="UpdateServlet" method="post">
		    
		    <input value="<%=note.getId() %>" name="noteId" type="hidden"/>
		    
		  <div class="form-group">
		    <label for="title">Note Title</label>
		    <input type="text"  name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" value="<%=note.getTitle() %>" required>
		  </div>
		  
		  <div class="form-group">
		    <label for="exampleInputPassword1">Note Content</label>
		  	<textarea name="content" id="content" placeholder="Enter Your Content here" class="form-control" style="height:300px;" required>
		  	<%=note.getContent() %>
		  	</textarea>
		  </div>
		  
			<div class="container text-center">
		  	<button type="submit" class="btn btn-success">Save Your Note</button>
			</div>

		</form>
    
    </div>

</body>
</html>