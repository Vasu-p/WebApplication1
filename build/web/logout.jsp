<%-- 
    Document   : additem
    Created on : Oct 29, 2015, 2:48:28 PM
    Author     : Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connect.jsp" %>

<%
session.removeAttribute("user_id");
session.removeAttribute("email");

%>