<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>empty
  </title>
  <!-- CSS files -->
  <link href="${cpath}/css/tabler.css" rel="stylesheet" />
  <link href="${cpath}/css/tabler-vendors.css" rel="stylesheet" />

  <!-- Libs JS -->

  <!-- Tabler Core -->
  <script src="${cpath}/js/tabler.min.js" defer></script>

  

  <!-- my -->
  <link rel="stylesheet" href="${cpath}/css/my/sub.css">
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" viewport-fit=cover">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function(){
	var val= '${val}';
	$("#select-tags").val(val).prop("selected",true);
})


	
	function goWrite(){
		if(${mvo.login_id==null}){
			alert("로그인후 이용하세요");
		}else{
			location.href='${cpath}/imgBoardWriteForm.do';
		}
	}
	
	
	
	function checksearch(){
		
		var text = $("#search").val();
		if (text==""){
			alert("검색어를 입력하세요");
			return false
		}
		console.log("1");
		return true
	}
	
	
</script>
</head>
<body>

	
<body>
  <div class="page">
    <div class="page-main">
      <jsp:include page="../../header/header.jsp" />
      <!----------------------header end--------------------->
      <div class="cover-wrap">
        <div class="container">
          <div class="cover">
            이미지게시판
          </div>
        </div>
      </div>
      
      <!------------여기부터 입력----------->
      <div class="container">
        <br>
        
        <h2>목록(List)</h2>
        <hr>

        <div class="row g-2">
        

          
       	<c:forEach var ="vo" items="${imglist2 }">
           <div class="col-4 col-sm-4">
            <div class="card">
            <c:choose>
            <c:when test="${vo.img_file1 ne ' ' }">
              <div class="card-img-top img-responsive img-responsive-21x9" style="background-image: url(${cpath }/upload/${vo.img_file1}?type=w1200)"></div>
            </c:when>
            <c:when test="${vo.img_file2 ne ' ' }">
              <div class="card-img-top img-responsive img-responsive-21x9" style="background-image: url(${cpath }/upload/${vo.img_file2}?type=w1200)"></div>
            </c:when>
            <c:when test="${vo.img_file3 ne ' ' }">
              <div class="card-img-top img-responsive img-responsive-21x9" style="background-image: url(${cpath }/upload/${vo.img_file3}?type=w1200)"></div>
            </c:when>
            <c:when test="${vo.img_file4 ne ' ' }">
              <div class="card-img-top img-responsive img-responsive-21x9" style="background-image: url(${cpath }/upload/${vo.img_file4}?type=w1200)"></div>
            </c:when>
            <c:when test="${vo.img_file5 ne ' ' }">
              <div class="card-img-top img-responsive img-responsive-21x9" style="background-image: url(${cpath }/upload/${vo.img_file5}?type=w1200)"></div>
            </c:when>
            </c:choose>
              
              <div class="card-body">
                <p class="text-green">[${vo.img_headline }]<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M5 21c.5 -4.5 2.5 -8 7 -10"></path><path d="M9 18c6.218 0 10.5 -3.288 11 -12v-2h-4.014c-9 0 -11.986 4 -12 9c0 1 0 3 2 5h3z"></path></svg>
              
                <a href="${cpath }/imgBoardView.do?num=${vo.img_seq}&p=${board2.currentPage}" class="text-reset"><h3 class="card-title">${vo.img_title }<span class="text-orange">&nbsp;[${vo.img_cmtcnt }]</span></h3></a>
                <p class="text-muted">${vo.img_content }</p>
                <hr class="mb-3 mt-2">
                <div class="d-flex align-items-center">
    
                        <div>
                          <div class="fs10">${vo.login_id }</div>
                          <div class="text-muted fs10">${vo.img_regdate }</div>
                        </div>
                        <div class="ms-auto">
                          <a href="#" class="text-muted">
                            <!-- Download SVG icon from http://tabler-icons.io/i/eye -->
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="2"></circle><path d="M22 12c-2.667 4.667 -6 7 -10 7s-7.333 -2.333 -10 -7c2.667 -4.667 6 -7 10 -7s7.333 2.333 10 7"></path></svg>
                            ${vo.img_cnt }
                          </a>
                          <a href="#" class="ms-3 text-muted">
                            <!-- Download SVG icon from http://tabler-icons.io/i/heart -->
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M19.5 12.572l-7.5 7.428l-7.5 -7.428m0 0a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572"></path></svg>
                            ${vo.img_likes }
                          </a>
                        </div>
                      </div>
              </div>
            </div>
          </div>
          
         </c:forEach>
        </div>
              <div class="card-footer d-flex align-items-center py-2">
                <ul class="pagination m-0 m-auto">
                <c:if test="${board2.pagingPerCount<board2.start_page}">
                  <li class="page-item abled">
                    <a class="page-link" href="${cpath }/imgSearch.do?p=${board2.start_page-1}&val=${val}&text=${text}" tabindex="-1" aria-abled="true">
                      <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
                        stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
                        stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        page += <polyline points="15 6 9 12 15 18" /></svg>prev</a></li>
				</c:if>
				    <c:forEach var="i" begin="${board2.start_page}" end="${board2.end_page}">
				    	<c:choose>
				    	<c:when test="${board2.currentPage eq i}">
				    	<li class="page-item active"><a class="page-link" href="${cpath }/imgList.do?p=${i}">${i}</a></li>
				    	</c:when>
				    	<c:otherwise>
					    <li class="page-item"><a class="page-link" href="${cpath }/imgSearch.do?p=${i}&val=${val}&text=${text}">${i}</a></li>
					    </c:otherwise>
					    </c:choose>
				    </c:forEach>
				     
				   
                      <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
                      
				<c:if test="${board2.numPageCount>board2.end_page}">
					<li class="page-item abled"><a class="page-link" href="${cpath }/imgSearch.do?p=${board2.end_page+1}&val=${val}&text=${text}" tabindex="1" aria-abled="true">next
					<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" 
                      stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" 
                      stroke-linejoin="round">
                      <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                      page += <polyline points="9 6 15 12 9 18" /></svg></a></li>
                 </c:if> 
                      
                   
                      
                      </ul>
                <a href="#" onclick="goWrite()" class="btn btn-blue me-3">
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-pencil-plus" width="16"
                    height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                    stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <path d="M8 20l10.5 -10.5a2.828 2.828 0 1 0 -4 -4l-10.5 10.5v4h4z"></path>
                    <path d="M13.5 6.5l4 4"></path>
                    <path d="M16 18h4m-2 -2v4"></path>
                  </svg>
                  글쓰기</a>
              </div>
              <form action="${cpath }/imgSearch.do" method="get" id="searchForm" onsubmit="return checksearch()">
                <div class="card-footer">
                  <div class="row m-auto mb-3">

                    <div class="col-3"></div>
                    <div class="col-auto">
                      <select type="text" class="form-select" name ="val" placeholder="Select a date" id="select-tags" >
                        <option value="img_title">제목</option>
                        <option value="login_id">작성자</option>
                        <option value="img_content">내용</option>
                      </select>
                    </div>
                    <div class="col-4">
                      <div class="input-group">
                        <input type="text" class="form-control" name="text" aria-label="Text input with dropdown button" id="search" value="${text }">
                      </div>
                    </div>
                    <div class="col-1">
                      <button type="submit" class="btn btn-icon" value="Submit" ><svg xmlns="http://www.w3.org/2000/svg"
                          class="icon icon-tabler icon-tabler-search" width="24" height="24" viewBox="0 0 24 24"
                          stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
                          stroke-linejoin="round">
                          <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                          <circle cx="10" cy="10" r="7"></circle>
                          <line x1="21" y1="21" x2="15" y2="15"></line>
                        </svg></button>

                      </a>
                    </div>
                  </div>
                </div>
              </form>
            </div>
              <div id="list"></div>
            </div>
          </div>
        </div>
        <footer class="footer footer-transparent d-print-none">
          <div class="container-xl">
            <div class="row text-center align-items-center flex-row-reverse">
              <div class="col-lg-auto ms-lg-auto">
                <ul class="list-inline list-inline-dots mb-0">
                  <li class="list-inline-item"><a href="./docs/index.html" class="link-secondary">Documentation</a></li>
                  <li class="list-inline-item"><a href="./license.html" class="link-secondary">License</a></li>
                  <li class="list-inline-item"><a href="https://github.com/tabler/tabler" target="_blank" class="link-secondary" rel="noopener">Source code</a></li>
                  <li class="list-inline-item">
                    <a href="https://github.com/sponsors/codecalm" target="_blank" class="link-secondary" rel="noopener">
                      <!-- Download SVG icon from http://tabler-icons.io/i/heart -->
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon text-pink icon-filled icon-inline" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M19.5 12.572l-7.5 7.428l-7.5 -7.428m0 0a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572" /></svg>
                      Sponsor
                    </a>
                  </li>
                </ul>
              </div>
              <div class="col-12 col-lg-auto mt-3 mt-lg-0">
                <ul class="list-inline list-inline-dots mb-0">
                  <li class="list-inline-item">
                    Copyright &copy; 2022
                    <a href="." class="link-secondary">Tabler</a>.
                    All rights reserved.
                  </li>
                  <li class="list-inline-item">
                    Generated 2022-08-10 11:58 UTC
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </footer>
      </div>


  <footer class="my-footer">

    <div>
      Copyright© 2022 코D카인. All Right Reserved.
    </div>
  </footer>
  </div>
  </div>

</body>
</html>