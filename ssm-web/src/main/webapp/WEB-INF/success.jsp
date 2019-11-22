<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/20
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.js"></script>


        <script type="text/javascript">
            $(function() {
                $(".delete").click(function(){
                    var href=$(this).attr("href");
                    if(confirm("确定删除吗？")) {
                        $("#form1").attr("action", href).submit();
                    }
                return false;
                });
            });
    </script>


</head>
<body>
<form id="form1" action="" method="post">
    <input type="hidden" name="_method" value="delete"/>
</form>

<table border="1px" align="center">
    <caption><h1>员工表</h1></caption>
    <tr>
        <th>员工序号</th>
        <th>员工名称</th>
        <th>工作</th>
        <th>入职日期</th>
        <th>薪资</th>
        <th>奖金</th>
        <th>部门编号</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${employee}" var="emp">
        <tr>
            <td>${emp.eid}</td>
            <td>${emp.ename}</td>
            <td>${emp.job}</td>
            <td>${emp.hiredate}</td>
            <td>${emp.salary}</td>
            <td>${emp.comm}</td>
            <td>${emp.did}</td>
            <td><a href="${pageContext.request.contextPath}/update/${emp.eid}">修改</a>|
                <a class="delete" href="${pageContext.request.contextPath}/del/${emp.eid}">删除</a></td>
        </tr>
    </c:forEach>
    <tr><td colspan="8" align="center"><a href="${pageContext.request.contextPath}/add">添加</a></td></tr>


</table>
</body>
</html>
