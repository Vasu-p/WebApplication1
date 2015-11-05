
<%@ include file="connect.jsp" %>



<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form name="form" >
            
            <input type="text" name="email" />
            <input type="password" name="password" />
            <input type="password" name="conform" />
            <input type="text" name="phone" />
            <input type="text" name="add" />
            <input type="submit" name="submit" />
        </form>
    </body>
</html>
<%
if(request.getParameter("submit")!=null)
{
    //out.print(request.getParameter("email"));
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String phone=request.getParameter("phone");
    String add=request.getParameter("add");
   
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into users values(NULL,'"+email +"','"+password+"','"+phone+"','"+add+"')");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location","loginpage.jsp");
   
}

%>
