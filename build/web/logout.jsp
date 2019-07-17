<%-- 
    Document   : logout
    Created on : 9 Mar, 2019, 10:38:43 PM
   
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%     
session.invalidate();
response.sendRedirect("index.html");
%>
