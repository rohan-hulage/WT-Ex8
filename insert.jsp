<%@page import="java.sql.*" %>
<%
    String eid = request.getParameter("eid");
    String ename = request.getParameter("ename");
    String ecity = request.getParameter("ecity");
    String edept = request.getParameter("edept");
    String emob = request.getParameter("emob");
    String emailid = request.getParameter("emailid");
    
    String insertQuery = "INSERT INTO `student1` (`id`, `name`, `city`, `dept`, `mob`, `mail`) VALUES " + "('"+ eid +"', '"+ ename +"', '"+ ecity +"', '"+ edept +"', '"+ emob +"', '"+ emailid +"')";
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaishnavi","vaishnavi","vaishnavi@123");
    Statement stmt = con.createStatement();
    stmt.executeUpdate(insertQuery);
    out.println("Data Inserted Successfully");
    }
    catch (Exception e)
    {
    out.print(e);
   
    }


%>