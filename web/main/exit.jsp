<%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/28
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script  type="text/javascript">
    </script>
</head>
<body>
<%
    System.out.println(session.getId());
    session.invalidate();
    response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
    String newLocn = "../login.jsp";
    response.setHeader("Location",newLocn);
%>
</body>
</html>
