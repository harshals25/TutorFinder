<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="db.Connect" %>

<html>
    <head></head>
    <body>
<%
            String jobid="";
            String jobid2 = request.getRequestURL().append("?").append(request.getQueryString()).toString();
            char[] ch=new char[10];
            int j=0;
            int a=jobid2.length();
            for(int i=a-3;i<a;i++,j++)
            {
               ch[j]=jobid2.charAt(i);
            }
            jobid=new String(ch);
            session.setAttribute("jobid",jobid);

            String av = "available";
            Connect obj = new Connect();
            PreparedStatement st2=obj.con.prepareStatement("select * from registrationstudent where jobid in(select jobid from jobinfo where jobid=? and status=?)");
            st2.setString(1,jobid);
            st2.setString(2,"available");
            ResultSet rs2=st2.executeQuery();
            while(rs2.next()){
 %>
<table border="1">
            <tr>
                <th>jobid</th>
                <th>area</th>
                <th>class</th>
                <th>subjects</th>
            </tr>
            <tr>
                <td> <%=jobid %> </td>
                <td> <%= rs2.getString(2)%> </td>
                <td> <%= rs2.getInt(5)%> </td>
                <td> <%= rs2.getString(6)%> </td>
            </tr>
            <tr>
                       
          <% 
           }     
            PreparedStatement st=obj.con.prepareStatement("select * from applied where jobid=?");
            st.setString(1,jobid);
            ResultSet rs=st.executeQuery();
            while(rs.next()){ %>
            <td> 
           <a href=<%= "\"approve.jsp?Id=" + rs.getString("htid") + "\"" %> ><%= rs.getString("htid") %></a>
            </td>
            </tr> 
     <%}      
          obj.con.close();
        
          %>

        </table>
     </body>
</html>










<%    
    String htid="";
    Connect obj = new Connect();       
    PreparedStatement st=obj.con.prepareStatement("select * from allotted where jobId=?");
    st.setString(1,id);
    ResultSet rs=st.executeQuery();
    rs.next();%>
    <%=rs.getString("htid")%>
    
<%    if(rs.next())
    {   htid=rs.getString("htid");
        %>
        Details of the tutor
        <%
        PreparedStatement st2=obj.con.prepareStatement("select * from registrationtutor where htid=?");
        st2.setString(1,htid);
        ResultSet rs2=st2.executeQuery();
        while(rs2.next())
        {
%>
<%= rs2.getString(2)%>
                
        <%}
    }
    else
    {%>
    no tutor has been allotted yet
    <%    
    }%>
    
    
    <!--Available Jobs
<table border="1">
            <tr>
                <th>jobid</th>
                <th>status</th>
                <th>hours for job</th>
            </tr>
            <% while(rs2.next()){ %>
            
            <tr>
                <td>  <a href=<%= "\"AvailableJobs.jsp?Id=" + rs2.getString(1) + "\"" %>> <%= rs2.getString(1) %></a> </td>
                <td> <%= rs2.getString(2) %> </td>
                <td> <%= rs2.getString(3) %> </td>
                
            </tr>-->
           <% } 
            obj.con.close();
            
           %>
        <!--</table>-->
   
    
    
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="db.Connect" %>

<html>
    <head></head>
    <body>
<%
            String jobid="";
            String jobid2 = request.getRequestURL().append("?").append(request.getQueryString()).toString();
            char[] ch=new char[10];
            int j=0;
            int a=jobid2.length();
            for(int i=a-3;i<a;i++,j++)
            {
               ch[j]=jobid2.charAt(i);
            }
            jobid=new String(ch);
            session.setAttribute("jobid",jobid);
            
            Connect obj = new Connect();
            PreparedStatement st2=obj.con.prepareStatement("select * from registrationstudent where jobid=?");
            st2.setString(1,jobid);
            ResultSet rs2=st2.executeQuery();
            PreparedStatement st3=obj.con.prepareStatement("select status from jobinfo where jobid=?");
            st3.setString(1,jobid);
            ResultSet rs3=st3.executeQuery();
            while(rs3.next()){
                if(rs3.getInt("status")==0){
                        while(rs2.next()){
 %>
<table border="1">
            <tr>
                <th>jobid</th>
                <th>area</th>
                <th>class</th>
                <th>subjects</th>
            </tr>
            <tr>
                <td> <%=jobid %> </td>
                <td> <%= rs2.getString(2)%> </td>
                <td> <%= rs2.getInt(5)%> </td>
                <td> <%= rs2.getString(6)%> </td>
            </tr>
            <tr>
                       
          <% 
           }     
            PreparedStatement st=obj.con.prepareStatement("select * from applied where jobid=?");
            st.setString(1,jobid);
            ResultSet rs=st.executeQuery();
            while(rs.next()){ %>
            <td> 
           <a href=<%= "\"approve.jsp?Id=" + rs.getString("htid") + "\"" %> ><%= rs.getString("htid") %></a>
            </td>
            </tr> 
     <%} }}     
          obj.con.close();
        
          %>

        </table>
     </body>
</html>    
    
    
    
    
    
    
    
    
    
    
    