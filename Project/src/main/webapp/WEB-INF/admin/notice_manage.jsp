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
<link rel="stylesheet" href="${cpath}/css/my/sub.css">
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	viewport-fit=cover">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function(){
		//전체 체크박스 클릭
		$("#checkAll").click(function(){
			if ($("#checkAll").prop("checked")){
				$(".test").prop("checked",true);
			} else{
				$(".test").prop("checked", false);
			}
		});
		
		$(".test").click(function(){
			if ($("input[name='check']:checked").length == 10){
				$("#checkAll").prop("checked", true);
			} else{
				$("#checkAll").prop("checked", false);
			}
		})
	})
	
	function user_delete(){
		var rowData = new Array();
		var tdArr = new Array();
		var checkbox = $("input[name='check']:checked");
		
		console.log(checkbox)
		//체크된 체크박스 값을 가져온다
		checkbox.each(function(i){
			
			//checkbox.parent(): checkbox의 부모는 <td>이다.
			//checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
			var tr = checkbox.parent().parent().eq(i);
			var td = tr.children();
			
			
			//체크된 row의 모든 값을 배열에 담는다.
			rowData.push(tr.text().replace(/\t/g, "").replace(/\n/g,", "));
			
			//td.eq(0)은 체크박스 이므로 td.eq(1)의 값부터 가져온다.
			var userid = td.eq(1).text();
			
			tdArr.push(userid);
			
			
		});
		console.log(tdArr);
		
		$.ajax({
			 url: "${cpath}/u_delete.do",
			  type : "post",
			  traditional : true ,
			  data : {tdArr:tdArr},
			  success : function(){
				  alert("삭제 되었습니다.");
			  },
			  error : function(){
				  alert("error");
			  }
		});
		
	}
	
	//검색 기능 구현
	function searching(num) {

        var option = $("#select-tags").val();
        var search = document.getElementById("search").value;;
        const queryParams = {
            num: (num) ? num : 1,
            option: option,
            search: search
        }
        location.href = location.pathname + '?' + new URLSearchParams(queryParams).toString();
        console.log(location.href = location.pathname + '?' + new URLSearchParams(queryParams).toString())
    }
	
	
	
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
				<div class="list-group list-group-transparent mb-3 ml-3  theme-light mb-5">
					<a class="list-group-item list-group-item-action d-flex align-items-center"
						href="${cpath }/memberlist.do"> 사용자 관리 </a> 
					<a class="list-group-item list-group-item-action d-flex align-items-center"
						href="${cpath }/adminNotice.do"> 공지사항 관리 </a>
				</div>
			</div>
			<div class="col-12 col-md-9">
				<div class="row">
					<div class="col-12">
						<!-- 게시판-->
						<div class="ms-1 mb-3 mt-3">
							<h1>공지사항 관리</h1>
						</div>
						<div class="col-12 mt-1 mb-5">
							<!-- tab -->
							<div class="card">
								
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
										                      <th>번호</th>
										                      <th class="w-50">제목</th>
										                      <th class="w-20">글쓴이</th>
										                      <th class="w-20">등록일</th>
										                      <th>조회</th>
										                      <th>추천</th>
										                    </tr>
										                  </thead>
										                  <tbody id="list">
										                  	<c:forEach  var="vo" items="${list }"> 
										    					<tr>
													    			<td class ="text-center">${vo.seq }</td>
													    			<td class="text-muted " ><a href="${cpath }/boardView.do?num=${vo.seq}&p=${board.currentPage}&login_id=${mvo.login_id}" class="text-reset"><span class="text-green">[${vo.headline}]<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M5 21c.5 -4.5 2.5 -8 7 -10"></path><path d="M9 18c6.218 0 10.5 -3.288 11 -12v-2h-4.014c-9 0 -11.986 4 -12 9c0 1 0 3 2 5h3z"></path></svg></span>
			    																${vo.title }<span class="text-orange">&nbsp;[${vo.cmtcnt }]</span></a></td>
													    			<td class="text-muted text-center"><img src="#" alt="icon">${vo.login_id }</td>
													    			<td class="text-muted text-center">${vo.day }</td>
													    			<td class="text-muted  text-center">${vo.cnt }</td>
													    			<td class="text-muted text-center">${vo.likes }</td>
													    		</tr>
										    				</c:forEach>
										                  </tbody>
										                </table>
														<div class="card-footer d-flex align-items-center py-2">
															<ul class="pagination m-0 m-auto">
																<c:choose>
																	<c:when test="${paging.start_page eq 1 }">
																		<li class="page-item disabled">
																		<a class="page-link" tabindex="-1" aria-disabled="false">
																		<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
																		<path stroke="none" d="M0 0h24v24H0z" fill="none"/>
																		<polyline points="15 6 9 12 15 18" /></svg> prev</a></li>
																	</c:when>
																	<c:otherwise>
																		<li class="page-item"><a class="page-link" href="${cpath}/memberlist.do?num=${paging.start_page-1}"
																			tabindex="-1" aria-disabled="false"> <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"	stroke-width="2" stroke="currentColor" fill="none"
																					stroke-linecap="round" stroke-linejoin="round">
																		<path stroke="none" d="M0 0h24v24H0z" fill="none" />
																		<polyline points="15 6 9 12 15 18" /></svg> prev</a></li>
																	</c:otherwise>
																</c:choose>
																<c:forEach var="i" begin="${paging.start_page }" end="${paging.end_page }">
																	<c:choose>
																		<c:when test="${paging.current_page eq i }">
																			<li class="page-item active"><a class="page-link">${i}</a></li>
																		</c:when>
																		<c:otherwise>
																			<li class="page-item"><a class="page-link" href="${cpath}/memberlist.do?num=${i}">${i}</a></li>
																		</c:otherwise>
																	</c:choose>
																</c:forEach>
																<c:choose>
																	<c:when test="${paging.end_page % 5 eq 0 }">
																		<li class="page-item"><a class="page-link" href="${cpath}/memberlist.do?num=${pagping.end_page+1}">next
																				<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																					width="24" height="24" viewBox="0 0 24 24"
																					stroke-width="2" stroke="currentColor" fill="none"
																					stroke-linecap="round" stroke-linejoin="round">
																		<path stroke="none" d="M0 0h24v24H0z" fill="none" />
																		<polyline points="9 6 15 12 9 18" />
																		</svg>
																		</a></li>
																	</c:when>
																	<c:otherwise>
																		<li class="page-item disabled"><a class="page-link">next
																				<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																					width="24" height="24" viewBox="0 0 24 24"
																					stroke-width="2" stroke="currentColor" fill="none"
																					stroke-linecap="round" stroke-linejoin="round">
																		<path stroke="none" d="M0 0h24v24H0z" fill="none" />
																		<polyline points="9 6 15 12 9 18" />
																		</svg>
																		</a></li>
																	</c:otherwise>
																</c:choose>
															</ul>
														</div>
														<form >
															<div class="card-footer">
																<div class="row m-auto mb-3">
																	<div class="col-3"></div>
																	<div class="col-auto">
																		<select type="text" class="form-select"
																			placeholder="Select a date" id="select-tags" value="${paging.option }">
																			<option value="user_id">아이디</option>
																			<option value="user_nick">닉네임</option>
																		</select>
																	</div>
																	<div class="col-4">
																		<div class="input-group">
																		<c:choose>
																		<c:when test="${paing.search ne null }">
																			<input type="text" class="form-control" aria-label="Text input with dropdown button" id="search" value="${paging.search }">
																		</c:when>
																		<c:otherwise>
																			<input type="text" class="form-control" aria-label="Text input with dropdown button" id="search">
																		</c:otherwise>
																		</c:choose>
																			
																		</div>
																	</div>
																	<div class="col-1">
																		<button type="button" class="btn btn-icon"
																			onclick="javascript:searching(1)">
																			<svg xmlns="http://www.w3.org/2000/svg"
																				class="icon icon-tabler icon-tabler-search" width="24"
																				height="24" viewBox="0 0 24 24" stroke-width="2"
																				stroke="currentColor" fill="none" stroke-linecap="round"
																				stroke-linejoin="round">
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