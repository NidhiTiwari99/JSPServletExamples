 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 
        <%
            session.setAttribute("user_name", "Nidhi");
            out.println("Session Stored");
            %>
            
            <br/>            <br/>

            <a href="Dashboard.jsp">Go To Dashboard</a>
    </body>
</html>
