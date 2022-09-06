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
<<<<<<< HEAD
  <title>FOR THE URTH
  </title>
  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   
=======
  <title>empty
  </title>
  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="${cpath }/js/summernote/summernote-lite.js"></script>
<script src="${cpath }/js/summernote/lang/summernote-ko-KR.js"></script>
>>>>>>> a9aa297390baeee79bfc3fd88db4b4841527f1c4

<link rel="stylesheet" href="${cpath }/css/summernote/summernote-lite.css">

<!-- include summernote css/js-->

  <!-- CSS files -->
  <link href="${cpath}/css/tabler.css" rel="stylesheet" />
  <link href="${cpath}/css/tabler-vendors.css" rel="stylesheet" />

  <!-- Libs JS -->
	<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  <!-- Tabler Core -->
  <script src="${cpath}/js/tabler.min.js" defer></script>

  

  <!-- my -->
  <link rel="stylesheet" href="${cpath}/css/my/sub.css">
<<<<<<< HEAD
    <link rel="stylesheet" href="${cpath }/css/my/dy.css">
      <link rel="stylesheet" href="${cpath }/css/my/reply.css">
    
  

=======
<title>Bootstrap Example</title>
>>>>>>> a9aa297390baeee79bfc3fd88db4b4841527f1c4
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" viewport-fit=cover">


<script>
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
	function checkForm(){
<<<<<<< HEAD
		var text = $('#title').val();
		
		console.log(text)
		
		var content = $('#tinymce-default').val();
		if(text == ""){
=======
		change.innerHTML="<input type ="
		var title = $('#title').val();
		var content = $('#tinymce-default').val();
		if(title == ""){
>>>>>>> a9aa297390baeee79bfc3fd88db4b4841527f1c4
			alert("제목을 입력하세요")
			$('#title').focus();
			return false
		}
		
		if(content == ""){
			alert("내용을 입력하세요")
			$('#tinymce-default').focus();
			return false
		}
		
<<<<<<< HEAD
		
=======
>>>>>>> a9aa297390baeee79bfc3fd88db4b4841527f1c4
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
<<<<<<< HEAD
            제로웨이스트
=======
            지도
>>>>>>> a9aa297390baeee79bfc3fd88db4b4841527f1c4
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
<<<<<<< HEAD
                <a href="${cpath }/zwlist.do">제로웨이스트/비건</a> </h2>
                  글작성
=======
                  Maps
>>>>>>> a9aa297390baeee79bfc3fd88db4b4841527f1c4
                </h2>
              </div>
            </div>
          </div>
        </div>
        <div class="page-body">
          <div class="container-xl">
            <div class="row row-cards">
            <form action="${cpath }/boardWrite.do" method="post" name="writeForm" enctype="multipart/form-data" accept-charset="UTF-8" onsubmit="return checkForm()">
    		<table class="table table-bordered">
    			<tr>
    				<input type="hidden" name="writer" value="${mvo.login_id }">
<<<<<<< HEAD
    				<td class="bal">
                <div>
                      <select type="text" class="form-select " name ="headval" placeholder="Select" id="headline-tags" value="">
                        <option value="제로웨이스트">제로웨이스트</option>
                        <option value="비건">비건</option>
                        
                      </select>
                      
                    </div>
                </td>
=======
>>>>>>> a9aa297390baeee79bfc3fd88db4b4841527f1c4
    				<td><input type="text" id="title" name="title" class="form-control"/></td>
    			</tr>
    			<tr>
    				
<<<<<<< HEAD
    				<td colspan="2"><textarea  rows="10" name="content" class="form-control" id="tinymce-default"></textarea></td>
    			</tr>
    			<tr>
    				<Td colspan="2"><input type="file" name = "filename"></Td>
    			</tr>
    			<tr>
    				<Td colspan="2" align="right">
    				<button type="submit" class="btn btn-outline-success w-5">등록</button>
    				<button type="button" class ="btn btn-outline-danger w-5" onclick="location.href='${cpath }/zwlist.do'">취소</button>
=======
    				<td><textarea  rows="10" name="content" class="form-control" id="tinymce-default"></textarea></td>
    			</tr>
    			<tr>
    				<Td><input type="file" name = "filename1"></Td>
    			</tr>
    			<tr>
    				<Td colspan="2">
    				<button type="submit" class="btn btn-success btn-sm">등록</button>
    				<button type="button" class ="btn btn-warning btn-sm" onclick="location.href='${cpath }/zwlist.do'">취소</button>
>>>>>>> a9aa297390baeee79bfc3fd88db4b4841527f1c4
    				</Td>
    			</tr>
    		</table>
    	</form>
          </div>
        </div>
        <jsp:include page="../../footer/footer.jsp" />
  </div>
  </div>

</body>
</html>