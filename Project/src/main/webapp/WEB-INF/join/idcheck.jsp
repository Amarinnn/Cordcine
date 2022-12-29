<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />


 user_id=user_id.trim();
 if(user_id.length)
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#div1{
	font-size:14px;
	font-weight:bold;
	width:100%;
	height:190px;
	background-color:yellow;
	vertical-align:middle;
	line-height:2.0;
}
</style>
</head>
<body>
<div id="div1">
<br><br>
<%
if(${cnt}==0){
	out.print("사용 가능한 아이디입니다.");
%>
<script>
	opener.document.frm.chk.value="1"; //opener 부모창
</script>
<%
}else{
	out.print("이미 사용중인 아이디입니다.");
%>
<script>
	opener.document.frm.chk.value="0"; 
	</script>
<%
}
%>
<br><br>
<button type="button" onclick="self.close()">닫기</button>
</div>
</body>
</html>