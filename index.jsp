<%-- 
    Document   : index
    Created on : Mar 27, 2022, 1:05:03 PM
    Author     : ATHARV COM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Program to implement Employee management system</title>
    </head>
    <body>
        <h1>Student Management System</h1>
    </body>
    <form method="post" action="insert.jsp">
        <input type="text" name="eid" placeholder="Student id" /><br/><br/>
        <input type="text" name="ename" placeholder="Student name" /><br/><br/>
        <input type="text" name="ecity" placeholder="Student city" /><br/><br/>
        <input type="text" name="edept" placeholder="Student dept" /><br/><br/>
        <input type="text" name="emob" placeholder="Student mob" /><br/><br/>
        <input type="text" name="emailid" placeholder="Student mailid" /><br/><br/>
        <br/><br/>
        <input type="submit" value="insert" /><br/><br/>
    </form>
    <form method="post" action="display.jsp">
        <input type="submit" value="display"/>
    </form>
</html>
