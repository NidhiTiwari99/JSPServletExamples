
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <d:out value="Welcome to JSTL"></d:out>
        <br/>
        <d:set var="a" value="10"></d:set>
        <d:out value="${a}"></d:out>
        <br/>
        
        <d:if test="${a==100}">
            <h4>${a} is equal to 100</h4>
        </d:if>
       <d:if test="${a>100}">
            <h4>${a} is greater than 100</h4>
        </d:if>
            
        <d:if test="${a<100}">
            <h4>${a} is less than 100</h4>
        </d:if>
            <hr/>
            
        <d:choose>
        <d:when test="${a==100}">
            <h4>${a} is equal to 100</h4>
        </d:when>
       <d:when test="${a>100}">
            <h4>${a} is greater than 100</h4>
        </d:when>
            
        <d:when test="${a<100}">
            <h4>${a} is less than 100</h4>
        </d:when>
        <d:otherwise>
            <h4>Not Defined</h4>
        </d:otherwise>
        </d:choose>
        <hr/>
        <d:set var="data" value="10,20,30,40,50"></d:set>
        <ul>
        <d:forEach var="p" items="${data}">
            <li>${p}</li>
        </d:forEach>
        </ul>
    </body>
</html>
