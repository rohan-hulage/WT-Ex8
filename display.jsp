<%@page import="java.sql.*" %>
<%
    String selectQuery = "SELECT * FROM `student1`";
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaishnavi","vaishnavi","vaishnavi@123");
    Statement stmt = con.createStatement();
    
    ResultSet rs =stmt.executeQuery(selectQuery);
    
    out.println("<html>");
    out.println("<head><style>table,td,tr {border:1px solid black;}</style></head");
    out.println("<body>");
    out.println("<table>");
    out.println("<tr>");
    out.println("<th>ID</th>");
    out.println("<th>Name</th>");
    out.println("<th>City</th>");
    out.println("<th>Department</th>");
    out.println("<th>Mobile</th>");
    out.println("<th>Mail</th>");
    out.println("</tr>");
    
    while(rs.next())
    {
      out.println("<tr>"); 
      out.println("<td> "+rs.getString("id") +" </td>");
      out.println("<td> "+rs.getString("name") +" </td>");
      out.println("<td> "+rs.getString("city") +" </td>");
      out.println("<td> "+rs.getString("dept") +" </td>");
      out.println("<td> "+rs.getString("mob") +" </td>");
      out.println("<td> "+rs.getString("mail") +" </td>");
      out.println("</tr>");
    }
    out.println("</table>");
    out.println("</body>");
    out.println("</html>");
    }
    catch (Exception e)
    {
    out.print(e);
   
    }
%>
