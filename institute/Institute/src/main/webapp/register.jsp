     <%@include file="all_js_css.jsp" %>
    <%@include file="header.jsp" %>
    <%@include file="navbar.jsp" %>
	
	<section class="vh-60">
  <div class="mask d-flex align-items-center h-60 gradient-custom-3">
    <div class="container h-60 mb-5">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6"> 
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5 shadow">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>

              <form action="<%=request.getContextPath()%>/register" method="post">

                <div class="form-outline mb-4">
           <label for="uname">First Name:</label> <input type="text"
        class="form-control" id="uname" placeholder="First Name"
        name="firstName" required>
                </div>

                <div class="form-outline mb-4">
                   <label for="uname">Last Name:</label> <input type="text"
        class="form-control" id="uname" placeholder="last Name"
        name="lastName" required>
                </div>

                <div class="form-outline mb-4">
           <label for="uname">User Name:</label> <input type="text"
        class="form-control" id="username" placeholder="User Name"
        name="username" required>
                </div>

                <div class="form-outline mb-4">
                         <label for="uname">Password:</label> <input type="password"
        class="form-control" id="password" placeholder="Password"
        name="password" required>
                </div>

                <div class="d-flex justify-content-center">
                  <input type="submit" value="submit" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">
                </div>

                <p class="text-center text-muted">Have already an account? <a href="login.jsp"
                    class="fw-bold text-body">Login here</a></p>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
	<%@include file="footer.jsp" %>
	
	
	

	