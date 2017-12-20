<%@ page import="java.sql.Connection" %>
<%@ page import="Utils.JdbcUtils" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/27
  Time: 8:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>售后查询</title>
    <style>
        #td-one{
            padding-top: 20px;
            padding-bottom: 20px;
        }
        #td-one  td{
            font-size: 20px;
            width: 180px;
        }
        #td-two{
            text-align: center;
            margin-top: 50px;
        }
        #td-two td{
            width: 150px;
        }
    </style>
</head>
<body>
<center>
    <%
        String type= (String) session.getAttribute("type");
        if(type.equals("0")){
    %>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a>售后信息</a></td><td><a href="add.jsp">售后增加</a></td><td><a href="update.jsp">售后修改</a></td><td><a href="delete.jsp">售后删除</a></td></th>
    </table>
    <%
        }else {
            %>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a>售后信息</a></td><td><a>售后增加</a></td><td><a>售后修改</a></td><td><a>售后删除</a></td></th>
    </table>
    <%
        }
    %>
    <hr>
    <%
        int pagesize = 5;
        int intpage;
        int pagecount = 0;
        int rowcount;
        int i = 0;
        String strpage;
        Connection con = JdbcUtils.getConnection();
        strpage = request.getParameter("page");
        if (strpage == null) {
            intpage = 1;
        } else {
            intpage = Integer.parseInt(strpage);
            if (intpage < 0) {
                intpage = 1;
            }
        }
        Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        String sql = "select * from cs";
        ResultSet rs = st.executeQuery(sql);
        rs.last();
        rowcount = rs.getRow();
        pagecount=(rowcount+pagesize-1)/pagesize;
        //判断现在的页码
        if (intpage > pagecount)
            intpage = pagecount;
        if (intpage > 0) {
            rs.absolute((intpage - 1) * pagesize + 1);
    %>
    <table id="td-two" border="1">
        <tr><th colspan="3"  style="font-size: 25px;letter-spacing: 5px">售后信息</th></tr>
        <tr>
            <td>客户姓名</td>
            <td>客户反馈建议</td>
            <td>业务员</td>
        </tr>
        <%
            i = 0;
            while (i < pagesize && !rs.isAfterLast()) {
        %>
        <tr>
            <td><%=rs.getString("clientName")%>
            </td>
            <td><%=rs.getString("clientOpinion")%>
            </td>
            <td><%=rs.getString("StaffName")%>
            </td>
        </tr>

        <%
                    rs.next();
                    i++;
                }
            }
        %>
    </table>
    <hr>
    第<%=intpage%>页,共<%=pagecount%>页
    <%
        if(intpage<pagecount){
    %>
    <a href="lookcs.jsp?page=<%=intpage+1%>">下一页</a>
    <%
        }
        if(intpage>1){
    %>
    <a href="lookcs.jsp?page=<%=intpage-1%>">上一页</a>
    <%
        }
        JdbcUtils.release(rs,st,con);
    %>
</center>
</table>
</body>
</html>