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
  <title>FOR THE URTH
  </title>
  <!-- CSS files -->
  <link href="${cpath}/css/tabler.css" rel="stylesheet" />
  <link href="${cpath}/css/tabler-vendors.css" rel="stylesheet" />

  <!-- Libs JS -->
	<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

  <!-- Tabler Core -->
  <script src="${cpath}/js/tabler.min.js" defer></script>

  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2224da2e91e9de7689142f9c3f2f1635&libraries=services"></script>

  <!-- my -->
  <link rel="stylesheet" href="${cpath}/css/my/sub.css">
  <link rel="stylesheet" href="${cpath }/css/my/dy.css">
  <link rel="stylesheet" href="${cpath }/css/my/reply.css">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" viewport-fit=cover">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function(){
	var val= '${vo.zw_headline}';
	$("#headline-tags").val(val).prop("selected",true);
})
	document.addEventListener("DOMContentLoaded", function () {
	    tinyMCE.init({
	      selector: '#tinymce-default',
	      height: 300,
	      menubar: false,
	      statusbar: false,
	      plugins: [
	        'advlist autolink lists link image charmap print preview anchor',
	        'searchreplace visualblocks code fullscreen',
	        'insertdatetime media table paste code help wordcount'
	      ],
	      toolbar: 'undo redo | formatselect | ' +
	        'bold italic backcolor | alignleft aligncenter ' +
	        'alignright alignjustify | bullist numlist outdent indent | ' +
	        'removeformat',
	      content_style: 'body { font-family: -apple-system, BlinkMacSystemFont, San Francisco, Segoe UI, Roboto, Helvetica Neue, sans-serif; font-size: 14px; -webkit-font-smoothing: antialiased; }'
	    	});
	 	 })
	function fileDelete(num,file){
		$.ajax({
		url : "${cpath}/fileDelete.do",
		type : "post",
		data : {"zw_seq":num,"file":file},
		success : function(){
			$('#change').html("");
		},
		error : function(){alert("Error");}
		});
	}
	
	function check(){
		var title = $('#zw_title').val()
		
		var content = $('#tinymce-default').val();
		console.log(content);
		if(title == ""){
			alert("제목을 입력하세요");
			return false
		}else if(content == ""){
			alert("내용을 입력하세요");
			return false
		}
		var del = confirm("수정하시겠습니까");
		if(del == true){ return true}
		else{return false}
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
                <a href="${cpath }/zwlist.do">제로웨이스트/비건</a> </h2>
              </div>
            </div>
          </div>
        </div>
        <div class="page-body">
          <div class="container-xl">
            <div class="row row-cards">
            <div class="panel-body">
    	<form action="${cpath }/boardUpdate.do" method="post" enctype="multipart/form-data" onsubmit="return check()">
    		
    		<table class="table table-bordered">
    			<input type ="hidden" name ="login_id" value="${mvo.login_id }"/>
    			<input type="hidden" name ="zw_seq" value="${vo.zw_seq }"/>
    			<tr>
    				<td class>말머리/제목</td>
    				<td class="bal">
                	<div>
                      <select type="text" class="form-select " name ="headval" placeholder="Select" id="headline-tags" value="">
                        <option value="제로웨이스트">제로웨이스트</option>
                        <option value="비건">비건</option>
                        
                      </select>
                      
                    </div>
                </td>
    				<td ><input type="text" name="zw_title" id="zw_title" class="form-control" value="${vo.zw_title }"></td>
    			</tr>
    			<tr>
    				<td>내용</td>
    				<td colspan="2"><textarea rows="10" name="zw_content" class="form-control" id="tinymce-default">${vo.zw_content }</textarea></td>
    			</tr>
    			<tr>
    				<td>첨부파일</td>
    				<td colspan="2"><div id="change">${vo.zw_file }<c:if test="${vo.zw_file != ' ' }"><img id="upimg" src="${cpath}/upload/${vo.zw_file}">
    			<button type="button" class ="btn btn-sm btn-warning" onclick ="fileDelete(${vo.zw_seq },'${vo.zw_file }')">X</button>
    			</c:if></div></div><input type="file" name ="filename" ></td>
    				
    			</tr>
    			<tr>
    				<td colspan="3" align="right">
    					<button type="submit" class="btn btn-outline-success w-5" >수정 </button>
    					<button type="button" class="btn btn-outline-danger w-5" onclick="location.href='${cpath }/boardView.do?num=${vo.zw_seq }'">취소 </button>
    					<button type="button" class="btn btn-outline-primary w-5" onclick="location.href='${cpath }/zwlist.do'">리스트</button>
    				</td>
    			</tr>
    		</table>
    	</form>
     </div>
          </div>
        </div>
        <jsp:include page="../../footer/footer.jsp" />
  </div>
  </div>
  </div>
  </div>


</body>
</html>