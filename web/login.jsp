
<%@ include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    


    //out.print(request.getParameter("email"));
    String email=request.getParameter("email");
    String password=request.getParameter("password");
  
    
    Statement st=con.createStatement();
    
    //int i=st.executeUpdate("insert into users values(NULL,'"+email +"','"+password+"','"+phone+"','"+add+"')");
    ResultSet rs=st.executeQuery("select * from users where email='"+email+"'"); 
    
    
    if(rs.next()&&rs.getString("password").equals(password))
    {
        
        session.setAttribute("user_id", rs.getString("user_id"));
        session.setAttribute("email", rs.getString("email"));
        
        response.sendRedirect("index.jsp"); 
    }
    else
    {  
      response.sendRedirect("loginpage.jsp");  
    }

    
   
   


%>
 
