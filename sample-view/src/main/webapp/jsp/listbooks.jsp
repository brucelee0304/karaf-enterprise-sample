<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*,java.text.*,de.nierbeck.apachecon.view.ViewModel,de.nierbeck.apachecon.persistence.entity.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f" %>
<TITLE>Book List</TITLE>
<BODY BGCOLOR="#f0f0f0">
<%	
	ViewModel viewModel = (ViewModel) request.getAttribute("app.viewModel");
 %>
 <form method=POST action="<%=request.getContextPath() %>/recipes">
<TABLE>
<tr>
<TD WIDTH=75% ALIGN="TOP">
	<!-- Most of page, at left -->
	<IMG SRC="logo/pb-karaf.jpg" ALIGN="LEFT" height="150px" width="150px"></IMG>
</TD>
</tr>
<tr>
<TD WIDTH=25% BGCOLOR="#00cc00" ALIGN="TOP">
	<!-- Rest of page, at right -->
	<FONT COLOR=WHITE NAME="Helvetica,Arial">
	<table>
		<thead>
			<tr>
				<th>Select</th>
				<th>ID</th>
				<th>Name</th>
				<th>ISBN</th>
			</tr>
		</thead>
		<tbody>
		<% if (viewModel != null && viewModel.getBooks() != null && !viewModel.getBooks().isEmpty()) { %>
			<% for(Book book: viewModel.getBooks()) { %>
		<tr>
		<td><input type="checkbox" name="id" value="<%=book.getId()%>"></td>
		<td><%=book.getId()%></td>
		<td><%=book.getName()%></td>
		<td><%=book.getIsbn()%></td>
		</tr>			
			<% } %>
		<% } else { %>
		<tr>
		<td colspan="3">No Data found</td>
		</tr>
		<!-- viewModel: <%=viewModel %> -->
		<% } %>
		<tr>
			<td colspan="4">
				<input type="submit">
			</td>
		</tr>
		</tbody>
	</table>
	</FONT>
</TD>
</tr>
</TABLE>
</form>
</BODY>
</HTML>
