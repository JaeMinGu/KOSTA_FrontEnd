<%@page import="kr.or.kosta.jsp.blog.Common.JdbcDaoFactory"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%!
public void jspInit(){
    getServletContext().setAttribute("factory", new JdbcDaoFactory()); 
}
%>