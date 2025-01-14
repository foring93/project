<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- Header -->
<jsp:include page="../mainpage/header.jsp" />
<!-- Header end -->

<style>
.forgroupname {
	list-style: none;
	padding-top: 20px;
}

.forgroupnamewidth {
	width: 29%;
	display: inline-block;
}

.forgroupnamewidth1 {
	width: 69%;
	display: inline-block;
	position: relative;
	top: 7px;
}

.forgroupnameleft {
	float: left;
	list-style: none;
	margin-right: 20px;
}

.forlogintitle {
	margin-bottom: 10px !important;
}

.forSubmitBtnDiv {
	margin-top: 0px !important;
	margin-bottom: 5px;
	width:100%;
}

.forLoginBtn {
	padding-left: 25px !important;
	padding-right: 25px !important;
	margin-bottom:10px;
	width: 90%;
}

.forMemberCountBtnOne {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnTwo {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnThree {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnFour {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnFive {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnSix {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnSeven {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forJoinBtn {
	margin-top: 0px !important;
	padding: 5px !important;
	float: right;
	font-size: 14px !important;
}

.forRegisterBtn {
	padding-left: 20px !important;
	padding-right: 20px !important;
	margin-left: 10%;
}

.forRememberIdDiv {
	margin-bottom: 0px !important;
	margin-top: 5px !important;
}

.forcheckbox {
	margin-top: 3px;
}

.calendarDiv {
	text-align: center;
	width: 95%;
	margin: 0 auto;
}

.calendarTable {
	width: 80%;
	margin: 0 auto;
}

.calendarBtn {
	cursor: pointer;
}

.calendarCell {
	cursor: pointer;
}

.calendarDiv td {
	border-radius: 13px;
}

.calendarCellSelected {
	background-color: #4F93CE;
	color: white !important;
}

.calendarCellMy {
	background-color: black;
	color: white !important;
}

.scheduleDiv {
	width: 80%;
	margin: 0 auto;
}

.scheduleUl {
	padding-left: 0px !important;
}

.card-header-bgcolor {
	background: white none repeat scroll 0 0 !important;
}

.schedule-span {
	margin-bottom: 7px;
	width: 70% !important;
}

.schedule-span1 {
	width: 35% !important;
}

.nearby-contct>li {
	padding: 15 px !important;
}

.paddingZero[aria-expanded="true"] {
	background: #088dcd;
	color: #fff;
	text-decoration: none;
}

.groupMember {
	display: inline-block;
	list-style: outside none none;
	margin-bottom: 0;
	padding: 0 25px 20px;
	width: 100%;
	max-height: 300px !important;
}

.groupMember li {
	display: inline-block;
	margin-bottom: 20px;
	position: relative;
	width: 100%;
}

.your-page-groupList li {
	margin-bottom: 3px !important;
}

.your-page-groupListDiv {
	min-height: 273px;
}

.forDeleteMargin {
	margin-right: 2%
}

.addScheduleBtn {
	float: right;
	padding-left: 13px !important;
	padding-right: 13px !important;
}

.search-text-field {
	margin-left: 3%;
}

.search-text-free {
	background: #f5f5f5 none repeat scroll 0 0;
	border: 1px solid #dadede;
	border-radius: 30px;
	color: #7b7b7b;
	font-size: 15px;
	padding: 7px 20px;
	width: 70%;
	margin-left: 2%;
	margin-bottom: 10px;
	margin-top: 3px;
}

.search-text-btn {
	margin-left: 2%;
	padding-left: 20px;
	padding-right: 20px;
}

.row-pagination {
	padding-top: 30px;
}

.center-pagination {
	justify-content: center;
}

.inline-flex {
	display: inline-flex;
}

.text-align-center {
	text-align: center;
}

.search-condition {
	margin-right: 10px;
}

.margin-Bottom{
	margin-bottom: 0px !important;
}

.min-width-h4 {
	margin-bottom: 0px !important;
}

.height-for-white {
	height: 70px !important;
}

.calendarBtn{
cursor:pointer}

#calendar td{
cursor:pointer
}
.katalkbtn{
background-color: #423630 !important;
color: white !important;
}

.katalkbtn:hover{
background-color: #594941 !important;
}

.katalkbtnw{
color: #423630 !important;
}

.logintitle{
font-size:14px;
margin-top:10px;
}

.logintitlehr{
margin-top:5px;
margin-bottom:2px;
width:100%;
}

.logincenter{
text-align:center;
}

.logindiv{
margin-top:10px;
}

.loginleft{
float:left;
font-size:14px;
margin-left:14px;
}

.loginright{
float:right;
font-size:14px;
margin-right:14px;
}
.leftrightwidth{
padding-left: 0px !important;
padding-right: 0px !important;
width:90%;
}

.center-pagination {
	justify-content: center;
	margin-bottom: 0px;
}
.widthpagination{
width:18% !important;
}
.imground{
border-radius:16px;
margin-right:10px;
}
.hrmargin{
margin-top:5px !important;
margin-bottom:5px !important;
}

.leftpadding{
padding-left:20px !important;
padding-right:20px !important;
}

.commentmargin {
    margin-right: 7px !important;
}
.groupname{
position:relative;
top:-9px;
}

.figure-myimg{
	width:80px !important;
	max-width: 100px !important;
	margin-left: 20px;
}

.figure-myimg1{
	width:100%;
	
}

.page-metaclass{
	margin-left: 20px;
    width: 55% !important;
}

.forDeleteMargin {
	margin-right: 2%
}

.addScheduleBtn {
	float: right;
	padding-left: 13px !important;
	padding-right: 13px !important;
}

.search-text-field {
	margin-left: 3%;
}

.search-text-free {
	background: #f5f5f5 none repeat scroll 0 0;
	border: 1px solid #dadede;
	border-radius: 30px;
	color: #7b7b7b;
	font-size: 15px;
	padding: 7px 20px;
	width: 70%;
	margin-left: 2%;
	margin-bottom: 10px;
	margin-top: 3px;
}

.search-text-btn {
	margin-left: 2%;
	padding-left: 20px;
	padding-right: 20px;
}

.row-pagination {
	padding-top: 30px;
}

.center-pagination {
	justify-content: center;
}

.inline-flex {
	display: inline-flex;
}

.text-align-center {
	text-align: center;
}

.search-condition {
	margin-right: 10px;
}

.margin-Bottom{
	margin-bottom: 0px !important;
}

.halfmargin {
	margin-left: 2.2%;
}

.moneyDiv {
	display: none;
}

.btn-center{
	margin-left:40%;
}

.margintopZero{
	margin-top:0px !important;
}
.floatrightsm{
float: right !important;
color: orange;
}

.width100{
width:100% !important;
}

.orange{
color: orange;
}
</style>

<!-- 그룹 페이지 상단 -->
<jsp:include page="group_header.jsp" />
<!-- 그룹 페이지 상단 -->
<!-- 그룹 페이지 메인 -->
<section>
	<div class="gap gray-bg">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="row" id="page-contents">

						<!-- 그룹 페이지 위젯 왼쪽 -->
						<div class="col-lg-3">
							<aside class="sidebar static">
								<!-- 그룹 게시판 위젯 -->
								<jsp:include page="group_leftWidget.jsp" />
							</aside>
						</div>
						<!-- 그룹 페이지 위젯 왼쪽  -->

						<!-- 그룹 페이지 위젯 중간 -->
						<div class="col-lg-6">
							<!-- 그룹장 간단 그룹 소개 -->
							<div class="central-meta item">
								<div class="groups">
											<span><i class="fa fa-users"></i>모임 일정 관리</span>
											<button type="button" class="mtr-btn addScheduleBtn">
												<span>정모 추가하기</span>
											</button>
										</div>
										<ul class="nearby-contct">
											<!-- ======================================================================= -->
										<c:if test="${not empty groupmeetinglist }">
										<c:forEach var="gmtl" items="${postlist }">
										<c:choose>
											<c:when test="${gmtl.rnum+0 ==1}">
												<c:set var="l" value="One" />
												<c:set var="n" value="1" />
											</c:when>
											<c:when test="${gmtl.rnum+0 ==2}">
												<c:set var="l" value="Two" />
												<c:set var="n" value="2" />
											</c:when>
											<c:when test="${gmtl.rnum+0 ==3}">
												<c:set var="l" value="Three" />
												<c:set var="n" value="3" />
											</c:when>
											<c:when test="${gmtl.rnum+0 ==4}">
												<c:set var="l" value="Four" />
												<c:set var="n" value="4" />
											</c:when>
											<c:when test="${gmtl.rnum+0 ==5}">
												<c:set var="l" value="Five" />
												<c:set var="n" value="5" />
											</c:when>
											<c:when test="${gmtl.rnum+0 ==6}">
												<c:set var="l" value="Six" />
												<c:set var="n" value="6" />
											</c:when>
											<c:otherwise>
												<c:set var="l" value="Seven" />
												<c:set var="n" value="7" />
											</c:otherwise>
										</c:choose>
											<li>
												<div class="card">
													<div class="card-header card-header-bgcolor"
														id="heading${l}">
														<div class="nearly-pepls">
															<figure>
																<a href="time-line.html" title=""><img
																	src="resources/images/resources/group1.jpg" alt=""></a>
															</figure>
															<div class="pepl-info">
																<h4 class="min-width-h4 width100">
																	<a href="time-line.html" title="">${gmtl.postTitle}</a>
																	<c:if test="${gmtl.cmoneytype=='M'}">
																	<span class="floatrightsm">회비입금순 신청</span>
																	</c:if>
																	<c:if test="${gmtl.cmoneytype=='S'}">
																	<span class="floatrightsm">선착순 참여</span>
																	</c:if>
																</h4>
																<br> <br> <span class="schedule-span">
																<c:if test="${gmtl.boardmap=='y'}">
															<a href="schedulemaps.net?groupkey=${groupkey }&postkey=${gmtl.postKey}">장소:
																${gmtl.location} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="orange"><i class="fas fa-map-marked-alt"></i> 모임장소 및 경로(코스)가 링크되어 있습니다!</span></a>
															</c:if>	
															<c:if test="${gmtl.boardmap=='n'}">
															장소: ${gmtl.location}
															</c:if>	
																</span>
																
																<button type="button" class="mtr-btn forJoinBtn delschedulebtn">
																	<span>삭제하기</span>
																</button>
																<input type="hidden" id="postkey${n}"
																value="${gmtl.postKey }">
																<button type="button"
																	class="mtr-btn forJoinBtn forDeleteMargin modschedulebtn">
																	<span>수정하기</span>
																</button>
																
																<input type="hidden" id="postkey${n}"
																value="${gmtl.postKey }"> <input type="hidden"
																value="${n}"> <br> <span
																class="schedule-span1">일시: ${gmtl.cstartdate}</span><br>
															<span class="schedule-span1">회비: ${gmtl.cmoney}</span>
															<button type="button"
																class="mtr-btn forMemberCountBtn${l}"
																data-toggle="collapse" data-target="#collapse${l}"
																aria-expanded="true" aria-controls="collapse${l}">
																<span>참여한 사람들 <span class="currentperson${n}">${gmtl.currentperson }</span>
																	/ ${gmtl.maxperson}&nbsp;&nbsp;&nbsp;<i
																	class="fas fa-arrow-down i-change${l}"></i>
																</span>
															</button>
															<input type="hidden" value="${gmtl.postKey }"> <input
																type="hidden" value="${n}">
																<em class="float-right">${gmtl.postDate }</em>

															</div>
														</div>
													</div>
													<div id="collapse${l}" class="collapse"
													aria-labelledby="heading${l}" data-parent="#accordion">
													<div class="card-body">
														<div class="widget friend-list">
															<div id="searchDir${n}"></div>
															<ul id="people-list${n}"
																class="friendz-list people-list groupMember">
																<c:forEach var="gml" items="${groupmemberlist}">
																	<li>
																		<figure>
																			<img
																				src="resources/images/resources/friend-avatar.jpg"
																				alt="">
																		</figure>
																		<div class="friendz-meta">
																			<a href="time-line.html"></a>${gml.groupnickname } <i
																				class="__cf_email__">&nbsp;</i>
																		</div>
																	</li>
																</c:forEach>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</li>
									</c:forEach>
									</c:if>
									<c:if test="${empty groupmeetinglist }">
										<div class="text-align-center">
										<span>일정을 추가해 주세요</span>
										</div>
									</c:if>
								</ul>
											<!-- ======================================================================= -->
										<div class="row row-pagination">
											<div class="col">
												<ul class="pagination pagination-sm center-pagination"
													id="pempty">
													<c:if test="${page <= 1 }">
								<li class="page-item"><a class="page-link" href="#">이전&nbsp;</a>
								</li>
							</c:if>
							
							<c:if test="${page > 1 }">
								<li class="page-item"><a
									href="groupin_group_admin_scheduleList.net?page=${page-1 }&groupkey=${groupkey}" class="page-link">이전</a>&nbsp;
								</li>
							</c:if>
							<c:forEach var="a" begin="${startpage }" end="${endpage }">
								<c:if test="${a == page }">
									<li class="page-item"><a class="page-link" href="#">${a }</a>
									</li>
								</c:if>
								<c:if test="${a != page }">
									<li class="page-item"><a href="groupin_group_admin_scheduleList.net?page=${a }&groupkey=${groupkey}"
										class="page-link">${a }</a></li>
								</c:if>
							</c:forEach>

							<c:if test="${page >= maxpage }">
								<li class="page-item"><a class="page-link" href="#">&nbsp;다음</a>
								</li>
							</c:if>
							<c:if test="${page < maxpage }">
								<li class="page-item"><a
									href="groupin_group_admin_scheduleList.net?page=${page+1 }&groupkey=${groupkey}" class="page-link">&nbsp;다음</a>
								</li>
							</c:if>

												</ul>
											</div>
										</div>
										<!-- 페이지네이션 -->

										<!--  <div class="center-block" id="ajaxdiv">
				
										

										<div class="text-align-center">
											<form>
												<div class="checkbox inline-flex margin-Bottom">
													<label class="search-condition"> <input
														type="checkbox" id="moneyCheck"><i
														class="check-box forcheckbox"></i>제목
													</label> <label class="search-condition"> <input
														type="checkbox" id="moneyCheck"><i
														class="check-box forcheckbox"></i>내용
													</label> <label class="search-condition"> <input
														type="checkbox" id="moneyCheck"><i
														class="check-box forcheckbox"></i>제목+내용
													</label> <label class="search-condition"> <input
														type="checkbox" id="moneyCheck"><i
														class="check-box forcheckbox"></i>작성자
													</label>
												</div>
												<br> <input type="text" class="search-text-free"
													placeholder="검색어를 입력하세요.">
												<button class="btn btn-primary search-text-btn"
													type="submit" id="search">검색</button>
											</form>
										</div>
							
							</div>-->
</div>

						</div>
						<!-- 그룹 페이지 위젯 중간 -->

						<!-- 그룹 페이지 위젯 오른쪽 -->
						<div class="col-lg-3">
							<aside class="sidebar static">
								<jsp:include page="group_rightWidget.jsp" />
							</aside>
						</div>
						<!-- 그룹 페이지 위젯 오른쪽 -->

					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	//달력시작==================================================================
	var today = new Date();//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
	var date = new Date();//today의 Date를 세어주는 역할
	function prevCalendar() {//이전 달
		// 이전 달을 today에 값을 저장하고 달력에 today를 넣어줌
		//today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
		//getMonth()는 현재 달을 받아 오므로 이전달을 출력하려면 -1을 해줘야함
		today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		buildCalendar(); //달력 cell 만들어 출력 
	}
	function nextCalendar() {//다음 달
		// 다음 달을 today에 값을 저장하고 달력에 today 넣어줌
		//today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
		//getMonth()는 현재 달을 받아 오므로 다음달을 출력하려면 +1을 해줘야함
		var btoday = today.getMonth();
		today = new Date(today.getFullYear(), today.getMonth()+1, today
				.getDate());
		var atoday = today.getMonth();
		if(atoday-btoday==2){
			today = new Date(today.getFullYear(), today.getMonth()-1, today
					.getDate());
		}
		buildCalendar();//달력 cell 만들어 출력
	}
	function buildCalendar() {//현재 달 달력 만들기
		var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
		//이번 달의 첫째 날,
		//new를 쓰는 이유 : new를 쓰면 이번달의 로컬 월을 정확하게 받아온다.     
		//new를 쓰지 않았을때 이번달을 받아오려면 +1을 해줘야한다. 
		//왜냐면 getMonth()는 0~11을 반환하기 때문
		var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);
		//이번 달의 마지막 날
		//new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
		//day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
		//대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
		var tbCalendar = document.getElementById("calendar");
		//날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
		var tbCalendarYM = document.getElementById("tbCalendarYM");
		//테이블에 정확한 날짜 찍는 변수
		//innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
		//new를 찍지 않아서 month는 +1을 더해줘야 한다. 
		tbCalendarYM.innerHTML = today.getFullYear() + "년 "
				+ (today.getMonth()+1) + "월";
		/*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
		while (tbCalendar.rows.length > 2) {
			//열을 지워줌
			//기본 열 크기는 body 부분에서 2로 고정되어 있다.
			tbCalendar.deleteRow(tbCalendar.rows.length - 1);
			//테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지 
			//30일 이후로 담을달에 순서대로 열이 계속 이어진다.
		}
		var row = null;
		row = tbCalendar.insertRow();
		//테이블에 새로운 열 삽입//즉, 초기화
		var cnt = 0;// count, 셀의 갯수를 세어주는 역할
		// 1일이 시작되는 칸을 맞추어 줌
		for (i = 0; i < doMonth.getDay(); i++) {
			/*이번달의 day만큼 돌림*/
			cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
			cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
		}
		/*달력 출력*/
		for (i = 1; i <= lastDate.getDate(); i++) {
			//1일부터 마지막 일까지 돌림
			cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
			cell.innerHTML = "<span class='caldendarCell' id='day"+i+"'>" + i + "</span>";//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
			cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
			if (cnt % 7 == 1) {/*일요일 계산*/
				//1주일이 7일 이므로 일요일 구하기
				//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
				cell.innerHTML = "<span class='caldendarCell' id='day"+i+"'><font color=#F79DC2>"
						+ i + "</span>";
				//1번째의 cell에만 색칠
			}
			if (cnt % 7 == 0) {/* 1주일이 7일 이므로 토요일 구하기*/
				//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
				cell.innerHTML = "<span class='caldendarCell' id='day"+i+"'><font color=skyblue>"
						+ i + "</span>";
				//7번째의 cell에만 색칠
				row = calendar.insertRow();
				//토요일 다음에 올 셀을 추가
			}
			/*오늘의 날짜에 노란색 칠하기*/
			if (today.getFullYear() == date.getFullYear()
					&& today.getMonth() == date.getMonth()
					&& i == date.getDate()) {
				//달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
				cell.bgColor = "#FAF58C";//셀의 배경색을 노랑으로 
			}
		}
	}
	
	//달력끝==================================================================
</script>
<script>
buildCalendar();
$(function() {
	var mycalendarlistcount = $('#gclc').val();
	for(var i = 1; i<=mycalendarlistcount;i++){
		var temp = $('#cal'+i).val();
		$('#day'+temp).parent().addClass('calendarCellMy');
	}
	
	$(".delschedulebtn").click(function(){
		var groupkey = $('#thisGroupKey').val();
		var postkey = $(this).next().val();
		var result = confirm("정말 삭제하시겠습니까?");
		if(result){
			location.href="groupin_group_admin_deleteSchedule.net?groupkey="+groupkey+"&postkey="+postkey;			
		}
	})
	$(".modschedulebtn").click(function(){
		var groupkey = $('#thisGroupKey').val();
		var postkey = $(this).next().val();
		location.href="groupin_group_admin_modifySchedule.net?groupkey="+groupkey+"&postkey="+postkey;
	})
	
	
	
	$(".addScheduleBtn").click(function(){
		var groupkey = $('#thisGroupKey').val();
		location.href="groupin_group_admin_addSchedule.net?groupkey="+groupkey;
	})
	
	$(".forLoginBtn").click(function(){
		location.href="login";
	})
	
	$(".forLoginBtnx").click(function(){
		location.href="login";
	})
	$("#calendar").on('click', '#prevcal', function(event) {
		var userkey = $('#UserKey').val();
		prevCalendar();
		var date = $('#tbCalendarYM').text();
		ajaxcallist(userkey,date);
		$('#shortschedule').empty();
		if(userkey ==-1){
			$('#shortschedule').append('<li><span>로그인 해주세요</span></li>');
		}else{
			$('#shortschedule').append('<li><span>날짜를 선택하세요</span></li>');
		}
		
    })
    
    $("#calendar").on('click', '#nextcal', function(event) {
    	var userkey = $('#UserKey').val();
    	nextCalendar();
    	var date = $('#tbCalendarYM').text();
    	ajaxcallist(userkey,date);
    	$('#shortschedule').empty();
    	if(userkey ==-1){
			$('#shortschedule').append('<li><span>로그인 해주세요</span></li>');
		}else{
			$('#shortschedule').append('<li><span>날짜를 선택하세요</span></li>');
		}
    })
    
    
	$(".nearby-contct").on('click', '.gmtljoinbtn', function(event) {
		var userkey = $('#UserKey').val();
		if (userkey!=-1){
		var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#thisGroupKey').val();
        alert(n);
        ajaxJoinBtn(postkey, groupkey, userkey, n);
        $(this).removeClass('gmtljoinbtn');
        $(this).addClass('gmtlcancelbtn');
        $(this).children().html('취소하기');
		}else{
			alert("로그인 해주세요 ");
		}
    })

    $(".nearby-contct").on('click', '.gmtlcancelbtn', function(event) {
        var userkey = $('#UserKey').val();
        if (userkey!=-1){
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#thisGroupKey').val();
        ajaxJoinCancelBtn(postkey, groupkey, userkey, n);
        $(this).removeClass('gmtlcancelbtn');
        $(this).addClass('gmtljoinbtn');
        $(this).children().html('참여하기');
        }else{
			alert("로그인 해주세요 ");
		}
    })
	$(".calendarDiv").on('click', 'td', function(event) {
        if ($(this).text() != "" || $(this).text().length() > 2) {
            $('td').removeClass('calendarCellSelected');
            $(this).addClass('calendarCellSelected');
            var userkey = $('#UserKey').val(); 
            var date = $('#tbCalendarYM').text();
            var day = $(this).text();
            if($(this).hasClass('calendarCellMy')){
            	ajaxcal(userkey,date,day);
            }else{
            	$('#shortschedule').empty();
            	if(userkey ==-1){
        			$('#shortschedule').append('<li><span>로그인 해주세요</span></li>');
        		}else{
        			$('#shortschedule').append('<li><span>일정이 없습니다</span></li>');
        		}
            }
        }
    })
    
    
    
    $(".forMemberCountBtnOne").click(function() {
    	var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#thisGroupKey').val();
       	console.log(groupkey);
        ajax(postkey, groupkey, n);
        if ($("#collapseOne").hasClass("show")) {
            $('.i-changeOne').removeClass('fa-arrow-up');
            $('.i-changeOne').addClass('fa-arrow-down');
        } else {
            $('.i-changeOne').removeClass('fa-arrow-down');
            $('.i-changeOne').addClass('fa-arrow-up');
        }
    })
    $(".forMemberCountBtnTwo").click(function() {
    	var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#thisGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseTwo").hasClass("show")) {
            $('.i-changeTwo').removeClass('fa-arrow-up');
            $('.i-changeTwo').addClass('fa-arrow-down');
        } else {
            $('.i-changeTwo').removeClass('fa-arrow-down');
            $('.i-changeTwo').addClass('fa-arrow-up');
        }
    })
    $(".forMemberCountBtnThree").click(function() {
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#thisGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseThree").hasClass("show")) {
            $('.i-changeThree').removeClass('fa-arrow-up');
            $('.i-changeThree').addClass('fa-arrow-down');
        } else {
            $('.i-changeThree').removeClass('fa-arrow-down');
            $('.i-changeThree').addClass('fa-arrow-up');
        }
    })
    $(".forMemberCountBtnFour").click(function() {
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#thisGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseFour").hasClass("show")) {
            $('.i-changeFour').removeClass('fa-arrow-up');
            $('.i-changeFour').addClass('fa-arrow-down');
        } else {
            $('.i-changeFour').removeClass('fa-arrow-down');
            $('.i-changeFour').addClass('fa-arrow-up');
        }
    })
    $(".forMemberCountBtnFive").click(function() {
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#thisGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseFive").hasClass("show")) {
            $('.i-changeFive').removeClass('fa-arrow-up');
            $('.i-changeFive').addClass('fa-arrow-down');
        } else {
            $('.i-changeFive').removeClass('fa-arrow-down');
            $('.i-changeFive').addClass('fa-arrow-up');
        }
    })
    $(".forMemberCountBtnSix").click(function() {
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#thisGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseSix").hasClass("show")) {
            $('.i-changeSix').removeClass('fa-arrow-up');
            $('.i-changeSix').addClass('fa-arrow-down');
        } else {
            $('.i-changeSix').removeClass('fa-arrow-down');
            $('.i-changeSix').addClass('fa-arrow-up');
        }
    })
    $(".forMemberCountBtnSeven").click(function() {
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#thisGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseSeven").hasClass("show")) {
            $('.i-changeSeven').removeClass('fa-arrow-up');
            $('.i-changeSeven').addClass('fa-arrow-down');
        } else {
            $('.i-changeSeven').removeClass('fa-arrow-down');
            $('.i-changeSeven').addClass('fa-arrow-up');
        }
    })

    
    //=======================================================
    $('input[type=file]:eq(0)').on('change', function() {
        alert("1");
    	$('#groupMainImgForm').submit();
    });
    $('input[type=file]:eq(1)').on('change', function() {
    	alert("1");
    	$('#groupImgForm').submit();
    });


    //===== Search Filter =====//
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter(searchDir, list) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter($("#searchDir"), $("#people-list"));
        });
    }(jQuery));

    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter1(searchDir1, list1) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir1);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list1).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list1).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list1).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter1($("#searchDir1"), $("#people-list1"));
        });
    }(jQuery));

    //===========================================================================

    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter2(searchDir2, list2) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir2);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list2).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list2).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list2).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter2($("#searchDir2"), $("#people-list2"));
        });
    }(jQuery));

    //===========================================================================

    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter3(searchDir3, list3) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir3);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list3).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list3).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list3).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter3($("#searchDir3"), $("#people-list3"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter4(searchDir4, list4) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir4);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list4).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list4).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list4).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter4($("#searchDir4"), $("#people-list4"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter5(searchDir5, list5) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir5);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list5).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list5).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list5).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter5($("#searchDir5"), $("#people-list5"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter6(searchDir6, list6) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir6);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list6).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list6).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list6).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter6($("#searchDir6"), $("#people-list6"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter7(searchDir7, list7) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir7);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list7).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list7).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list7).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter7($("#searchDir7"), $("#people-list7"));
        });
    }(jQuery));

    //===========================================================================

    function ajax(postkey, groupkey, n) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajax.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                output = "";
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>&nbsp;</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxJoinBtn(postkey, groupkey, userkey, n) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey + "&userkey=" + userkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajaxJoin.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                $(".currentperson"+n).empty();
                $(".currentperson"+n).html(data.currentperson);
                output = "";
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>&nbsp;</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end

    function ajaxJoinCancelBtn(postkey, groupkey, userkey, n) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey + "&userkey=" + userkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajaxJoinCancel.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                output = "";
                $(".currentperson"+n).empty();
                $(".currentperson"+n).html(data.currentperson);
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>&nbsp;</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxCalendarList(userkey) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey + "&userkey=" + userkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajaxJoinCancel.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                output = "";
                $(".currentperson"+n).empty();
                $(".currentperson"+n).html(data.currentperson);
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>&nbsp;</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxcallist(userkey,date) {
        output = "";
        var data = "userkey=" + userkey + "&date=" + date;
        $.ajax({
            type: "post",
            url: "group_main_ajaxCalList.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $(data.groupcalendarlist).each(
                    function(index, item) {
                       if(!$('#day'+item.startdate).parent().hasClass('calendarCellMy')){
                    		$('#day'+item.startdate).parent().addClass('calendarCellMy');
                       }
                    })

            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxcal(userkey,date,day) {
        output = "";
        var data = "userkey=" + userkey + "&date=" + date + "&day=" + day;
        $.ajax({
            type: "post",
            url: "group_main_shortschedule.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
            	$('#shortschedule').empty();
                output = "";
            	$(data.shortscheduleSelected).each(
                        function(index, item) {
                        	output += "<li><span><a href='group_main.net?groupkey="+item.groupkey+"'>"+item.posttitle+"</a></span>";
                        	output += "<p>모임명: "+item.groupname +"<br>시간: "+item.startdate+"<br>장소:"+item.location+"</p></li>";
                        })
                        $('#shortschedule').append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    
})
</script>

