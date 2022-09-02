<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% pageContext.setAttribute("newLineChar", "\n"); %>

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
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
  <!-- Tabler Core -->
  <script src="${cpath}/js/tabler.min.js" defer></script>

  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2224da2e91e9de7689142f9c3f2f1635&libraries=services"></script>

  <!-- my -->
  <link rel="stylesheet" href="${cpath}/css/my/sub.css">
  <link rel="stylesheet" href="${cpath}/css/my/dy.css">
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" viewport-fit=cover">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

$(document).ready(function(){
		reloadList();
		
		
	});	
	
	
	
  	function goList(){
  		location.href="${cpath}/zwlist.do?p=${p}";
  	}
  	function goDel(num){
  		var del = confirm("글을 삭제하시겠습니까");
  		if(del == true){
  	  		location.href="${cpath}/boardDelete.do?num="+ num;

  		}else{
  			return false;
  		}
  	}
  	function goUpdate(num){
  		location.href="${cpath}/boardUpdateForm.do?num="+ num;
  		
  	}	
  	
  	function commUpdateForm(num){
  		console.log("updateform"+num);
  		$("#cmt"+num).html("<textarea id ='cmmUpdate' type='text' class='form-control' >"+$('#cmt'+num).text()+"</textarea>"
  				);
  		
  		$("#cmtbtn"+num).html("<button type='button' class='btn btn-outline-success w-100' onclick='commUpdate("+num+")'>등록</button>");
  		$("#cmtdeletebtn"+num).html("<button type='button' class='btn btn-outline-danger w-100' onclick='updateCancel()'>취소</button>");	
  		
  	}
  	function commUpdate(num){
  		var content= $('#cmmUpdate').val();
  		console.log(num,content)
  		$.ajax({
  			url : "${cpath}/commentUpdate.do",
  			type :"get",
  			data :{"zw_cmt_seq":num,"zw_cmt_content":content},
  			success : reloadList,
  			
  			error : function(){alert("error");}
  		});
  		
  		
  	}
  	function updateCancel(){
  		reloadList();
  	}
  	function commDelete(num){
  		var del = confirm("댓글을 삭제하시겠습니까");
  		if(del == true){
  			$.ajax({
  	  			url : "${cpath}/commentDelete.do",
  	  			type :"get",
  	  			data :{"zw_cmt_seq":num},
  	  			success : reloadList,
  	  			
  	  			error : function(){alert("error");}
  	  		});
  		}else{
  			return false;
  		}
  		
  	}

  	function reload(){
  		
  		$('#comment').load(location.href + ' #comment');
  		console.log("reload");
  	}
  	
  	
  	
  	
  	function goInsertComment(){
  		console.log($('#content').val())
  		if(${mvo.login_id==null}){
  			alert("로그인후 이용하세요");
  		}else if($('#content').val()==''){
  			alert("댓글을 입력하세요");
  		}else{
  			var fData = $('#writeComment').serialize();
  	  		console.log(fData);
  	  		$.ajax({
  	  			url :"${cpath}/commentWrite.do",
  	  			type :"post",
  	  			data : fData,
  	  			success : reloadList,
  	  			
  	  			error : function(){alert("goInserterror");}
  	  		});
  	  		$('#writer').val("");
  	  		$('#content').val("");
  		}
  		
  	}
  
  	function reloadList(){
  		var num = ${vo.zw_seq};
  		$.ajax({
  			url : "${cpath}/commentList.do",
  			type : "get",
  			data :{"zw_seq":num},
  			dataType:"json",
  			success : function(data){
  				var comm = "";
  				$.each(data,function(intdex,obj){
  					comm+="<div>";
  					comm+="<div class='row my-2' id='cm'>";
  					comm+="<div class='col-3 m-auto'>";
  					comm+="<div class='form-selectgroup-label-content d-flex align-items-center '>";
  					comm+="<span class='avatar avatar-m avatar-rounded  me-3'";
  					comm+="style='background-image: url(./dist/img/my/sample2.jpg)'></span>";
  					comm+="<div>"
  					comm+="<div class='font-weight-medium'>"+obj.login_id+"</div>";
  					comm+='<div class="text-muted"><small>'+obj.zw_cmt_date+'</small></div>';
  					comm+='</div>';
  					comm+='</div>';
  					comm+='</div>';
					
					
					
					if(obj.login_id=="${mvo.login_id}"){
						comm+='<div class="col-7 px-0" id="cmt'+obj.zw_cmt_seq+'">'+obj.zw_cmt_content.replace("\n","<br>")+'</div>';
						comm+='<div class="col m-auto">';
						comm+='<div class="row mt-2">';
						comm+='<div class="col">';
						comm+='<span id="cmtbtn'+obj.zw_cmt_seq+'"><button type="button" class="btn btn-outline-success w-100" onclick="commUpdateForm('+obj.zw_cmt_seq+')">수정</button></span>';
                        comm+='</div><div class="col ml-1"><span id="cmtdeletebtn'+obj.zw_cmt_seq+'"><button type="button" class="btn btn-outline-danger w-100" onclick="commDelete('+obj.zw_cmt_seq+')">삭제</button></span></div></div></div>';
					}else{
						comm+='<div class="col px-0" id="cmt'+obj.zw_cmt_seq+'">'+obj.zw_cmt_content.replace("\n","<br>")+'</div>';
					}
					comm+="</div>";
					comm+="</div>";
  				});
  				$('#comment').html(comm);
  				
  				
  			},
  		error : function(){alert("reloadList error");}
  		});
  	}
  	
  	function goLike(){
  		var id = "${mvo.login_id}"
  		if(${mvo.login_id==null}){
  			alert("로그인후 이용가능 합니다.");
  			return false;
  		}else{
  			$.ajax({
  	  			url : "${cpath}/like.do",
  	  			type : "get",
  	  			data : {"zw_seq":${vo.zw_seq},"login_id":id},
  	  			success : function(data){
  	  			 	$.each(data, function(index, item){
  	  					console.log(item.likes)
  	  					$('#likes').text(item.likes);
  	  					if(item.result==0){
  	  						$('#l').attr('class','xi-heart-o');
  	  					}else{
  	  						$('#l').attr('class','xi-heart');
  	  						$('#l').css('color','red');
  	  					}
  	  				})
  	  			},
  	  			error :function(){alert("error");}
  			});	
  				
  		}
  	
  	}
  	
  	
  	</script>
  	
  	
</head>


	
<body>

  <div class="page">
    <div class="page-main">
      <jsp:include page="../../header/header.jsp" />
      <!----------------------header end--------------------->
      <div class="cover-wrap">
        <div class="container">
          <div class="cover">
            제로웨이스트
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
                  
                </h2>
              </div>
            </div>
          </div>
        </div>
        <div class="page-body">
          <div class="container-xl">
            <div class="row row-cards">
            <table class="table mb-0" id="view">
    		<tr>
    			<td class="text-muted">제목</td>
    			<Td>${vo.zw_title }</Td>
    			<td  class="text-muted">조회수</td>
    			<td>${vo.zw_cnt }</td>
    		</tr>
    		
    		<tr>
    			<td class="text-muted">작성자</td>
    			<td>${vo.login_id }</td>
    			<td  class="text-muted">작성일</td>
    			<td>${vo.zw_date}</td>
    		</tr>
    		<tr>
    			<td class="text-muted">내용</td>
    			<td colspan="3">
    			<c:if test="${vo.zw_file != ' ' }">
    			<img src="${cpath}/upload/${vo.zw_file}"><Br>
    			</c:if>
    			${fn:replace(vo.zw_content,newLineChar,"<br/>")}</td>
    			
    		</tr>
    			<Tr>
    			<td class="text-muted">첨부파일</td>
    			<td colspan="3">${vo.zw_file}</td>
    			
    		</Tr>
    		<tr>
  				
    			
    			<td colspan="4" align="right">
    			<c:if test="${vo.login_id  eq mvo.login_id}">
    				<button class="btn btn-outline-success w-5" onclick="goUpdate(${vo.zw_seq})">수정</button>
    				<button class="btn btn-outline-danger w-5" onclick="goDel(${vo.zw_seq})">삭제</button>
    			</c:if>
    			<button class="btn btn-outline-primary w-5" onclick="goList()">목록</button>
    			</td>
    		</tr>
    		
    		</table>
	    		<div class="row mt-3 mb-2">
	            <div class="col"></div>
	            <div class="col" id="likebtn" >
	            <button type="button"  onclick="return goLike()" id="likebtn2" class="btn btn-outline-info w-10">
	              <c:choose>
	                <c:when test="${likecheck eq 0 }">
	                  <i id ="l" class="xi-heart-o"></i>
	                </c:when>
	                <c:when test="${likecheck eq 1 }">
	                  <i id = "l" class="xi-heart"></i>
	                </c:when>
	              </c:choose>
	              <span id="likes">&nbsp;${likes}</span>
	              </button></div>
	            <div class="col"></div>


          </div>
    		<div class="container">
        <div class="row">
          <div class="col">
            <div class="card">

              <div class="tab-content">
                <!-- reply -->
                <div id="tab-reply" class="card tab-pane active show" role="tabpanel">
                  <div class="card-body">
                    <form id="writeComment">
                      <div class="row">
                        <div class="col-3 m-auto">
                          <div class="form-selectgroup-label-content d-flex align-items-center ">
                            <span class="avatar avatar-m avatar-rounded  me-3"
                              style="background-image: url(./dist/img/my/sample2.jpg)"></span>
                            <div>
                              <div class="font-weight-medium">${mvo.login_id }</div>
                              <div class="text-muted"><small>grade</small></div>
                            </div>
                          </div>
                        </div>
                        <div class="col-7">
                       		<input type="hidden" name="zw_seq" value="${vo.zw_seq }">
    			
	    					<input type="hidden" name="login_id" value="${mvo.login_id }">
                          <textarea class="form-control mt-3" id="content" type="text" name="zw_cmt_content" rows="3"
                            placeholder="댓글을 입력하세요!"></textarea>
                        </div>
                        <div class="col m-auto">
                          <div class="row">
                            <div class="col">
                              <button type="button" class="btn btn-primary w-100" onclick="goInsertComment()">
                                등록하기
                              </button>
                            </div>
                          </div>
                        </div>
                      </div>
                      </form>
                      <!-- <hr class="my-3"> -->
                      <div class="card mt-3" style="height: 28rem">
                        <div class="card-body card-body-scrollable card-body-scrollable-shadow">
                          <div class="divide-y" id="comment">
                            
                          </div>
                        </div>
                      </div>
                    

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
          </div>
        </div>
        <jsp:include page="../../footer/footer.jsp" />
  </div>
  </div>

</body>
</html>