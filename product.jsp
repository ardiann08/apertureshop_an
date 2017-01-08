<%@include file="component/header.jsp" %>
<%@include file="helper/connect.jsp"%>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Product</h1>
            </div>
            <div class="col-md-12">
                <%
                    String query="select * from product";
                    ResultSet rs = st.executeQuery(query);
                    while(rs.next()){
                %>
                <div class="col-md-4 col-sm-4 col-xs-4" style="text-align: center;">
                    <img src="sources/picture/<%=rs.getString("image")%>" alt="" class="img-responsive">
                    Name : <%=rs.getString("name")%> <br>
                    Weight : <%=rs.getString("weight")%> <br>
                    Price : <%=rs.getString("price")%> <br>
                    Stock : <%=rs.getString("stock")%> <br>
                    Specification : <%=rs.getString("specification")%>
                    <%if(session.getAttribute("session_role").equals("member")&&rs.getString("stock").equals("0")==false){%>
                    <form action="doInsertCart.jsp" method="post">
                        <input type="hidden" value="<%=rs.getString("productid")%>" name="productid">
                        <input type="number" name="quantity" min="1" max="<%=rs.getString("stock")%>" value="1" class="form-control">
                        <button class="btn btn-primary" type="submit">Add to Cart</button>
                    </form>
                    <%}%>
                </div>
                <%}%>
            </div>
        </div>
    </div>
</div>
