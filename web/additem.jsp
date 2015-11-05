<%-- 
    Document   : additem
    Created on : Oct 29, 2015, 2:48:28 PM
    Author     : Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connect.jsp" %>

<%
String name=request.getParameter("name");
String company=request.getParameter("company");
int price=Integer.parseInt(request.getParameter("price"));
String description=request.getParameter("description");
int quantity=Integer.parseInt(request.getParameter("quantity"));
int discount=Integer.parseInt(request.getParameter("discount"));


Statement st=con.createStatement();
st.executeUpdate("insert into item values(NULL,'"+name +"','"+company+"','"+price+"','"+description+"','"+quantity+"','"+discount+"')");

%>