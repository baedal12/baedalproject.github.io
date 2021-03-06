<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<script type="text/javascript">
function eventCon(){
	var eventName=frm.eventName.value;
	var eventImg=frm.eventImg.value;
	
	if(eventName==''){
		alert("이벤트명을 입력하세요");
		frm.eventName.focus();
		return false;
	}
	else if(eventImg==''){
		alert("이미지를 첨부하세요");
		return false;
	}else{
		return true;
	}
}
</script>
</head>
<body>
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
		<!-- 내용 -->
		<div class="content">
			<div class="inner">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
				<!-- //좌측메뉴  -->
				<div class='right_cont'>
					<p>이벤트등록폼</p>
					<form action="eventResist" method="post" name="frm" enctype="multipart/form-data" onsubmit="return eventCon()">
						<table>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>이벤트 이름</th>
								<td><input type="text" name="eventName"/></td>
							</tr>
							<tr>
								<th>이미지첨부</th>
								<td><input type="file" name="eventImg"/></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="등록" />
									<input type="button" value="취소" onclick="javascript:history.back()">
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
		<!-- 내용 -->
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
</html>