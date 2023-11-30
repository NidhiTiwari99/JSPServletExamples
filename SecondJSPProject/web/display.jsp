
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int rno=Integer.parseInt(request.getParameter("txtrno"));
            String n=request.getParameter("txtname");
            
            %>
            <h2>Roll Number=<%=rno%></h2>
            <h2>Student Name=<%=n%></h2>
    </body>
</html>
