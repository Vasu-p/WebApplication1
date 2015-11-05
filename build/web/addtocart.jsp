<%-- 
    Document   : additem
    Created on : Oct 29, 2015, 2:48:28 PM
    Author     : Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connect.jsp" %>

<%
int prod_id=Integer.parseInt(request.getParameter("id"));
int user_id=Integer.parseInt(session.getAttribute("user_id").toString());
int quantity=Integer.parseInt(request.getParameter("qnt"));
Statement st=con.createStatement();
st.executeUpdate("insert into cart values("+user_id+","+prod_id+","+quantity+")");

%>