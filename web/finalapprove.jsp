<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="db.Connect" %>

<%
            String jobid = (String)session.getAttribute("jobid");
            String htid = (String)session.getAttribute("htid");
%>

<%= jobid %>
   <%                
            Connect obj = new Connect();
            String temp="allotted";
            String query="UPDATE jobinfo SET status=? WHERE jobid=?";
            PreparedStatement st=obj.con.prepareStatement(query);
            st.setString(1,temp);
            st.setString(2,jobid);
            st.executeUpdate(); 
            
            PreparedStatement st2=obj.con.prepareStatement("insert into allotted values(?,?) ");
            st2.setString(1,jobid);
            st2.setString(2,htid);
            st2.executeUpdate();
            
//            PreparedStatement st3=obj.con.prepareStatement("delete from applied where jobid=? ");
//            st3.setString(1, jobid);
//            st3.executeUpdate();
            obj.con.close();
            response.sendRedirect("AdminHome.jsp");
 %>
