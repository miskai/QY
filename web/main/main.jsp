<%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/20
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>企业信息管理系统-----主页面</title>
	<style>
	</style>
</head>
<%--frameset不能使用body包裹 否则没有效果--%>
<frameset cols="120, *">
	<frame src="left.jsp" name="left" scrolling="no">
		<frameset rows="120, *" >
			<frame src="top.jsp" name="top" scrolling="no">
				<frame src="bottom.jsp" name="main">
		</frameset>
</frameset>
</html>
