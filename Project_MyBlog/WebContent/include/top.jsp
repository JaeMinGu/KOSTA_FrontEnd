<%@ page contentType="text/html; charset=utf-8" %>
  <h1 class="inline"><a href="<%=application.getContextPath() %>/index.jsp"><b>JaeMin's Blog</b> <img src="<%=application.getContextPath() %>/image/dogIcon.png " style="width:5%;"></a></h1>
      <div class="idBox">
      <form action="<%=application.getContextPath() %>/user/login_action.jsp">
      <%
      String id = null;
      Cookie[] cookies= request.getCookies();
      if(cookies!=null){  
       for(Cookie cookie:cookies){
    	   if(cookie.getName().equals("loginId")){
            id = cookie.getValue();
            break; 
         }
       }
      }
      %>
      
      <%
      if(id != null){// 로그인 된 경우 
        %>
        <div>
    	   <input type="button" class="brownBox" value="<%=id %>님 환영합니다">
           <input type="submit" value="로그아웃" class="w3-button w3-black" ><br>
         </div>
      </form>
      <%
      }else{
        %>
      <form action="<%=application.getContextPath() %>/user/login_action.jsp" method="post">
      <div>
      <span >ID</span>
      <input type="text" size="10" placeholder="아이디 입력" class="grayBox" id="id" name="id"> 
      <span>PW</span>
      <input type="password" size="11" placeholder="비밀번호 입력" class="grayBox" id="pw" name="pw">　
      
      <input type="submit" value="로그인" class="w3-button w3-black">
      
      <input type="button" value="회원가입" class="w3-button w3-black" onclick="location.href='<%=application.getContextPath()%>/user/regist_form.jsp'">
      <br>
      <input type="checkbox"> 아이디저장<br>
      <%
      if(request.getParameter("isLogin") != null){
        %>
        <label style="color:red; font-size:11pt;">아이디와 비밀번호를 확인해주세요</label>
        <%
      }
      %>
       </div>
       </form>
       <%
      }
      %>
      </div>