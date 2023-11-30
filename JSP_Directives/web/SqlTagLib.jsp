
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:catch var="ex">
            
        <sql:setDataSource var="ds" driver="oracle.jdbc.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:xe" user="system" password="tiger" />
        <sql:query var="sql" dataSource="${ds}">select * from hr.employees</sql:query>
        <table border="1">
            <thead>
                <tr>
                    <th>Employee Id</th>
                    <th>First Name</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="e" items="${sql.rows}">
                <tr>
                    <td>${e.employee_id}</td>
                    <td>${e.first_name}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        
                </c:catch>

        <p>${ex}</p>
    </body>
</html>
