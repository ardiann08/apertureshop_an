<%@include file="component/header.jsp" %>
<% 
  String cu = "";
  String cp = "";
  Cookie[] cookies = request.getCookies();
  if(cookies!=null){
    for(int i=0;i<cookies.length;i++){    
      if(cookies[i].getName().equals("cu")){
        cu = cookies[i].getValue();
      }else if(cookies[i].getName().equals("cp")){
        cp = cookies[i].getValue();
      }
    }
  }
%>

<div class="container">
  <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <div class="panel panel-danger">
        <div class="panel-heading">Thank you for Log In!</div>
        <div class="panel-body">
          <form role="form" method="post" action="doSignin.jsp" accept-charset="UTF-8">

          
            <label>Username</label>
            <input type="text" class="form-control" name="uname" placeholder="Example: johndoe123" value="<%= cu %>">            

            <label>Password</label>
            <input type="password"class="form-control" name="password" value="<%= cp %>">

            <label>
              <input type="checkbox" name="cookies">
              Remember Me
            </label>
        
            <div>
              <label style="color: red">
                <%
                  if(request.getParameter("error") != null){
                      out.print(request.getParameter("error") );
                  }
                %>
              </label>
            </div>
            <p></p>
            <center><input type="submit" class="btn btn-primary m-t-10" name="submit" value="Submit"></center>

          </form>
        </div>
      </div>
    </div>
  </div>
</div>