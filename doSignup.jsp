<%@include file="helper/connect.jsp"%>
<%
	String fullname = request.getParameter("fname");
	String username = request.getParameter("uname");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String verif = request.getParameter("verifypass");
	String phonenumber = request.getParameter("pnumber");
	String birthdate = request.getParameter("birthdate");
	String error="";


	if(fullname.length() < 4 || fullname.length()>20){
		error += "fullname length must between 4 and 20 <br/>";
	}

	if(username.length() < 5 || username.length()>15){
		error += "username length must between 5 and 15 <br/>";
	}

	if(password.length() < 7 || password.length()>15){
		error += "password length must between 7 and 15 <br/>";
	}

	if(phonenumber.length() < 11 || phonenumber.length()>13){
		error += "phonenumber length must between 5 and 15 <br/>";
	}


	if(!password.equals(verif)){
		error+="Password and Confirm Password Doesn't match<br/>";
	}
	
	if(error.equals("")){
		String query="insert into user values(null,'"+fullname+"','"+username+"','"+email+"','"+password+"','"+phonenumber+"','"+birthdate+"','member')";
		st.executeUpdate(query);
		response.sendRedirect("signup.jsp?error=success to register, thankyou");
	}else{
		response.sendRedirect("signup.jsp?error="+error);
	}

%>