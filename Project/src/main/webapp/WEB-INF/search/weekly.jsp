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
<title>empty</title>
<!-- CSS files -->
<link href="${cpath}/css/tabler.css" rel="stylesheet" />
<link href="${cpath}/css/tabler-vendors.css" rel="stylesheet" />

<!-- Libs JS -->

<!-- Tabler Core -->
<script src="${cpath}/js/tabler.min.js" defer></script>

<!-- my -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${cpath}/css/my/sub.css">
<link rel="stylesheet" href="${cpath}/css/my/weekely.css">
<title>Bootstrap Example</title>
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
			<div class="cover-wrap">
				<div class="container">
					<div class="cover">주간인기검색어</div>
				</div>
			</div>
			<!------------여기부터 입력----------->
			<div class="container-wrap bg-primary-lt">
				<div class="container-xxl">
					<div class="row bb-line">
						<div class="w-sec py-5 px-4 ">
							<!-- <div class="col-4"> -->
							<c:forEach var="vo" items="${zero_list}" end="0">
							<span>UPDATE : ${vo.day}</span>
							</c:forEach>
							<h1 class="mt-2">
								이번주 <strong>"제로웨이스트"</strong>의<br>인기검색어는?
							</h1>
							<!-- </div> -->
						</div>
						<div class="col mx-3 py-4">
							<c:forEach var="vo" items="${zero_list}" end="4" varStatus="st">
							<a href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=${vo.title }" target=_blank>
								<div class="weekely mt-2">
									<div class="w-num p-2">0${st.count}</div>
									<div class="w-title py-2">${vo.title }</div>
								</div>
							</a>
							</c:forEach>
						</div>
						<div class="col me-3 py-4">
							<c:forEach var="vo" items="${zero_list}" begin="5" end="9" varStatus="st">
							<a href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=${vo.title }" target=_blank>
								<div class="weekely mt-2">
									<div class="w-num p-2">
									<c:choose>
									<c:when test="${st.index+1 eq 10 }">
									${st.index+1}
									</c:when>
									<c:otherwise>
									0${st.index+1}
									</c:otherwise>
									</c:choose></div>
									<div class="w-title py-2">${vo.title }</div>
								</div>
								</a>
							</c:forEach>
						</div>
					</div>
				
					<div class="row bb-line">
						<div class="vg-bg w-sec py-5 px-4 ">
							<!-- <div class="col-4"> -->
							<c:forEach var="vo" items="${vegan_list}" end="0">
							<span>UPDATE : ${vo.day}</span>
							</c:forEach>
							<h1 class="mt-2">
								이번주 <strong>"비건"</strong>의<br>인기검색어는?
							</h1>
							<!-- </div> -->
						</div>
						<div class="col mx-3 py-4">
							<c:forEach var="vo" items="${vegan_list}" end="4" varStatus="st">
							<a href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=${vo.title }" target=_blank>
								<div class="weekely mt-2">
									<div class="w-num p-2">0${st.count}</div>
									<div class="w-title py-2">${vo.title }</div>
								</div>
								</a>
							</c:forEach>
						</div>
						<div class="col me-3 py-4">
							<c:forEach var="vo" items="${vegan_list}" begin="5" end="9" varStatus="st">
								<a href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=${vo.title }" target=_blank>
								<div class="weekely mt-2">
									<div class="w-num p-2">
									<c:choose>
									<c:when test="${st.index+1 eq 10 }">
									${st.index+1}
									</c:when>
									<c:otherwise>
									0${st.index+1}
									</c:otherwise>
									</c:choose></div>
									<div class="w-title py-2">${vo.title }</div>
								</div>
								</a>
							</c:forEach>
						</div>
					</div>
					
					<div class="row">
						<div class="pl-bg w-sec py-5 px-4 ">
							<!-- <div class="col-4"> -->
							<c:forEach var="vo" items="${plastic_list}" end="0">
							<span>UPDATE : ${vo.day}</span>
							</c:forEach>
							<h1 class="mt-2">
								이번주 <strong>"플라스틱제로"</strong>의<br>인기검색어는?
							</h1>
							<!-- </div> -->
						</div>
						<div class="col mx-3 py-4">
							<c:forEach var="vo" items="${plastic_list}" end="4" varStatus="st">
							<a href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=${vo.title }" target=_blank>
								<div class="weekely mt-2">
									<div class="w-num p-2">0${st.count}</div>
									<div class="w-title py-2">${vo.title }</div>
								</div>
								</a>
							</c:forEach>
						</div>
						<div class="col me-3 py-4">
							<c:forEach var="vo" items="${plastic_list}" begin="5" end="9" varStatus="st">
							<a href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=${vo.title }" target=_blank>
								<div class="weekely mt-2">
									<div class="w-num p-2">
									<c:choose>
									<c:when test="${st.index+1 eq 10 }">
									${st.index+1}
									</c:when>
									<c:otherwise>
									0${st.index+1}
									</c:otherwise>
									</c:choose></div>
									<div class="w-title py-2">${vo.title }</div>
								</div>
								</a>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!-- footer -->
			<!-- WEB-INF폴더에서 사용시 page="../footer/footer.jsp"로 변경 -->
			<jsp:include page="../../footer/footer.jsp" />
		</div>
	</div>
</body>
</html>