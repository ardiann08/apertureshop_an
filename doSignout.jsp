<%
	session.invalidate();
	Integer totaluser = (Integer)application.getAttribute("application_useronline");
	totaluser--;
	application.setAttribute("application_useronline",totaluser);
	response.sendRedirect("index.jsp");
%>