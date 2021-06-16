<%-- 
    Document   : feedback
    Created on : May 22, 2019, 9:21:21 AM
    Author     : Prateek Agrahari
--%>

<%@page import="java.sql.ResultSet"%>
<%
    if(session.getAttribute("userid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="userstyle/genstyle.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="outer">
            <%@include file="usermaster/head.jsp" %>
        <div id="content">
            <h1 style="text-align: center;color: darkcyan;">Feedback Form</h1>
            <form action="usercode/feedbackcode.jsp" method="post">
            <div style="height:0px auto;width:50%;margin: 0px auto;">
                <table class="table">
                        <tr>
                            <td>Enter Feedback Text</td>
                            <td><textarea name="feedback" required="" style="width:200px; height:80px; resize:none;"></textarea></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><input type="submit" value="Submit Feedback"/></td>
                        </tr>
                    </table>
        <button style="margin-top: 5px;margin-left: 48%;color: white;background-color: black;" onclick="window.location.href='dashboard.jsp'">Home</button>
        </div>
        </form>
        </div>
        </div>
        <%@include file="usermaster/foot.jsp" %>
    </body>
</html>
<%}%>