<%@include file="helper/connect.jsp"%>
<%
	 String query="select * from product , cart where product.productid = cart.productid and cart.userid = "+session.getAttribute("session_userid");
	ResultSet rs = st.executeQuery(query);
	String query2="";
	int stock = 0;
	while(rs.next()){
		stock = Integer.parseInt(rs.getString("stock")) + Integer.parseInt(rs.getString("quantity"));
		query2="update product set stock = "+stock+" where productid = "+rs.getString("productid");
		stmt.executeUpdate(query2);
	}
	query2="delete from cart where userid = "+session.getAttribute("session_userid");
	stmt.executeUpdate(query2);
	response.sendRedirect("cart.jsp");
%>