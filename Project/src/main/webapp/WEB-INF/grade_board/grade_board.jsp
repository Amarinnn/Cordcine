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


	function goWrite(){
		if(${mvo.login_id==null}){
			alert("로그인후 이용하세요");
		}else if(${!((mvo.u_grade == 'admin') || (mvo.u_grade == '지구지킴단'))}){
			alert("[]등급 이상만 글을 작성할 수 있습니다.");
		}
		else{
			location.href='${cpath}/gradeWriteForm.do';
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
            등급제 게시판
          </div>
        </div>
      </div>
      <!------------여기부터 입력----------->
      <div class="page-wrapper">
        <div class="container-xl">
          <!-- Page title -->
          <div class="page-header d-print-none">
            <div class="row g-2 align-items-center">
              <div class="col">
                <h2 class="page-title">
                <a href="${cpath }/zwlist.do">제로웨이스트</a>
                  
                </h2>
              </div>
            </div>
          </div>
        </div>
        <div class="page-body">
          <div class="container-xl">
            <div class="row row-cards">
           
              
              <div class="col-12 mt-1 mb-5">
            <div class="bg-light border-y">
              <div class="table-responsive">
                <table class="table table-vcenter table-hover">
                  <thead>
                    <tr>
                      <th>번호</th>
                      <th class="w-50">제목</th>
                      <th class="w-20">글쓴이</th>
                      <th class="w-20">등록일</th>
                      <th>조회</th>
                      <th>추천</th>
                    </tr>
                  </thead>
                  <tbody id="list">
                  <c:forEach  var="vo" items="${notice}"> 
    					<tr class="bg-yellow-lt">
			    			<td class ="text-center">공지</td>
			    			<td class="text-muted " ><a href="${cpath }/gradeView.do?num=${vo.grade_seq}&p=${board.currentPage}&login_id=${mvo.login_id}" class="text-reset"><span class="text-green">[${vo.grade_headline}]<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M5 21c.5 -4.5 2.5 -8 7 -10"></path><path d="M9 18c6.218 0 10.5 -3.288 11 -12v-2h-4.014c-9 0 -11.986 4 -12 9c0 1 0 3 2 5h3z"></path></svg></span>
			    			${vo.grade_title }<span class="text-orange">&nbsp;[${vo.grade_cmtcnt }]</span></a></td>
			    			<td class="text-muted text-center"><img src="#" alt="icon">${vo.login_id }</td>
			    			<td class="text-muted text-center">${vo.grade_regdate }</td>
			    			<td class="text-muted  text-center">${vo.grade_cnt }</td>
			    			<td class="text-muted text-center">${vo.grade_likes }</td>
			    		</tr>
    				</c:forEach>
                  	<c:forEach  var="vo" items="${list }"> 
    					<tr>
			    			<td class ="text-center">${vo.grade_seq }</td>
			    			<td class="text-muted " ><a href="${cpath }/gradeView.do?num=${vo.grade_seq}&p=${board.currentPage}&login_id=${mvo.login_id}" class="text-reset"><span class="text-green">[${vo.grade_headline}]<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M5 21c.5 -4.5 2.5 -8 7 -10"></path><path d="M9 18c6.218 0 10.5 -3.288 11 -12v-2h-4.014c-9 0 -11.986 4 -12 9c0 1 0 3 2 5h3z"></path></svg></span>
			    			${vo.grade_title }<span class="text-orange">&nbsp;[${vo.grade_cmtcnt }]</span></a></td>
			    			<td class="text-muted text-center"><img src="#" alt="icon">${vo.login_id }</td>
			    			<td class="text-muted text-center">${vo.grade_regdate }</td>
			    			<td class="text-muted  text-center">${vo.grade_cnt }</td>
			    			<td class="text-muted text-center">${vo.grade_likes }</td>
			    		</tr>
    				</c:forEach> 
                  </tbody>
                </table>
              </div>
              <div class="card-footer d-flex align-items-center py-2">
                <ul class="pagination m-0 m-auto">
                <c:if test="${board.pagingPerCount<board.start_page}">
                  <li class="page-item abled">
                    <a class="page-link" href="${cpath }/gradeList.do?p=${board.start_page-1}" tabindex="-1" aria-abled="true">
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
				    	<li class="page-item active"><a class="page-link" href="${cpath }/gradeList.do?p=${i}">${i}</a></li>
				    	</c:when>
				    	<c:otherwise>
				    	
					    <li class="page-item "><a class="page-link" href="${cpath }/gradeList.do?p=${i}">${i}</a></li>
					    </c:otherwise>
					    </c:choose>
				    </c:forEach>
				     
				   
                      <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
                      
				<c:if test="${board.numPageCount>board.end_page}">
					<li class="page-item abled"><a class="page-link" href="${cpath }/gradeList.do?p=${board.end_page+1}" tabindex="1" aria-abled="true">next
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
              <form action="${cpath }/gradeSearch.do" method="get" id="searchForm" onsubmit="return checksearch()">
                <div class="card-footer">
                  <div class="row m-auto mb-3">

                    <div class="col-3"></div>
                    <div class="col-auto">
                      <select type="text" class="form-select" name ="val" placeholder="Select a date" id="select-tags" value="">
                        <option value="grade_title">제목</option>
                        <option value="login_id">작성자</option>
                        <option value="grade_content">내용</option>
                      </select>
                    </div>
                    <div class="col-4">
                      <div class="input-group">
                        <input type="text" class="form-control" name="text" aria-label="Text input with dropdown button" id="search">
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
        <jsp:include page="../../footer/footer.jsp" />
  </div>
  </div>

</body>
</html>