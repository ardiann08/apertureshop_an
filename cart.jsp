<%@include file="component/header.jsp" %>
<%@include file="helper/connect.jsp"%>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>My Cart
                <a class="btn btn-default pull-right" href="deleteCart.jsp">Empty Cart</a>
                </h1>
            </div>
            <%
            String query="select * from product , cart where product.productid = cart.productid and cart.userid = "+session.getAttribute("session_userid");
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
            %>
            <div class="col-md-12">
                <div class="col-md-3 col-sm-3 col-xs-3" style="text-align: center;">
                    <img src="sources/picture/<%=rs.getString("image")%>" alt="" class="img-responsive">
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3" style="text-align: center;">
                    <label for="">Product Name : <br> <%=rs.getString("name")%></label>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3" style="text-align: center;">
                    <label for="">Cart Quantity :  <br> <%=rs.getString("quantity")%></label>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3" style="text-align: center;">
                    <label for="">Subtotal :  <br> <%=rs.getString("subtotal")%></label>
                </div>
            </div>
            <%}%>
            <%
                rs.beforeFirst();
                if(rs.next()){
            %>
            <div class="col-md-12">
                <form action="">
                    <button class="btn btn-success btn-lg">Checkout</button>
                </form>
            </div>
            <%}%>
        </div>
    </div>
</div>