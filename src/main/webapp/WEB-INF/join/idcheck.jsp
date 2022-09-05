<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--  <!-- 데이터 베이스 연결 -->
 <%@ include file="../member/dbCon.jsp" %>
<% 
String user_id= request.getParameter("user_id");
if(user_id==null){
%>

<script>
	alert("잘못된 경로의 접근")
	self.close();
</script>
<%
	return; //jsp종료
}
user_id= user_id.trim();

if(user_id.length()<4 || user_id.length()>15){
%>
<script>
	alert("잘못된 아이디 값입니다.")
	self.close();
</script>
<%
	return; //jsp종료
} --%>

<!-- sql= "select count(*) from userT where user_id='"+user_id+"' ";
PreparedStatement ps=
ResultSet rs = ps.executequery();
%>
 -->


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
	out.print("사용 가능한 아이디입니다.")
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