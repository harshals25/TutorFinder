
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
            session.setAttribute("jobid2",jobid);
            response.sendRedirect("AdminJobs.jsp");
           
%>