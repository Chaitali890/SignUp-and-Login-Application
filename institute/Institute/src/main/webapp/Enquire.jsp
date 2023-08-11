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
              <h2 class="text-uppercase text-center mb-5">General Infomation</h2>

              <form action="<%=request.getContextPath()%>/enquire" method="post">

                <div class="form-outline mb-4">
                    <input type="text" name="name" id="form3Examplev2" class="form-control form-control-lg" />
                    <label class="form-label" for="form3Examplev2">First name</label>
                </div>

                <div class="form-outline mb-4">
          			 <input type="text" name="email" id="form3Examplev3" class="form-control form-control-lg" />
                     <label class="form-label" for="form3Examplev3">Last name</label>
                </div>

                <div class="form-outline mb-4">
                <label class="form-label mx-2" for="form3Examplev2">Admission Year</label>
                    <select class="select" name="year">
                      <option value="1">select year</option>
                      <option value="2021-2022">2021-2022</option>
                      <option value="2022-2023">2022-2023</option>
                      <option value="2023-2024">2023-2024</option>
                    </select>
                </div>

                <div class="form-outline mb-4">
                <label class="form-label mx-2" for="form3Examplev2">Select your course</label>
                    <select class="select" name="course">
                      <option value="1">select course</option>
                      <option value="Full Stack JAVA Developer">Full Stack JAVA Developer</option>
                      <option value="Machine Learning">Machine Learning</option>
                      <option value="Python">Python</option>
                       <option value="Cloud Computing">Cloud Computing</option>
                        <option value="C++">C++</option>
                    </select>
                </div>

             
                <div class="d-flex justify-content-center">
                  <input type="submit" value="submit" class="btn btn-primary btn-block btn-lg gradient-custom-4 text-white">
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
