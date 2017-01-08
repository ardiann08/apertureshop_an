<%@include file="component/header.jsp" %>

<div class="container">
  <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <div class="panel panel-danger">
        <div class="panel-heading">Thank you for Sign Up!</div>
        <div class="panel-body">
          <form role="form" method="post" action="doSignup.jsp" accept-charset="UTF-8">

          <label>Full Name</label>
            <input type="text" class="form-control" name="fname" placeholder="Example: John Doe">

            <labe>Username</label>
            <input type="text" class="form-control" name="uname" placeholder="Example: johndoe123">            

            <label>Email Address</label>
            <input type="email" class="form-control" name="email" placeholder="Example: john.smith@gmail.com">

            <label>Password</label>
            <input type="password"class="form-control" name="password">

            <label>Verify Password</label>
            <input type="password" class="form-control" name="verifypass">

            <label>Phone Number</label>
            <input type="number" class="form-control" name="pnumber" placeholder="Example : 08123456789">

            <label>Birthdate</label>
            <input type="date" class="form-control" name="birthdate">

            <label style="color: red">
              <%
                if(request.getParameter("error") != null){
                    out.print(request.getParameter("error") );
                }
              %>

            </label>

            <p></p>
            <center><input type="submit" class="btn btn-primary m-t-10" name="submit" value="Submit"></center>

          </form>
        </div>
      </div>
    </div>
  </div>
</div>