<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.activity_category.model.*"%>
<%@ page import="com.activity.model.*"%>
<%@ page import="com.activity_photo.model.*"%>

<%
	ActivityCategoryService activityCategoryService = new ActivityCategoryService();
    List<ActivityCategoryVO> list1 = activityCategoryService.getAll();
    pageContext.setAttribute("list1",list1);

	ActivityService activityService = new ActivityService();
    List<ActivityVO> list2 = activityService.getActivitiesWhereStateIsOne();
    pageContext.setAttribute("list2",list2);
    
%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Document</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
		integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/view_activity_page.css" />
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<style>
	</style>
</head>

<body>
	<header class="header">
		<nav>
			<a href="./view_activity_page.html" class="a">
				<img class="nav-logo" src="${pageContext.request.contextPath}/images/common/logo.png" alt="">
			</a>
			<table class="weather-div">
				<tbody class="weather-tbody">
					<tr class="weather-tr">
					</tr>
					<tr class="weather-tr-1">
					</tr>
				</tbody>
			</table>
			<div class="icon"></div>
			<img class="nav-top-img" src="${pageContext.request.contextPath}/images/common/wheather.png" alt="">
			<a href="" class="text text-decoration-none text-white">會員登入/註冊</a>
			<a href="" class="nav-top-a">
				<img class="nav-top-img-1" src="${pageContext.request.contextPath}/images/common/shopping-cart.png" alt="">
			</a>
			<div class="nav-top-bot">
				<ul class="nav-ul-bot">
					<li class="nav-li">
						<a href="" class="text-decoration-none">
							<div class="nav-left-div">
								<p>首頁</p>
							</div>
						</a>
					</li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li">
						<a href="" class="text-decoration-none">
							<div class="nav-left-div">
								<p>最新消息</p>
							</div>
						</a>
					</li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li">
						<a href="" class="text-decoration-none">
							<div class="nav-left-div">
								<p>房型介紹</p>
							</div>
						</a>
					</li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li">
						<a href="" class="text-decoration-none">
							<div class="nav-left-div">
								<p>關於我們</p>
							</div>
						</a>
					</li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li">
						<a href="${pageContext.request.contextPath}/front_end/activity/view_activity_page.jsp" class="text-decoration-none">
							<div class="nav-left-div">
								<p>活動商城</p>
							</div>
						</a>
					</li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li">
						<a href="" class="text-decoration-none">
							<div class="nav-left-div">
								<p>伴手禮商城</p>
							</div>
						</a>
					</li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li">
						<a href="" class="text-decoration-none">
							<div class="nav-left-div">
								<p>媒體報導</p>
							</div>
						</a>
					</li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li">
						<a href="" class="text-decoration-none">
							<div class="nav-left-div">
								<p>會員中心</p>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</nav>
	</header>

	<main>
		<!-- ------------------------------- carouselIndicators ------------------------------- -->

		<div class="container">
			<div id="carouselIndicators" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
					<li data-target="#carouselIndicators" data-slide-to="1"></li>
					<li data-target="#carouselIndicators" data-slide-to="2"></li>
				</ol>

				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="${pageContext.request.contextPath}/images/activity1.jpg" class="d-block w-100 rounded" alt="...">
						<div class="carousel-caption d-none d-md-block rounded-pill">
							<h5>異國文化</h5>
							<p>不論是禮貌周到的日本文化、經典英倫的紳士風範，或是豪放自由的美西風格，身在台灣寶地的您皆可深入體驗感受，拓展國際視野，一同共赴異國文化交流的盛會。</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="${pageContext.request.contextPath}/images/activity3.jpg" class="d-block w-100 rounded" alt="...">
						<div class="carousel-caption d-none d-md-block rounded-pill">
							<h5>在地文化</h5>
							<p>臺灣因地理位置的特殊性，除了在地的原住民文化外，再加上四百年移民社會的背景，融合多國魅力與特色，讓臺灣文化有多面向的呈現。</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="${pageContext.request.contextPath}/images/activity5.jpg" class="d-block w-100 rounded" alt="...">
						<div class="carousel-caption d-none d-md-block rounded-pill">
							<h5>節慶活動</h5>
							<p>一年365天，每天皆有不同的歷史意義，本飯店精選深具代表性的節慶，讓各位貴賓感受獨具特色的節慶活動。</p>
						</div>
					</div>
				</div>

				<a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
				<br>
			</div>
		</div>

		<!-- ------------------------------- select section(待補) ------------------------------- -->

<!-- 		<div class="container"> -->
<!-- 			<div class="row justify-content-center align-items-center"> -->
<!-- 				<form class="form-inline my-2 my-lg-0" -->
<%-- 						METHOD="post" ACTION="<%=request.getContextPath()%>/activity/ActivityServlet.do" name="form1"> --%>
<!-- 					<div class="form-row"> -->
<!-- 						<div class="col-sm-auto form-group"> -->
<!-- 							<label for="selectCategory">選擇活動類別：</label> -->
<!-- 								<select class="form-control" id="selectCategory" name="activity_category_ID"> -->
<!-- 									<option value="">全部活動</option> -->
<%-- 									<c:forEach var="activityCategoryVO" items="${list1}" > 							 --%>
<%-- 									<option value="${activityCategoryVO.activity_category_ID}">${activityCategoryVO.activity_category_name}</option> --%>
<%-- 									</c:forEach> --%>
<!-- 								</select> -->
<!-- 						</div> -->
	
<!-- 						<div class="col-sm-auto form-group"> -->
<!-- 							<label for="selectActivity">搜尋活動名稱：</label> -->
<!-- 								<input class="form-control mr-sm-2" type="search" placeholder="請輸入活動名稱" aria-label="Search" -->
<!-- 									id="selectActivity" name="activity_name" value=""> -->
<!-- 						</div> -->
						
<!-- 						<div class="col-sm-auto form-group"> -->
<!-- 							<label for="selectDateStart">選擇開始日期：</label> -->
<!-- 								<input type="date" class="form-control" id="selectDateStart" name="activity_start" -->
<!-- 									value="selectDateStart" onkeydown="return false"> -->
<!-- 						</div> -->

<!-- 						<div class="col-sm-auto form-group"> -->
<!-- 							<label for="selectDateEnd">選擇結束日期：</label> -->
<!-- 								<input type="date" class="form-control" id="selectDateEnd" name="activity_end" -->
<!-- 									value="selectDateEnd" onkeydown="return false"> -->
<!-- 						</div> -->
						
<!-- 						<div class="col-sm-auto form-group"> -->
<!-- 							<input type="hidden" name="action" value="listActivitiesByCompositeQuery"> -->
<!-- 							<button class="btn btn-outline-secondary my-2 my-sm-0" type="submit" value="送出">搜尋</button> -->
<!-- 						</div> -->
<!-- 					</div> -->
					
<!-- 				</form> -->
<!-- 			</div> -->
<!-- 		</div> -->

		<!-- ------------------------------- activity section ------------------------------- -->

		<div class="container">
			<div class="row">
				<div class="col">
					<hr>
					<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" id="pills-all-tab" data-toggle="pill" href="#pills-all"
								role="tab" aria-controls="pills-all" aria-selected="true">全部活動</a>
						</li>
					</ul>
					<hr>
					<div class="tab-content" id="pills-tabContent">
						<div class="tab-pane fade show active" id="pills-all" role="tabpanel"
							aria-labelledby="pills-all-tab">
							<div class="container">
								<div class="row">
								
								<c:forEach var="activityVO" items="${list2}">
									
									<div class="col-sm-4">
										<a class="card-link" href="#">
											<div class="card">
												<div class="card-head">
													<img src="${pageContext.request.contextPath}/activity_photo/ActivityPhotoReader.do?activity_photo_ID=${activityVO.activity_ID}" />
												</div>
												<div class="card-body">
													<h2 class="card-title">${activityVO.activity_name}</h2>
													<div class="card-description">
														${activityVO.activity_description}
													</div>
												</div>
												<div class="card-footer">
													<div>
														<img src="${pageContext.request.contextPath}/images/icons/calendar.svg" alt="">
														<div>
															<span>${activityVO.activity_start}</span> ~ <span>${activityVO.activity_end}</span>
														</div>
													</div>
													<div>
														<img src="${pageContext.request.contextPath}/images/icons/wallet.svg" alt="">
														<div>
															NT$ <span>${activityVO.activity_price}</span>
														</div>
													</div>
												</div>

											</div>
										</a>
									</div>
								
								</c:forEach>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</main>


	<footer class="footer">
		<div>
			<p>Copyright 2000 , CloudWind HotSpring , All Rights Reserved. Designed by </p>
			<p>DREAMCENTER</p>
		</div>
	</footer>

	<a href=""><img class="textinfo" src="${pageContext.request.contextPath}/images/chat.png" alt=""></a>

	<script src="${pageContext.request.contextPath}/js/weather.js"></script>
	<script src="${pageContext.request.contextPath}/js/hidden.js"></script>
	<script src="${pageContext.request.contextPath}/js/date.js"></script>
	<script src="${pageContext.request.contextPath}/js/icon.js"></script>
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
		integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
		crossorigin="anonymous"></script>
</body>

</html>