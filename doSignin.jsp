<%@include file="helper/connect.jsp"%>
<%
	String query="select * from user where username ='"+request.getParameter("uname")+"' and Password = '"+request.getParameter("password")+"'";
	ResultSet rs = st.executeQuery(query);
	if(rs.next()){
		session.setAttribute("session_userid",rs.getString("userid"));
		session.setAttribute("session_role",rs.getString("role"));

		Integer totaluser = (Integer)application.getAttribute("application_useronline");
		if(totaluser==null){
			 totaluser = 1;
		}else{
			 totaluser ++;
		}	
		application.setAttribute("application_useronline",totaluser);

		if(request.getParameter("cookies")!=null){
			Cookie cu = new Cookie("cu",request.getParameter("uname"));
			Cookie cp = new Cookie("cp",request.getParameter("password"));

			cu.setMaxAge(60*60*24);
			cp.setMaxAge(60*60*24);

			cu.setPath("/");
			cp.setPath("/");

			response.addCookie(cu);
			response.addCookie(cp);
		}
		response.sendRedirect("index.jsp");
	}else{
		response.sendRedirect("login.jsp?error=Invalid+Email+or+Password");
	}

%>