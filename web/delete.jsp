<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="db.Connect" %>

<html>
    <head></head>
    <body>
<%
            String jobidtemp="";
            String jobid2 = request.getRequestURL().append("?").append(request.getQueryString()).toString();
            char[] ch=new char[10];
            int j=0;
            int a=jobid2.length();
            for(int i=a-3;i<a;i++,j++)
            {
               ch[j]=jobid2.charAt(i);
            }
            jobidtemp=String.valueOf(ch);
            session.setAttribute("jobid",jobidtemp);
    
            Connect obj = new Connect();
            PreparedStatement st2=obj.con.prepareStatement("select * from jobinfo where jobid=?");
            st2.setString(1,jobidtemp);
            ResultSet rs2=st2.executeQuery();
            while(rs2.next()){
 %>
    
        in while!!
 
 <%= rs2.getString("status")%>
         
     <%}      
          obj.con.close();
        
          %>

        </table>
     </body>
</html>