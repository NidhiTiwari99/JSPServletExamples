

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
                <%
        String uname="";      
            if(session.getAttribute("user")==null)
            {
                response.sendRedirect("Login.jsp");
            }
        else
            {
              uname=(String)session.getAttribute("user");
            } 
        %>
        <h2>Welcome <%=uname %>  </h2>
        
        <a href="Logout.jsp">Log Out</a>
    </body>
</html>
