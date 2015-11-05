<%-- 
    Document   : temp
    Created on : Oct 24, 2015, 11:02:05 PM
    Author     : Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<body>
   
        <h1>Hello World!</h1>
        <c:out value="vasudev"/>
        <c:forEach begin="1" end="10" var="item">
            <c:out value="${item}" />
                
           
        </c:forEach>

<sql:setDataSource
      driver="com.mysql.jdbc.Driver"
      url="jdbc:mysql://localhost:3306/shopping"
      user="root"
      password=""
      var="dataSource" />
    
<sql:query var="user" dataSource="${dataSource}">
select * from users
</sql:query>
<table>
<c:forEach var="row" items="${user.rows}">
<tr>
<td><c:out value="${row.user_id}"/></td>
<td><c:out value="${row.password}"/></td>
<td><c:out value="${row.email}"/></td>
</tr>
</c:forEach>
</table>

        </body>
        </html>