<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="kr.or.kosta.blog.User.UserDao"%>
<%@ page import="kr.or.kosta.jsp.blog.Common.JdbcDaoFactory"%>
<%@ page import="kr.or.kosta.jsp.blog.Common.DaoFactory"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="user" class="kr.or.kosta.blog.User.User" scope="request"/>
<jsp:setProperty property="*" name="user"/>
<%
DaoFactory factory = (DaoFactory)application.getAttribute("factory");
UserDao dao = factory.getUserDao();
dao.create(user);
// 가입결과 jsp로 디스패치 
%>
<jsp:forward page="../user/regist_result.jsp" />
