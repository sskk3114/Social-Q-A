<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.Base64" %>
<%@ include file="uheader.jsp"%>
<%String email=(String)session.getAttribute("email");%>

<%
try{

		Connection con = databasecon.getconnection();
		Statement st=con.createStatement();
		String s="update interaction set ans='"+request.getParameter("ans")+"' where qid='"+request.getParameter("qid")+"' && user='"+Base64.encode(email)+"' ";
		System.out.println(s);
		st.executeUpdate(s);
		response.sendRedirect("uqueries.jsp?id=succ");

}
catch(Exception e)
{
	System.out.println("ss"+e);
}
%>
