<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>JSP Page</title> 
    </head> 
    <body> 
        <%
        session.removeAttribute("id");
        session.invalidate();
                response.setHeader("Pragma","no-cache"); 
                response.setHeader("Cache-Control","no-store"); 
                response.setHeader("Expires","0"); 
                response.setDateHeader("Expires",-1); 
                response.sendRedirect("index.html"); 
				
        
        %>
<h1>Logout was done successfully.</h1>
    </body> 
</html>

