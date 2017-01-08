<%@include file="helper/connect.jsp"%>
<%
	String query ="select * from cart where productid = "+request.getParameter("productid")+" and userid = "+session.getAttribute("session_userid");
	ResultSet rs = st.executeQuery(query);
	String query2="select * from product where productid = "+request.getParameter("productid");
	ResultSet rs2 = stmt.executeQuery(query2);
	int price = 0;
	int stock = 0;
	if(rs2.next()){
		price = Integer.parseInt(rs2.getString("price"));
		stock = Integer.parseInt(rs2.getString("stock"));
	}
	if(rs.next()){	
		int subtotal = Integer.parseInt(request.getParameter("quantity")) * price;
		subtotal += Integer.parseInt(rs.getString("subtotal"));
		int quantity = Integer.parseInt(request.getParameter("quantity"))+Integer.parseInt(rs.getString("quantity"));
		query2="update cart set quantity = "+quantity+" , subtotal = "+subtotal+" where cartid = "+rs.getString("cartid");
		stmt.executeUpdate(query2);
	}else{
		int subtotal = Integer.parseInt(request.getParameter("quantity")) * price;
		query2="insert into cart values(null,"+session.getAttribute("session_userid")+","+request.getParameter("productid")+","+request.getParameter("quantity")+","+subtotal+")";
		stmt.executeUpdate(query2);
	}
	stock-=Integer.parseInt(request.getParameter("quantity"));
	query="update product set stock = "+stock+" where productid = "+request.getParameter("productid");
	st.executeUpdate(query);
	response.sendRedirect("product.jsp");
%>