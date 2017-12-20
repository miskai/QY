<%@ page import="product.Product" %>
<%@ page import="product.ProductImp" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/28
  Time: 19:35
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
    int n=new ProductImp().add(product);
    if(n>0){
        out.print("添加成功!");
    }else {
        out.print("添加失败!");
    }
%>
</body>
</html>
