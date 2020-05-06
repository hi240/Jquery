<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    
    String userId = request.getParameter("userId");
    String userPass = request.getParameter("userPass");
    String userPassCheck = request.getParameter("userPassCheck");
    String userEmail = request.getParameter("userEmail");
    String userPhone = request.getParameter("userPhone");
    String userSsn1 = request.getParameter("userSsn1");
    String userSsn2 = request.getParameter("userSsn2");
    String userZipCode = request.getParameter("userZipCode");
    String userAddr1 = request.getParameter("userAddr1");
    String userAddr2 = request.getParameter("userAddr2");
    String[] hobby = request.getParameterValues("hobby");
    String gender[] = request.getParameterValues("gender"); 
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원정보입니다<br>
	ID입력값 : <%= userId%><br>
	성별 : 
	PWD입력값 : <%= userPass%><br>
	Email입력값 : <%= userEmail%><br>
			성별 :<%= gender[0] %><br>
	핸드폰입력값 : <%= userPhone%><br>
	주민번호: <%= userSsn1%> - <%= userSsn2 %><br>
	우편번호: <%= userZipCode %><br>
	
	당신의 취미는 : <br>
	
	<%
		for(String str : hobby){
			%>
			 <%= str	 %> <br>	
			<%//섞여잇는 코드 = 스파게티 코드
		}
	
	%>
</body>
</html>