<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, viewport-fit=cover" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>FOR THE URTH</title>
<!-- CSS files -->
<link href="${cpath}/css/tabler.css" rel="stylesheet" />
<link href="${cpath}/css/tabler-vendors.css" rel="stylesheet" />

<!-- Libs JS -->

<!-- Tabler Core -->
<script src="${cpath}/js/tabler.min.js" defer></script>

<!-- my -->
<link rel="stylesheet" href="${cpath}/css/my/sub.css">
<title>FOR THE URTH</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	viewport-fit=cover" >
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>


</head>
<body>
	<div class="page">
		<div class="page-main">
		<!-- WEB-INF폴더에서 사용시 page="../header/header.jsp"로 변경 -->
			<jsp:include page="../../header/header.jsp" />
			<!-- 여기까지 header -->
			 <!------------여기부터 입력----------->
       <div class="container">
        <br>
        
        <h2>칼럼 게시판</h2>
        <hr>
        <c:forEach var="cal_T" items="${list}" >
        <div class="row mt-2">
          <div class="col"></div>
          <div class="col-10">
            <div class="card">
              <div class="row row-0">
                <div class="col-3">
                  <img src="${cal_T.img}" class="w-100 h-100 object-cover" alt="Card side image" " style="max-width:auto; max-height:150px;"/>
                </div>
                <div class="col">
                  <div class="card-body">
                    <h3 class="card-title"><a href="${ cal_T.news_url}">${cal_T.title}</a></h3>
                    <p class="text-muted">${cal_T.article}</p>
                    <p class="text-muted">${cal_T.name}</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col"></div>
        </div>
        </c:forEach>
       
        
	
      <div class="row row-cards mt-3">
      <div class="col-1"></div>
        <div class="col">
          <div class="card">
            <div class="card-footer d-flex align-items-center py-2">
              <ul class="pagination m-0 m-auto">
                <c:if test="${board.pagingPerCount<board.start_page}">
                  <li class="page-item abled">
                    <a class="page-link" href="${cpath }/callist.do?p=${board.start_page-1}" tabindex="-1" aria-abled="true">
                      <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
                        stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
                        stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        page += <polyline points="15 6 9 12 15 18" /></svg>prev</a></li>
				</c:if>
				    <c:forEach var="i" begin="${board.start_page}" end="${board.end_page}">
				    	<c:choose>
				    	<c:when test="${board.currentPage eq i}">
				    	<li class="page-item active"><a class="page-link" href="${cpath }/callist.do?p=${i}">${i}</a></li>
				    	</c:when>
				    	<c:otherwise>
				    	
					    <li class="page-item "><a class="page-link" href="${cpath }/callist.do?p=${i}">${i}</a></li>
					    </c:otherwise>
					    </c:choose>
				    </c:forEach>
				     
				   
                      <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
                      
				<c:if test="${board.numPageCount>board.end_page}">
					<li class="page-item abled"><a class="page-link" href="${cpath }/callist.do?p=${board.end_page+1}" tabindex="1" aria-abled="true">next
					<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" 
                      stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" 
                      stroke-linejoin="round">
                      <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                      page += <polyline points="9 6 15 12 9 18" /></svg></a></li>
                 </c:if> 
                      
                   
                      
                      </ul>
              
            </div>
            <form action="#" method="#">
              <div class="card-footer">
                <div class="row m-auto mb-3">

                  <div class="col-3"></div>
                  <div class="col-auto">
                    <select type="text" class="form-select" placeholder="Select a date" id="select-tags" value="">
                      <option value="title">제목</option>
                      <option value="writer">작성자</option>
                      <option value="content">내용</option>
                    </select>
                  </div>
                  <div class="col-4">
                    <div class="input-group">
                      <input type="text" class="form-control" aria-label="Text input with dropdown button">
                    </div>
                  </div>
                  <div class="col-1">
                    <button type="submit" class="btn btn-icon" value="Submit"><svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-search" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                        <circle cx="10" cy="10" r="7"></circle>
                        <line x1="21" y1="21" x2="15" y2="15"></line>
                      </svg></button>

                    
                  </div>
                </div>
              </div>
            </form>
      </div>
      
      </div>
      <div class="col-1"></div>
      </div>
      </div>
      <!------------ㄲㅡㅌ----------->

				</div>
			</div>
			<!-- footer -->
			<!-- WEB-INF폴더에서 사용시 page="../footer/footer.jsp"로 변경 -->
			<jsp:include page="../../footer/footer.jsp" />
		</div>
	</div>
</body>
</html>