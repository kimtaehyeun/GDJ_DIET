<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 등록</title>
<c:import url="../template/common_css.jsp"></c:import>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=IBM+Plex+Sans+KR:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">

</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container-fluid">
	<div class="row justify-content-center">
		<h1 class="col-md-7 my-5 text-center">온라인 스터디 등록</h1>
	</div>	
	
	<div class="row justify-content-center">
		<form class="col-md-7" action="./studyAdd" method="post" enctype="multipart/form-data">
			
			<div class="mb-3">
				<label for="studyName" class="form-label">스터디 이름</label> 
				<input type="text" name="studyName" class="form-control" id="studyName" placeholder="온라인 스터디 입력">
			</div>
	
			<div class="mb-3">
				<label for="studyCost" class="form-label">스터디 가격</label>
				<input type="text" name="studyCost" class="form-control" id="studyCost" placeholder="스터디 가격 입력">
			</div>
			
			<div class="mb-3">
				<label for="studyStartPeriod" class="form-label">스터디 시작일</label>
			<input type="date" name="studyStartPeriod" id="studyStartPeriod">
			</div>
			
			<div class="mb-3">
				<label for="studyEndPeriod" class="form-label">스터디 종료일</label>
			<input type="date" name="studyEndPeriod" id="studyEndPeriod">
			</div>
			
			<div class="mb-3">
				<label for="studyStock" class="form-label">스터디 재고</label>
				<input type="text" name="studyStock" class="form-control" id="studyStock" placeholder="스터디 재고 입력">
			</div>
			
			<div id="fileList">
				<div class="input-group mb-3", id="f'+idx+'">
					<input type="file" class="form-control" name="addFiles">
					<button type="button" class="btn btn-outline-danger dels">X</button>
				</div>
			</div>
		
			<div class="mb-3 my-5">
				<button class="btn btn-outline-primary" type="submit">글쓰기</button> 
			</div>
		</form>
	</div>
</div>
	<script>
	$("#fileList").on("click",".dels",function(e){
	    // let id = $(this).attr('data-dels-id');
	    // $("#"+id).remove();
	    $(this).parent().remove();
	})
	</script>	
	<c:import url="../template/common_js.jsp"></c:import>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>