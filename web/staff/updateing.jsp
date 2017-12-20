<%@ page import="staff.Staff" %>
<%@ page import="staff.StaffImp" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/28
  Time: 21:32
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
String name=request.getParameter("Name");
String sex=request.getParameter("sex");
String age=request.getParameter("age");
String education=request.getParameter("education");
String departMent=request.getParameter("departMent");
String date=request.getParameter("date");
String duty=request.getParameter("duty");
String wage=request.getParameter("wage");
System.out.println(name+""+sex+""+age+""+education+""+departMent+""+date+""+duty+""+wage);
Staff staff=new Staff();
staff.setStaffName(name);
staff.setStaffSex(sex);
staff.setStaffAge(age);
staff.setStaffEducation(education);
staff.setStaffDepartment(departMent);
staff.setStaffDate(date);
staff.setStaffDuty(duty);
staff.setStaffWage(wage);
int n=new StaffImp().Update(staff);
if(n>0){
out.print("修改成功!");
}else {
out.print("修改失败!");
}
%>
</body>
</html>
