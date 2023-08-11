<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>

<%@include file="all_js_css.jsp" %>
 
</head>
<body>

<div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %>
    <div class="container w-50">
    <h1>Please Fill Your Note Detail</h1>
    
    <!-- --This is Add Form -->
    
    <form action="SaveNoteServlet" method="post">
    
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text"  name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" required>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Note Content</label>
  	<textarea name="content" id="content" placeholder="Enter Your Content here" class="form-control" style="height:300px;" required></textarea>
  </div>
  
	<div class="container text-center">
  	<button type="submit" class="btn btn-primary">Add</button>
	</div>

</form>
    </div>
    
    </div>

</body>
</html>