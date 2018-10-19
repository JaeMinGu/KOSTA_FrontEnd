<%@page import="kr.or.kosta.blog.User.User"%>
<%@page import="kr.or.kosta.blog.User.UserDao"%>
<%@page import="kr.or.kosta.jsp.blog.Common.JdbcDaoFactory"%>
<%@page import="kr.or.kosta.jsp.blog.Common.DaoFactory"%>
<%@ page contentType="text/html; charset=utf-8"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if (id != null) {//로그인 시도 
		// UserDao를 이용한 회원가입 여부 체크 
        DaoFactory factory = (DaoFactory)application.getAttribute("factory");
		UserDao dao = factory.getUserDao();
		User user = dao.certify(id, pw);

		if (user != null) {
			//회원인 경우 
			Cookie cookie = new Cookie("loginId", id);
			cookie.setMaxAge(60 * 60 * 24 * 30);
			cookie.setPath("/");
			response.addCookie(cookie);
            System.out.println(request.getRequestURI());
             
    		response.sendRedirect(request.getHeader("referer"));
              
		} else {
			// 회원이 아닌 경우 
			response.sendRedirect(request.getHeader("referer")+"?isLogin=false");
		}
	} else { //로그아웃 
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("loginId")) {
				cookies[i].setPath("/");
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
	   response.sendRedirect(request.getHeader("referer"));
	}
  
%>


