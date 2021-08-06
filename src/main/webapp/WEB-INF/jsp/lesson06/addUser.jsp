<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h1>회원정보 추가</h1>
		<!-- <form action="/lesson06/add_user" method="post" id="userForm">  -->
			<!-- 이름,생년,소개,주소 -->
			<input type="text" class="form-control" name="name" id="nameInput" placeholder="이름을 입력하세요">
			<input type="text" class="form-control" name="yyyymmdd" id="yyyymmddInput" placeholder="생년월일을 입력하세요">
			<textarea rows="10" class="form-control" name="introduce" id="introduceInput"></textarea>
			<input type="text" class="form-control" name="email" id="emailInput" placeholder="이메일을 입력하세요">
			<button type="submit" class="btn btn-info" id="addBtn">추가</button>
			
		<!-- </form>  -->
	</div>
	
	<script type="text/javascript">
		$(document).ready(function(){
			//
			/*
			$("#userForm").on("submit",function(){
					var name = $("#nameInput").val().trim();
					var yyyymmdd = $("#yyyymmddInput").val().trim();
					var introduce = $("#introduceInput").val().trim();
					
					if(name==null|| name==''){
						alert("이름을 입력하세요 ");
						return false;
					}
					if(yyyymmdd==null|| yyyymmdd==''){
						alert("생년월일을 입력하세요 ");
						return false;
					}
					if(introduce==null|| introduce==''){
						alert("자기소개를 입력하세요 ");
						return false;
					}
			})
			*/
			$("#addBtn").on("click",function(){
				var name = $("#nameInput").val().trim();
				var yyyymmdd = $("#yyyymmddInput").val().trim();
				var introduce = $("#introduceInput").val().trim();
				var email = $("#emailInput").val().trim();
				
				if(name==null|| name==''){
					alert("이름을 입력하세요 ");
					return false;
				}
				if(yyyymmdd==null|| yyyymmdd==''){
					alert("생년월일을 입력하세요 ");
					return false;
				}
				if(introduce==null|| introduce==''){
					alert("자기소개를 입력하세요 ");
					return false;
				}
				
				$.ajax({
					type:"POST",
					url:"/lesson06/add_user",
					data:{"name":name,"yyyymmdd":yyyymmdd,"introduce":introduce,"email":email},
					success:function(data){
						alert(data.result);
						// 리스트 페이지로 이동!!
						location.href="/lesson05/ex03";
					},
					error:function(e){
						alert("error"+e);
					}
				});

			})
		})
	</script>


</body>
</html>