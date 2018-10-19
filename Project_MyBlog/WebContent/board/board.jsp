<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>★ JaeMin's Blog ★</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/css/basic.css">
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
  
<div style="margin:10px 100px; ">

<h1 class="headline"><b>자유게시판</b></h1>
<div class="outline">
<div class="w3-responsive w3-card-4">
        <table class="w3-table w3-striped w3-bordered">
          <thead>
            <tr class="w3-theme">
              <th>번호</th>
              <th>제목</th>
              <th>작성자</th>
              <th>작성일</th>
              <th>아이피</th>
              <th>조회</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
            </tr>
            <tr class="w3-white">
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
            </tr>
            <tr>
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
            </tr>
            <tr class="w3-white">
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
              <td>???</td>
            </tr>
          </tbody>
        </table>
        
          <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-green ">««</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-green">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">5</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-green">»</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-green">»»</a>
      </div>
      <div style="text-align:right;margin-right:50px" >
      <button  class="newButton" onclick="location.href='<%=application.getContextPath()%>/index.jsp'">홈으로</button>
      <button class="newButton" onclick="location.href='<%=application.getContextPath()%>/board/create_post.jsp'">글쓰기</button>
    </div>
  
  </div>
      </div>    
      
  
  <div style="text-align:center; margin-top: 30px">
  <div style="vertical-align:middle; display:inline-block; ">
  <select class="brownBox"><option >글제목<option>글내용<option>작성자</select></div> 
 <input type="text" class=" grayBox">
  <button class="newButton w3-bar-item ">검색</button></div>
  </div>
  
  
</div>      


    
    

</div>

  

  

<!-- End page content -->
</div>



</body>
</html>
