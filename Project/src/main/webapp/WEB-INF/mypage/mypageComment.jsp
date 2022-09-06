<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<% pageContext.setAttribute("newLineChar", "\n"); %>  
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
<link rel="stylesheet" href="${cpath}/css/my/kakao.css">
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	viewport-fit=cover" >
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
	function vgList() {
		//게시판 리스트를 가져오기
		$.ajax({
				url : "${cpath}/myComVg.do",
				type : "get",
				dataType : "json",
				success : resultVg,
				error : function() {
					alert("error");
				}
			})
	};
	function resultVg(data) { 
		var html = "";
		$.each(data, function(index, obj) {
				
				html += "<tr>";
				html += "<td class='text-center'>01</td>";
				html += "<td><a href='#' class='text-reset '>" + obj.buy_cmt_content+"</a></td>";
				html += "<td class='text-muted  text-center'><img src='#' alt='icon'>" + obj.login_id+"</td>";
				html += "<td class='text-muted  text-center'>" + obj.buy_cmt_date.split(' ')[0]+"</td>";
				html += "</tr>";
		})
		$("#list").html(html);
	};
	
	function toList() {
		
		//게시판 리스트를 가져오기
		$.ajax({
				url : "${cpath}/myComTo.do",
				type : "get",
				dataType : "json",
				success : resultTo,
				error : function() {
					alert("error");
				}
			})
	};
	
	function resultTo(data) { 
		var html = "";
		$.each(data, function(index, obj) {
			
				html += "<tr>";
				html += "<td class='text-center'>01</td>";
				html += "<td><a href='#' class='text-reset '>" + obj.zw_cmt_content+"<span class='text-orange'>&nbsp;[" + obj.zw_cmtcnt+"]</span></a></td>";
				html += "<td class='text-muted  text-center'><img src='#' alt='icon'>" + obj.login_id+"</td>";
				html += "<td class='text-muted  text-center'>" + obj.zw_cmt_date.split(' ')[0]+"</td>";
				html += "</tr>";
		})
		$("#listT").html(html);
	};
	
function imgList() {
		
		//게시판 리스트를 가져오기
		$.ajax({
				url : "${cpath}/myComImg.do",
				type : "get",
				dataType : "json",
				success : resultImg,
				error : function() {
					alert("error");
				}
			})
	};
	
	function resultImg(data) { 
		var html = "";
		$.each(data, function(index, obj) {
			
				html += "<tr>";
				html += "<td class='text-center'>01</td>";
				html += "<td><a href='#' class='text-reset '>" + obj.zw_cmt_content+"</a></td>";
				html += "<td class='text-muted  text-center'><img src='#' alt='icon'>" + obj.login_id+"</td>";
				html += "<td class='text-muted  text-center'>" + obj.zw_cmt_date.split(' ')[0]+"</td>";
				html += "</tr>";
		})
		$("#listI").html(html);
	};
</script>
</head>
<body>
	<!-- WEB-INF폴더에서 사용시 page="../header/header.jsp"로 변경 -->
	<jsp:include page="../../header/header.jsp" />
	<!------------여기부터 입력----------->
	<div class="container-xl">
		<div class="page-header mb-3">
			<div class="row align-items-center mw-100 mt-4">
				<div class="col">
					<div class="mb-1"></div>

				</div>

			</div>
		</div>
		<div class="row">
			<div class="col-12 col-md-3 px-4 ">
				<!--프로필 시작-->

				<div class="card-body text-center mb-4">
					<span class="avatar avatar-xl mb-3 avatar-rounded"
						style="background-image: url(https://img.freepik.com/premium-vector/illustration-of-earth-character-sprouts_279539-60.jpg?w=1060)"></span>
					<h3 class="m-0 mb-1">
						<a href="#">${mvo.u_nick }</a>
					</h3>
					<div class="text-muted">${mvo.login_id }</div>
					<div class="mt-3">
						<span class="badge bg-blue-lt">${mvo.u_grade}</span>
					</div>
				</div>
				<!-- 프로필 끝-->

				<div class="progress mb-2">
					<div class="progress-bar" style="width: ${mvo.u_point}%" role="progressbar"
						aria-valuenow="38" aria-valuemin="0" aria-valuemax="100"
						aria-label="38% Complete">
						<span class="visually-hidden">38% Complete</span>
					</div>
				</div>
				<p class="text-center">
					<small>다음 등급까지 ${100-mvo.u_point} 포인트</small>
				</p>
				<div
					class="list-group list-group-transparent mb-3 ml-3  theme-light mb-5">
					<a
						class="list-group-item list-group-item-action d-flex align-items-center"
						href="${cpath}/memberView.do"> 내 프로필 수정 </a> <a
						class="list-group-item list-group-item-action d-flex align-items-center"
						href="${cpath}/mypageWrite.do"> 내가 쓴 글 <small class="text-muted ms-auto">${cmw} </small>
					</a> <a
						class="list-group-item list-group-item-action d-flex align-items-center"
						href="${cpath}/mypageComment.do"> 내가 쓴 댓글 <small class="text-muted ms-auto">${cmc} </small>
					</a>
				</div>
			</div>
			<div class="col-12 col-md-9">
				<div class="row">
					<div class="col-12">
						<!-- 게시판-->
						<div class="ms-1 mb-3 mt-3">
							<h1>내가 쓴 댓글</h1>
						</div>
						<div class="col-12 mt-1 mb-5">
							<!-- tab -->
							<div class="card">
								<ul class="nav nav-tabs nav-fill" data-bs-toggle="tabs"
									role="tablist">
									<li class="nav-item" role="presentation"><a
										href="#tabs-home-14" class="nav-link active"
										data-bs-toggle="tab" aria-selected="false" role="tab"
										tabindex="-1">제로웨이스트&비건</a></li>
									<li class="nav-item" role="presentation" onclick="vgList()" >
										<a class="nav-link" data-bs-toggle="tab" aria-selected="false"
										role="tab" tabindex="-1" href="#tabs-profile-14">공동구매</a>
									</li>
									<li class="nav-item" role="presentation" onclick="toList()"><a
										href="#tabs-activity-14" class="nav-link" data-bs-toggle="tab"
										aria-selected="true" role="tab">함께해요</a></li>
									<li class="nav-item" role="presentation" onclick="imgList()"><a
										href="#tabs-img-14" class="nav-link" data-bs-toggle="tab"
										aria-selected="false" role="tab" tabindex="-1">이미지</a></li>
								</ul>
								<div class="card-body">
									<div class="tab-content">
										<div class="tab-pane active snow" id="tabs-home-14"
											role="tabpanel">
											<div>
												<div class="bg-light border-y">
													<div class="table-responsive">
														<table class="table table-vcenter table-hover">
															<thead>
																<tr>
																	<!-- 제로웨이스트 -->
																	<th>번호</th>
																	<th>내용</th>
																	<th>ID</th>
																	<th>등록일</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach var="vo" items="${list}">
																	<tr>
																		<td class="text-center">01</td>
																		<td><a href="#" class="text-reset ">${vo.zw_cmt_content}</a></td>
																		<td class="text-muted  text-center"><img src="#"
																			alt="icon">${vo.login_id}</td>
																		<td class="text-muted  text-center">${fn:split(vo.zw_cmt_date," ")[0]}</td>
																		
																	</tr>
																</c:forEach>


															</tbody>
														</table>
													</div>
													<div class="card-footer d-flex align-items-center py-2">
														<ul class="pagination m-0 m-auto">
															<li class="page-item disabled"><a class="page-link"
																href="#" tabindex="-1" aria-disabled="true"> <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                        <polyline points="15 6 9 12 15 18" />
                      </svg> prev
															</a></li>
															<li class="page-item"><a class="page-link" href="#">1</a></li>
															<li class="page-item"><a class="page-link" href="#">2</a></li>
															<li class="page-item"><a class="page-link" href="#">3</a></li>
															<li class="page-item"><a class="page-link" href="#">4</a></li>
															<li class="page-item"><a class="page-link" href="#">5</a></li>
															<li class="page-item"><a class="page-link" href="#">
																	next <!-- Download SVG icon from http://tabler-icons.io/i/chevron-right -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                        <polyline points="9 6 15 12 9 18" />
                      </svg>
															</a></li>
														</ul>

													</div>
													<form action="#" method="#">
														<div class="card-footer">
															<div class="row m-auto mb-3">

																<div class="col-3"></div>
																<div class="col-auto">
																	<select type="text" class="form-select"
																		placeholder="Select a date" id="select-tags" value="">
																		<option value="content">내용</option>
																		<option value="writer">작성자</option>
																	</select>
																</div>
																<div class="col-4">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			aria-label="Text input with dropdown button">
																	</div>
																</div>
																<div class="col-1">
																	<button type="submit" class="btn btn-icon"
																		value="Submit">
																		<svg xmlns="http://www.w3.org/2000/svg"
																			class="icon icon-tabler icon-tabler-search"
																			width="24" height="24" viewBox="0 0 24 24"
																			stroke-width="2" stroke="currentColor" fill="none"
																			stroke-linecap="round" stroke-linejoin="round">
                          <path stroke="none" d="M0 0h24v24H0z"
																				fill="none"></path>
                          <circle cx="10" cy="10" r="7"></circle>
                          <line x1="21" y1="21" x2="15" y2="15"></line>
                        </svg>
																	</button>

																	</a>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="tabs-profile-14" role="tabpanel">
											<div>
												<div class="bg-light border-y">
													<div class="table-responsive">
														<table class="table table-vcenter table-hover">
															<thead>
																<tr>
																	<!-- 비건 -->
																	<th>번호</th>
																	<th>내용</th>
																	<th>ID</th>
																	<th>등록일</th>
																</tr>
															</thead>
															<tbody id="list">

															</tbody>
														</table>
													</div>
													<div class="card-footer d-flex align-items-center py-2">
														<ul class="pagination m-0 m-auto">
															<li class="page-item disabled"><a class="page-link"
																href="#" tabindex="-1" aria-disabled="true"> <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                        <polyline points="15 6 9 12 15 18" />
                      </svg> prev
															</a></li>
															<li class="page-item"><a class="page-link" href="#">1</a></li>
															<li class="page-item"><a class="page-link" href="#">2</a></li>
															<li class="page-item"><a class="page-link" href="#">3</a></li>
															<li class="page-item"><a class="page-link" href="#">4</a></li>
															<li class="page-item"><a class="page-link" href="#">5</a></li>
															<li class="page-item"><a class="page-link" href="#">
																	next <!-- Download SVG icon from http://tabler-icons.io/i/chevron-right -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                        <polyline points="9 6 15 12 9 18" />
                      </svg>
															</a></li>
														</ul>

													</div>
													<form action="#" method="#">
														<div class="card-footer">
															<div class="row m-auto mb-3">

																<div class="col-3"></div>
																<div class="col-auto">
																	<select type="text" class="form-select"
																		placeholder="Select a date" id="select-tags" value="">
																		<option value="title">제목</option>
																		<option value="writer">작성자</option>
																		<option value="content">내용</option>
																	</select>
																</div>
																<div class="col-4">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			aria-label="Text input with dropdown button">
																	</div>
																</div>
																<div class="col-1">
																	<button type="submit" class="btn btn-icon"
																		value="Submit">
																		<svg xmlns="http://www.w3.org/2000/svg"
																			class="icon icon-tabler icon-tabler-search"
																			width="24" height="24" viewBox="0 0 24 24"
																			stroke-width="2" stroke="currentColor" fill="none"
																			stroke-linecap="round" stroke-linejoin="round">
                          <path stroke="none" d="M0 0h24v24H0z"
																				fill="none"></path>
                          <circle cx="10" cy="10" r="7"></circle>
                          <line x1="21" y1="21" x2="15" y2="15"></line>
                        </svg>
																	</button>

																	</a>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="tabs-activity-14" role="tabpanel">
											<div>
												<div class="bg-light border-y">
													<div class="table-responsive">
														<table class="table table-vcenter table-hover">
															<thead>
																<tr>
																	<!-- 함께해요 -->
																	<th>번호</th>
																	<th>내용</th>
																	<th>ID</th>
																	<th>등록일</th>
																</tr>
															</thead>
															<tbody id="listT">
																

															</tbody>
														</table>
													</div>
													<div class="card-footer d-flex align-items-center py-2">
														<ul class="pagination m-0 m-auto">
															<li class="page-item disabled"><a class="page-link"
																href="#" tabindex="-1" aria-disabled="true"> <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                        <polyline points="15 6 9 12 15 18" />
                      </svg> prev
															</a></li>
															<li class="page-item"><a class="page-link" href="#">1</a></li>
															<li class="page-item"><a class="page-link" href="#">2</a></li>
															<li class="page-item"><a class="page-link" href="#">3</a></li>
															<li class="page-item"><a class="page-link" href="#">4</a></li>
															<li class="page-item"><a class="page-link" href="#">5</a></li>
															<li class="page-item"><a class="page-link" href="#">
																	next <!-- Download SVG icon from http://tabler-icons.io/i/chevron-right -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                        <polyline points="9 6 15 12 9 18" />
                      </svg>
															</a></li>
														</ul>

													</div>
													<form action="#" method="#">
														<div class="card-footer">
															<div class="row m-auto mb-3">

																<div class="col-3"></div>
																<div class="col-auto">
																	<select type="text" class="form-select"
																		placeholder="Select a date" id="select-tags" value="">
																		<option value="title">제목</option>
																		<option value="writer">작성자</option>
																		<option value="content">내용</option>
																	</select>
																</div>
																<div class="col-4">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			aria-label="Text input with dropdown button">
																	</div>
																</div>
																<div class="col-1">
																	<button type="submit" class="btn btn-icon"
																		value="Submit">
																		<svg xmlns="http://www.w3.org/2000/svg"
																			class="icon icon-tabler icon-tabler-search"
																			width="24" height="24" viewBox="0 0 24 24"
																			stroke-width="2" stroke="currentColor" fill="none"
																			stroke-linecap="round" stroke-linejoin="round">
                          <path stroke="none" d="M0 0h24v24H0z"
																				fill="none"></path>
                          <circle cx="10" cy="10" r="7"></circle>
                          <line x1="21" y1="21" x2="15" y2="15"></line>
                        </svg>
																	</button>

																	</a>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="tabs-img-14" role="tabpanel">
											<div>
												<div class="bg-light border-y">
													<div class="table-responsive">
														<table class="table table-vcenter table-hover">
															<thead>
																<tr>
																	<th>번호</th>
																	<th>내용</th>
																	<th>ID</th>
																	<th>등록일</th>
																</tr>
															</thead>
															<tbody id="listI">
																

															</tbody>
														</table>
													</div>
													<div class="card-footer d-flex align-items-center py-2">
														<ul class="pagination m-0 m-auto">
															<li class="page-item disabled"><a class="page-link"
																href="#" tabindex="-1" aria-disabled="true"> <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                        <polyline points="15 6 9 12 15 18" />
                      </svg> prev
															</a></li>
															<li class="page-item"><a class="page-link" href="#">1</a></li>
															<li class="page-item"><a class="page-link" href="#">2</a></li>
															<li class="page-item"><a class="page-link" href="#">3</a></li>
															<li class="page-item"><a class="page-link" href="#">4</a></li>
															<li class="page-item"><a class="page-link" href="#">5</a></li>
															<li class="page-item"><a class="page-link" href="#">
																	next <!-- Download SVG icon from http://tabler-icons.io/i/chevron-right -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                        <polyline points="9 6 15 12 9 18" />
                      </svg>
															</a></li>
														</ul>

													</div>
													<form action="#" method="#">
														<div class="card-footer">
															<div class="row m-auto mb-3">

																<div class="col-3"></div>
																<div class="col-auto">
																	<select type="text" class="form-select"
																		placeholder="Select a date" id="select-tags" value="">
																		<option value="title">제목</option>
																		<option value="writer">작성자</option>
																		<option value="content">내용</option>
																	</select>
																</div>
																<div class="col-4">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			aria-label="Text input with dropdown button">
																	</div>
																</div>
																<div class="col-1">
																	<button type="submit" class="btn btn-icon"
																		value="Submit">
																		<svg xmlns="http://www.w3.org/2000/svg"
																			class="icon icon-tabler icon-tabler-search"
																			width="24" height="24" viewBox="0 0 24 24"
																			stroke-width="2" stroke="currentColor" fill="none"
																			stroke-linecap="round" stroke-linejoin="round">
                          <path stroke="none" d="M0 0h24v24H0z"
																				fill="none"></path>
                          <circle cx="10" cy="10" r="7"></circle>
                          <line x1="21" y1="21" x2="15" y2="15"></line>
                        </svg>
																	</button>

																	</a>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- tab끝 -->


						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	</div>
	<!-- footer -->
	<!-- WEB-INF폴더에서 사용시 page="../footer/footer.jsp"로 변경 -->
	<jsp:include page="../../footer/footer.jsp" />
	</div>
	</div>



	</script>
</body>
</html>