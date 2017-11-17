<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- foreach태그를 이용해 사용자가 원하는 시작과 끝을 포함한 사이의 구구단까지 출력하시오 -->

	<c:if test = "${param.num1>=param.num2}">시작단이 끝단보다 작아야 합니다. 다시 입력해주세요.</c:if>
	
	<c:if test = "${param.num1<param.num2}">
	<c:forEach begin = "${param.num1}" end = "${param.num2}" var = "i">
		<c:forEach begin = "1" end = "9" var = "j">
			${i} * ${j} = ${i*j}
			<br />
		</c:forEach>
		<br />
	</c:forEach>
	</c:if>
</body>
</html>