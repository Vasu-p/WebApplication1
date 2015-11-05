<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>


<%
    Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/shopping","root","");

%>
