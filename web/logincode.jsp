<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.Connect" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<html> <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>login</title>
    </head> 
    <body> 
        
        <% 
        String id=request.getParameter("id");
        String password=request.getParameter("password");
        if(id.equals("") || password.equals(""))
        {
            response.sendRedirect("loginpage.jsp");
        }
        else
        {       
        response.setHeader("Pragma","no-cache");
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Expires","0");
        response.setDateHeader("Expires",-1);
        
        Connect obj = new Connect(); 
        PreparedStatement st=obj.con.prepareStatement("select * from registrationtutor where htid=? and password=?");
        st.setString(1,id);
        st.setString(2,password);
        ResultSet rs=st.executeQuery();
        if(rs.next())
        {
            //String username=rs.getString("name");
         if(session.getAttribute("id")== null)
            {
               session.setAttribute("id",id);
               response.sendRedirect("JobsInfo.jsp");
               //out.println(session.getAttribute("id"));
            } 
            else
            {                
                out.println("Session not terminated");
                response.sendRedirect("Error.jsp");
            }
         
        }
        else
        {
            response.sendRedirect("TutorLogin.jsp");
            String name="check";
            session.setAttribute("check",name);
        }
        obj.con.close();
     }       
        %> </body> 
</html>
