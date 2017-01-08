<%@include file="component/header.jsp" %>
<%@include file="helper/connect.jsp"%>

<%
  String query = "select * from user where userid = " + session.getAttribute("session_userid");
  ResultSet rs = st.executeQuery(query);
  if(rs.next()){
%>


<div class="container">
  <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <div class="panel panel-danger">
        <div class="panel-heading">My Profile</div>
        <div class="panel-body">
          <form role="form" method="post" action="doUpdateProfile.jsp" accept-charset="UTF-8">

            
            <label>Username</label>
            <input type="text" class="form-control" name="uname" value="<%= rs.getString("username")%>">            

            <label>Password</label>
            <input type="text"class="form-control" name="password" value="<%= rs.getString("password")%>">


            <label>Full Name</label>
            <input type="text" class="form-control" name="fname" value="<%= rs.getString("fullname")%>">

            <label>Phone Number</label>
            <input type="number" class="form-control" name="pnumber" value="<%= rs.getString("pnumber")%>">


            <label>Email Address</label>
            <input type="email" class="form-control" name="email" value="<%= rs.getString("email")%>">

            <label style="color: red">
              <%
                if(request.getParameter("error") != null){
                    out.print(request.getParameter("error") );
                }
              %>

            </label>
            <p></p>
            <center><input type="submit" class="btn btn-primary m-t-10" name="submit" value="update"></center>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<%}%>