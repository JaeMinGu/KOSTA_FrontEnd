<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>★ JaeMin's Blog ★</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../css/basic.css">
<body class="w3-light-grey w3-content" style="max-width:1600px">

<%-- 사이드 바 메뉴 시작 --%>
<jsp:include page="/include/sideBar.jsp" />
<%-- 사이드 바 메뉴 종료 --%>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
  <header id="portfolio">
    <div class="w3-container" >
    <%-- 탑 헤드 시작 --%>
  <jsp:include page="/include/top.jsp"></jsp:include>
    <%-- 탑 헤드 종료 --%>
        
    <div class="w3-section w3-bottombar w3-padding-16">
    </div>
    </div>
  </header>
  
      <h1 class="headline" ><b>회원가입</b></h1>
      <div class="registOutline">

<form action="../user/regist_action.jsp"  method="post">
<div>
      <div>
        <label class="registL" >아이디</label>
        <input class="registText w3-border " type="text" id="id" name="id" required placeholder="10자 이내로 입력하세요" maxLength="10" >
        <button class="newButton green">중복확인</button>
      </div>
      
      <div>
        <label class="registL" >비밀번호</label>
        <input class="registText w3-border " type="password" id="passwd" name="passwd" required placeholder="비밀번호를 입력하세요">
      </div>
      
      <div>
        <label class="registL" >비밀번호 확인</label>
        <input class="registText w3-border " type="password" name="passwd2" required placeholder="다시 한 번 비밀번호를 입력하세요">
      </div>
      
      <div>
        <label class="registL" >이름</label>
        <input class="registText w3-border " type="text" id="name" name="name" required placeholder="이름을 입력하세요">
      </div>
      
       <div>
        <label class="registL" >이메일</label>
        <input class="registText w3-border " type="email" id="email" name="email" required placeholder="Xxx@xxx.xxx의 형태로 입력하세요">
      </div>
</div>      

      <div class="regist">
      <input type="submit" class="newButton" value = "가입하기">
      <input type="button" class="newButton" onclick="location.href='../user/regist_form.jsp'" value = "다시입력">
      </div>

    </form>
</div>
  

  

<!-- End page content -->
</div>



</body>
</html>
