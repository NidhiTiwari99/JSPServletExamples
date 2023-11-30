
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
              
            if(session.getAttribute("user")!=null)
            {
                response.sendRedirect("Dashboard.jsp");
            }
            %>
        <h1>Login Here!</h1>
        <form method="post">
            <table>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="txtuser"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="txtpass"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>

            </table>
                
        </form>
        
        <%
          
            if(request.getMethod().equals("POST"))
            {
                String u=request.getParameter("txtuser");
                String p=request.getParameter("txtpass");
                if(u.equals("nidhi") && p.equals("1234"))
                {
                    session.setAttribute("user", u);
                    response.sendRedirect("Dashboard.jsp");
                }
                else
                {
                    out.println("<h4 style='color:red'>Invalid User Name or Password</h4>");
                }
            }
            %>
    </body>
</html>
