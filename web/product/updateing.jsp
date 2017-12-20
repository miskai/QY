<%@ page import="product.Product" %>
<%@ page import="product.ProductImp" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/28
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("productName");
    String model=request.getParameter("productModel");
    String number=request.getParameter("productNumber");
    String price=request.getParameter("productPrice");
    Product product=new Product();
    product.setProductName(name);
    product.setProductModel(model);
    product.setProductNumber(number);
    product.setProductPrice(price);
    int n=new ProductImp().Update(product);
    if(n>0){
        out.print("修改成功!");
    }else {
        out.print("修改失败!");
    }
%>
</body>
</html>
