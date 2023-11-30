
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    Integer cnt=(Integer)application.getAttribute("count_visits");
    if(cnt==null)
    {
        cnt=1;
    }
    else
    {
        cnt++;
    }
    application.setAttribute("count_visits", cnt);
    %>
    <h2>You have Visited This site <%=cnt%> times</h2>
    </body>
</html>
