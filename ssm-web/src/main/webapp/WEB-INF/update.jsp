<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/20
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>update</h4>
<form action="${pageContext.request.contextPath}/updateBack" method="post">
    <input type="hidden" name="_method" value="put"/>
    <input type="hidden" name="eid" value="${employee.eid}"/>
    员工名称：<input type="text" name="ename" value="${employee.ename}"/><br/>
    工作：<input type="text" name="job" value="${employee.job}"/><br/>
    入职日期：<input type="date" name="hiredate" value="${employee.hiredate}"><br/>
    薪资：<input type="text" name="salary" value="${employee.salary}"/><br/>
    奖金:<input type="text" name="comm" value="${employee.comm}"/><br/>
    部门编号：<input type="text" name="did" value="${employee.did}"/><br/>
    <input type="submit" value="修改"/>

</form>
</body>
</html>
