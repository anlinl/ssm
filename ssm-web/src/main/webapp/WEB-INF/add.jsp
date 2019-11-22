<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/20
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="queryByAdd" method="post">
    员工姓名：<input type="text" name="ename"/><br/>
    工作:<input type="text" name="job"/><br/>
    入职日期：<input type="date" name="hiredate"/><br/>
    薪资：<input type="text" name="salary"/><br/>
    奖金：<input type="text" name="comm"/><br/>
    部门编号:<input type="text" name="did"/><br/>
    <input type="submit" value="添加"/>
</form>
</body>
</html>
