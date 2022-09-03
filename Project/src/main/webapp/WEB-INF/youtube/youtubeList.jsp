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
   <link rel="stylesheet" href="${cpath}/css/my/hj.css">
  
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" viewport-fit=cover">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

 

</head>


	
<body>
  <div class="page">
    <div class="page-main">
    
      <jsp:include page="../../header/header.jsp" />
      <!----------------------header end--------------------->
      <div class="cover-wrap">
        <div class="container">
          <div class="cover">
            Youtube
          </div>
        </div>
      </div>
      <!------------여기부터 입력----------->
      <div class="page-wrapper">
        <div class="container-xl">
          <!-- Page title -->
          <div class="page-header d-print-none">
            <div class="row g-4 align-items-center">
              <div class="col">
                <h2 class="page-title">
                <p>제로웨이스트</p>
                  
                </h2>
              </div>
            </div>
          </div>
        </div>
      
        <div class="page-body">
			<div class="container-md">
				<div class="row row-card">
					
							<c:forEach  var="vo" items="${list}"> 
							<div class="col-lg-4 mb-4">
								<div class="card mb-6 mx-4">
		    					<tr class="bg-yellow-lt">
					    			<div><td class="text-muted text-center"><image src="${vo.logo }" style="width:45px;"></td><td class="text-muted text-center">${vo.name }</td></div>
					    			<td class="text-muted text-center">	<iframe width="100%"  src="${vo.video }" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					    			</td>
					    			<div class="card-body">
					    				<h3><td class="text-muted  text-center">${vo.content }</td></h3>
					    			</div>
					    		</tr>
					    		</div>
					</div>
					    		</c:forEach>
						
              <div class="card-footer d-flex align-items-center py-2">
                <ul class="pagination m-0 m-auto">
                <c:if test="${youtube.pagingPerCount<youtube.start_page}">
                  <li class="page-item abled">
                    <a class="page-link" href="${cpath }/youtubelist.do?p=${youtube.start_page-1}" tabindex="-1" aria-abled="true">
                      <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
                        stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
                        stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        page += <polyline points="15 6 9 12 15 18" /></svg>prev</a></li>
				</c:if>
				    <c:forEach var="i" begin="${youtube.start_page}" end="${youtube.end_page}">
				    	<c:choose>
				    	<c:when test="${youtube.currentPage eq i}">
				    	<li class="page-item active"><a class="page-link" href="${cpath }/youtubelist.do?p=${i}">${i}</a></li>
				    	</c:when>
				    	<c:otherwise>
					    <li class="page-item "><a class="page-link" href="${cpath }/youtubelist.do?p=${i}">${i}</a></li>
					    </c:otherwise>
					    </c:choose>
				    </c:forEach>
                      <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
                      
				<c:if test="${youtube.numPageCount>youtube.end_page}">
					<li class="page-item abled"><a class="page-link" href="${cpath }/youtubelist.do?p=${youtube.end_page+1}" tabindex="1" aria-abled="true">next
					<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" 
                      stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" 
                      stroke-linejoin="round">
                      <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                      page += <polyline points="9 6 15 12 9 18" /></svg></a></li>
                 </c:if> 
                      </ul>        
            </div>
          </div>
        </div>
        <jsp:include page="../../footer/footer.jsp" />
  </div>
  </div>
</body>
</html>
