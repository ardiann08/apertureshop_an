<!DOCTYPE html>
<html>
<head>
  <title>Aperture Shop</title>
  <link rel="stylesheet" type="text/css" href="sources/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="sources/css/styles.css">
  <link rel="stylesheet" type="text/css" href="sources/css/header.css">
  <script type="text/javascript" src="sources/js/jquery.min.js"></script>
  <script type="text/javascript" src="sources/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="navbar navbar-default navbar-tt navbar-static-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
          <span class="sr-only">Toggle navigation</span>
          <i class="fa fa-reorder"></i>       
        </button>
        <a class="navbar-brand">
          <img alt="Brand" src="sources/picture/logo.jpg" width="180" height="100">
        </a>
      </div>
      <div class="collapse navbar-collapse" id="navbar-ex-collapse">
        <div>
          <ul class="nav navbar-nav nav-tt navbar-right navbar-uppr">
            <li class="active">
              <a href="#"><i class="fa fa-2x fa-facebook-official fa-fw text-white"></i></a>
            </li>
            <li>
              <a href="#"><i class="fa fa-2x fa-fw fa-twitter text-white"></i></a>
            </li>
            <li>
              <a href="#"><i class="fa fa-2x fa-fw fa-linkedin-square text-white"></i></a>
            </li>
            <li>
              <a href="#"><i class="fa fa-2x fa-fw fa-google-plus-square text-white"></i></a>
            </li>
            <li>
              <a href="#"><i class="fa fa-2x fa-fw fa-youtube text-white"></i></a>
            </li>    
            <li>
            <%
                Integer totaluser =  (Integer)application.getAttribute("application_useronline");
                if(totaluser == null) totaluser = 0;
            %>
              <label style="color: white">User Online : <%= totaluser %></label>
            </li>        
          </ul>      
        </div>
        <%
          if(session.getAttribute("session_role") == null ){
        %>
        <ul class="nav navbar-nav nav-tt navbar-right navbar-lwr">
          <li class="active">
            <a href="index.jsp">Home</a>
          </li>
          <li>
            <a href="login.jsp">Log In</a>
          </li>
          <li>
            <a href="signup.jsp">Sign Up</a>
          </li>          
        </ul>
        <%}else if(session.getAttribute("session_role").equals("member")){%>
        <ul class="nav navbar-nav nav-tt navbar-right navbar-lwr">
          <li class="active">
            <a href="index.jsp">Home</a>
          </li>
          <li>
            <a href="product.jsp">Product</a>
          </li>
          <li>
            <a href="cart.jsp">Cart</a>
          </li>
          <li>
            <a href="#">Transaction</a>
          </li>  
          <li>
            <a href="#">My Review</a>
          </li>
          <li>
            <a href="#">All Review</a>
          </li>  
          <li>
            <a href="manageaccount.jsp">Manage Account</a>
          </li>         
          <li>
            <a href="doSignout.jsp">Log Out</a>
          </li>        
        </ul>
        <%}else{%>
        <ul class="nav navbar-nav nav-tt navbar-right navbar-lwr">
          <li class="active">
            <a href="index.jsp">Home</a>
          </li>
          <li>
            <a href="login.jsp">Insert Product</a>
          </li>
          <li>
            <a href="#">Manage Product</a>
          </li>  
          <li>
            <a href="#">Manage Transaction</a>
          </li>  
          <li>
            <a href="doSignout.jsp">Log Out</a>
          </li>        
        </ul>
        <%}%>
      </div>
    </div>
  </div>
</body>
</html>