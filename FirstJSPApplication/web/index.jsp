
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>First JSP Application</h1>
        
        <%
            int a= 63;
            int b =79;
            int c= (a+b);
            out.println("<h2>Addition="+c+"</h2>");
            %>
            
            <h2>I am Addition</h2>
            
            <%
                int x=75; int y=20;
                int z= x-y;
                
                %>
                <h2>Substraction=<%=z%></h2>
    </body>
</html>
