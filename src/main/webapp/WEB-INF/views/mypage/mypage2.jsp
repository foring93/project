<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 

<jsp:include page="../mainpage/header.jsp" />

<style>

.admin-name h5:hover {
  cursor:pointer;
}

#recentwww:hover {
  cursor:pointer;
}

#recentnotice:hover {
  cursor:pointer;
}

</style>
	
	<section>
			<div class="feature-photo">
				<figure> <!-- 기본 배경 -->
				<img src="resources/images/resources/backpic.jpg"/>
				</figure>

				<div class="container-fluid">
					<div class="row merged">
						<div class="col-lg-2 col-sm-3">
							<div class="user-avatar">
							<c:if test = "${mypage.userImageOrigin == null}">
							 <figure>
							      <img src="resources/images/resources/user-avatar.jpg" alt="" id="imgpic">
							   </figure>
						    </c:if>
						    <c:if test = "${mypage.userImageOrigin != null}">
							   	  <figure>
									<img src="<spring:url value='/image/${mypage.userImageOrigin }'/>" id="imgpic"/>
								  </figure>
						    </c:if>
									<form class="edit-phto" id="userImageForm">
									<input type="hidden" name="userKey" value="${mypage.userKey }">
										<i class="fa fa-camera-retro"></i> <label class="fileContainer"> 프로필 사진 변경 
										<input type="file" id="uploadfile" name="userImageUpdate"
											accept="image/gif, image/jpeg, image/png"/>
										</label>
									</form>
								
							</div>
						</div>
						<div class="col-lg-10 col-sm-9">
							<div class="timeline-info">
								<ul>
								<c:if test="${logintype == 0 }">
								<li class="admin-name" id="mymy">
									<h5>${id}님의 마이페이지</h5>
								</li>
							</c:if>
							<c:if test="${logintype == 1 }">
								<li class="admin-name" id="mymy">
									<h5>마이페이지</h5>
								</li>
							</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section><!-- top area -->

	<section>
		<div class="gap gray-bg">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="row" id="page-contents">
							<div class="col-lg-3">
								<aside class="sidebar static">
									<div class="widget">
									<h4 class="widget-title">정보 수정</h4>
									<ul class="naves">
										<li>
											<i class="ti-info-alt"></i>
											<a title="" class="jungbo">기본 정보</a>
										</li>
										<li>
											<i class="ti-heart"></i>
											<a title="" class="gss">관심사</a>
										</li>
										
									</ul>
								</div>
											<div class="widget">
											<h4 class="widget-title" id="recentwww"><i class="ti-pencil"></i>내가 작성한 글/댓글</h4>
											<input type="hidden" id="userId" name="userId" value="${id}"> 
											<ul class="activitiez">
													<c:if test="${postcount > 0 }">
											<c:forEach var="b" items="${postlist}">
												<li>
													<div class="activity-meta">
														<i>${b.postDate}</i> 
														<span> <a	href="groupmain?groupkey=${b.postKey}" title="${b.postTitle}">${b.postTitle}</a></span>
														<h6>
															 ${b.groupName} 
														</h6>
													</div>
												</li>
											</c:forEach>	
											</c:if>
											<c:if test="${postcount == 0 }">
											      작성한 글이 없습니다.
											</c:if>
											</ul>
										</div><!-- recent activites -->						
								</aside>
							</div><!-- sidebar -->
							<div class="col-lg-6">
								<div class="central-meta">
									<div class="editing-info">
										<h5 class="f-title"><i class="ti-info-alt"></i> 기본 정보 수정</h5>

										<form method="post" action="updateprocess">
										<c:if test="${logintype == 0 }">
											<div class="form-group half">	
											  <input type="text" id="inputPassword" name="userPassword" required="required"/>
											  <label class="control-label" for="input" id="passla">비밀번호</label><i class="mtrl-select"></i>
											</div>
										    
											<div class="form-group">	
											  <input type="text" id="inputEmail" value="${mypage.userEmail}" name="userEmail" required="required"/>
											  <label class="control-label" for="input" id="emailla">이메일</label><i class="mtrl-select"></i>
											</div>
									        <div class="dob">
												<div class="form-group">
												<input type="hidden" id="inputAge" value="${mypage.userAge}"  required="required"/>
													<select name="userAge" >
														<option value="연령대">연령대</option>
														  <option value="1" <c:if test="${mypage.userAge == 1}">selected='selected'</c:if>>10</option>
														  <option value="2" <c:if test="${mypage.userAge == 2}">selected='selected'</c:if>>20</option>
														  <option value="3" <c:if test="${mypage.userAge == 3}">selected='selected'</c:if>>30</option>
														  <option value="4" <c:if test="${mypage.userAge == 4}">selected='selected'</c:if>>40</option>
														  <option value="5" <c:if test="${mypage.userAge == 5}">selected='selected'</c:if>>50</option>
														  <option value="6" <c:if test="${mypage.userAge == 6}">selected='selected'</c:if>>60</option>
													</select>
												</div>
											</div>
											<div class="form-radio">
											<input type="hidden" id="inputGender" value="${mypage.gender}" required="required"/>
											  <div class="radio">
												<label>
												  <input type="radio" name="gender" value="M" <c:if test="${mypage.gender == 'M'}">checked='checked'</c:if>><i class="check-box"></i>남
												</label>
											  </div>
											  <div class="radio">
												<label>
												  <input type="radio" name="gender" value="F" <c:if test="${mypage.gender == 'F'}">checked='checked'</c:if>><i class="check-box"></i>여
												</label>
											  </div>
											</div>
										
											<div class="form-group">	
											<input type="hidden" id="inputLoc" value="${mypage.userLocation}">
											  <label>지역 
											  <select id="nogada1" name="userLocation">
												<option value="1">서울특별시</option>
												<option value="2">서울특별시 종로구</option>
												<option value="3">서울특별시 중구</option>
												<option value="4">서울특별시 용산구</option>
												<option value="5">서울특별시 성동구</option>
												<option value="6">서울특별시 광진구</option>
												<option value="7">서울특별시 동대문구</option>
												<option value="8">서울특별시 중랑구</option>
												<option value="9">서울특별시 성북구</option>
												<option value="10">서울특별시 강북구</option>
												<option value="11">서울특별시 도봉구</option>
												<option value="12">서울특별시 노원구</option>
												<option value="13">서울특별시 은평구</option>
												<option value="14">서울특별시 서대문구</option>
												<option value="15">서울특별시 마포구</option>
												<option value="16">서울특별시 양천구</option>
												<option value="17">서울특별시 강서구</option>
												<option value="18">서울특별시 구로구</option>
												<option value="19">서울특별시 금천구</option>
												<option value="20">서울특별시 영등포구</option>
												<option value="21">서울특별시 동작구</option>
												<option value="22">서울특별시 관악구</option>
												<option value="23">서울특별시 서초구</option>
												<option value="24">서울특별시 강남구</option>
												<option value="25">서울특별시 송파구</option>
												<option value="26">서울특별시 강동구</option>
												<option value="27">부산광역시</option>
												<option value="28">부산광역시 중구</option>
												<option value="29">부산광역시 서구</option>
												<option value="30">부산광역시 동구</option>
												<option value="31">부산광역시 영도구</option>
												<option value="32">부산광역시 부산진구</option>
												<option value="33">부산광역시 동래구</option>
												<option value="34">부산광역시 남구</option>
												<option value="35">부산광역시 북구</option>
												<option value="36">부산광역시 해운대구</option>
												<option value="37">부산광역시 사하구</option>
												<option value="38">부산광역시 금정구</option>
												<option value="39">부산광역시 강서구</option>
												<option value="40">부산광역시 연제구</option>
												<option value="41">부산광역시 수영구</option>
												<option value="42">부산광역시 사상구</option>
												<option value="43">부산광역시 기장군</option>
												<option value="44">대구광역시</option>
												<option value="45">대구광역시 중구</option>
												<option value="46">대구광역시 동구</option>
												<option value="47">대구광역시 서구</option>
												<option value="48">대구광역시 남구</option>
												<option value="49">대구광역시 북구</option>
												<option value="50">대구광역시 수성구</option>
												<option value="51">대구광역시 달서구</option>
												<option value="52">대구광역시 달성군</option>
												<option value="53">인천광역시</option>
												<option value="54">인천광역시 중구</option>
												<option value="55">인천광역시 동구</option>
												<option value="56">인천광역시 미추홀구</option>
												<option value="57">인천광역시 연수구</option>
												<option value="58">인천광역시 남동구</option>
												<option value="59">인천광역시 부평구</option>
												<option value="60">인천광역시 계양구</option>
												<option value="61">인천광역시 서구</option>
												<option value="62">인천광역시 강화군</option>
												<option value="63">인천광역시 옹진군</option>
												<option value="64">광주광역시</option>
												<option value="65">광주광역시 동구</option>
												<option value="66">광주광역시 서구</option>
												<option value="67">광주광역시 남구</option>
												<option value="68">광주광역시 북구</option>
												<option value="69">광주광역시 광산구</option>
												<option value="70">대전광역시</option>
												<option value="71">대전광역시 동구</option>
												<option value="72">대전광역시 중구</option>
												<option value="73">대전광역시 서구</option>
												<option value="74">대전광역시 유성구</option>
												<option value="75">대전광역시 대덕구</option>
												<option value="76">울산광역시</option>
												<option value="77">울산광역시 중구</option>
												<option value="78">울산광역시 남구</option>
												<option value="79">울산광역시 동구</option>
												<option value="80">울산광역시 북구</option>
												<option value="81">울산광역시 울주군</option>
												<option value="82">세종특별자치시</option>
												<option value="83">세종특별자치시 세종특별자치시</option>
												<option value="84">경기도</option>
												<option value="85">경기도 수원시장안구</option>
												<option value="86">경기도 수원시권선구</option>
												<option value="87">경기도 수원시팔달구</option>
												<option value="88">경기도 수원시영통구</option>
												<option value="89">경기도 성남시수정구</option>
												<option value="90">경기도 성남시중원구</option>
												<option value="91">경기도 성남시분당구</option>
												<option value="92">경기도 의정부시</option>
												<option value="93">경기도 안양시만안구</option>
												<option value="94">경기도 안양시동안구</option>
												<option value="95">경기도 부천시</option>
												<option value="96">경기도 광명시</option>
												<option value="97">경기도 평택시</option>
												<option value="98">경기도 동두천시</option>
												<option value="99">경기도 안산시상록구</option>
												<option value="100">경기도 안산시단원구</option>
												<option value="101">경기도 고양시덕양구</option>
												<option value="102">경기도 고양시일산동구</option>
												<option value="103">경기도 고양시일산서구</option>
												<option value="104">경기도 과천시</option>
												<option value="105">경기도 구리시</option>
												<option value="106">경기도 남양주시</option>
												<option value="107">경기도 오산시</option>
												<option value="108">경기도 시흥시</option>
												<option value="109">경기도 군포시</option>
												<option value="110">경기도 의왕시</option>
												<option value="111">경기도 하남시</option>
												<option value="112">경기도 용인시처인구</option>
												<option value="113">경기도 용인시기흥구</option>
												<option value="114">경기도 용인시수지구</option>
												<option value="115">경기도 파주시</option>
												<option value="116">경기도 이천시</option>
												<option value="117">경기도 안성시</option>
												<option value="118">경기도 김포시</option>
												<option value="119">경기도 화성시</option>
												<option value="120">경기도 광주시</option>
												<option value="121">경기도 양주시</option>
												<option value="122">경기도 포천시</option>
												<option value="123">경기도 여주시</option>
												<option value="124">경기도 연천군</option>
												<option value="125">경기도 가평군</option>
												<option value="126">경기도 양평군</option>
												<option value="127">강원도</option>
												<option value="128">강원도 춘천시</option>
												<option value="129">강원도 원주시</option>
												<option value="130">강원도 강릉시</option>
												<option value="131">강원도 동해시</option>
												<option value="132">강원도 태백시</option>
												<option value="133">강원도 속초시</option>
												<option value="134">강원도 삼척시</option>
												<option value="135">강원도 홍천군</option>
												<option value="136">강원도 횡성군</option>
												<option value="137">강원도 영월군</option>
												<option value="138">강원도 평창군</option>
												<option value="139">강원도 정선군</option>
												<option value="140">강원도 철원군</option>
												<option value="141">강원도 화천군</option>
												<option value="142">강원도 양구군</option>
												<option value="143">강원도 인제군</option>
												<option value="144">강원도 고성군</option>
												<option value="145">강원도 양양군</option>
												<option value="146">충청북도</option>
												<option value="147">충청북도 청주시상당구</option>
												<option value="148">충청북도 청주시서원구</option>
												<option value="149">충청북도 청주시흥덕구</option>
												<option value="150">충청북도 청주시청원구</option>
												<option value="151">충청북도 충주시</option>
												<option value="152">충청북도 제천시</option>
												<option value="153">충청북도 보은군</option>
												<option value="154">충청북도 옥천군</option>
												<option value="155">충청북도 영동군</option>
												<option value="156">충청북도 증평군</option>
												<option value="157">충청북도 진천군</option>
												<option value="158">충청북도 괴산군</option>
												<option value="159">충청북도 음성군</option>
												<option value="160">충청북도 단양군</option>
												<option value="161">충청남도</option>
												<option value="162">충청남도 천안시동남구</option>
												<option value="163">충청남도 천안시서북구</option>
												<option value="164">충청남도 공주시</option>
												<option value="165">충청남도 보령시</option>
												<option value="166">충청남도 아산시</option>
												<option value="167">충청남도 서산시</option>
												<option value="168">충청남도 논산시</option>
												<option value="169">충청남도 계룡시</option>
												<option value="170">충청남도 당진시</option>
												<option value="171">충청남도 금산군</option>
												<option value="172">충청남도 부여군</option>
												<option value="173">충청남도 서천군</option>
												<option value="174">충청남도 청양군</option>
												<option value="175">충청남도 홍성군</option>
												<option value="176">충청남도 예산군</option>
												<option value="177">충청남도 태안군</option>
												<option value="178">전라북도</option>
												<option value="179">전라북도 전주시완산구</option>
												<option value="180">전라북도 전주시덕진구</option>
												<option value="181">전라북도 군산시</option>
												<option value="182">전라북도 익산시</option>
												<option value="183">전라북도 정읍시</option>
												<option value="184">전라북도 남원시</option>
												<option value="185">전라북도 김제시</option>
												<option value="186">전라북도 완주군</option>
												<option value="187">전라북도 진안군</option>
												<option value="188">전라북도 무주군</option>
												<option value="189">전라북도 장수군</option>
												<option value="190">전라북도 임실군</option>
												<option value="191">전라북도 순창군</option>
												<option value="192">전라북도 고창군</option>
												<option value="193">전라북도 부안군</option>
												<option value="194">전라남도</option>
												<option value="195">전라남도 목포시</option>
												<option value="196">전라남도 여수시</option>
												<option value="197">전라남도 순천시</option>
												<option value="198">전라남도 나주시</option>
												<option value="199">전라남도 광양시</option>
												<option value="200">전라남도 담양군</option>
												<option value="201">전라남도 곡성군</option>
												<option value="202">전라남도 구례군</option>
												<option value="203">전라남도 고흥군</option>
												<option value="204">전라남도 보성군</option>
												<option value="205">전라남도 화순군</option>
												<option value="206">전라남도 장흥군</option>
												<option value="207">전라남도 강진군</option>
												<option value="208">전라남도 해남군</option>
												<option value="209">전라남도 영암군</option>
												<option value="210">전라남도 무안군</option>
												<option value="211">전라남도 함평군</option>
												<option value="212">전라남도 영광군</option>
												<option value="213">전라남도 장성군</option>
												<option value="214">전라남도 완도군</option>
												<option value="215">전라남도 진도군</option>
												<option value="216">전라남도 신안군</option>
												<option value="217">경상북도</option>
												<option value="218">경상북도 포항시남구</option>
												<option value="219">경상북도 포항시북구</option>
												<option value="220">경상북도 경주시</option>
												<option value="221">경상북도 김천시</option>
												<option value="222">경상북도 안동시</option>
												<option value="223">경상북도 구미시</option>
												<option value="224">경상북도 영주시</option>
												<option value="225">경상북도 영천시</option>
												<option value="226">경상북도 상주시</option>
												<option value="227">경상북도 문경시</option>
												<option value="228">경상북도 경산시</option>
												<option value="229">경상북도 군위군</option>
												<option value="230">경상북도 의성군</option>
												<option value="231">경상북도 청송군</option>
												<option value="232">경상북도 영양군</option>
												<option value="233">경상북도 영덕군</option>
												<option value="234">경상북도 청도군</option>
												<option value="235">경상북도 고령군</option>
												<option value="236">경상북도 성주군</option>
												<option value="237">경상북도 칠곡군</option>
												<option value="238">경상북도 예천군</option>
												<option value="239">경상북도 봉화군</option>
												<option value="240">경상북도 울진군</option>
												<option value="241">경상북도 울릉군</option>
												<option value="242">경상남도</option>
												<option value="243">경상남도 창원시의창구</option>
												<option value="244">경상남도 창원시성산구</option>
												<option value="245">경상남도 창원시마산합포구</option>
												<option value="246">경상남도 창원시마산회원구</option>
												<option value="247">경상남도 창원시진해구</option>
												<option value="248">경상남도 진주시</option>
												<option value="249">경상남도 통영시</option>
												<option value="250">경상남도 사천시</option>
												<option value="251">경상남도 김해시</option>
												<option value="252">경상남도 밀양시</option>
												<option value="253">경상남도 거제시</option>
												<option value="254">경상남도 양산시</option>
												<option value="255">경상남도 의령군</option>
												<option value="256">경상남도 함안군</option>
												<option value="257">경상남도 창녕군</option>
												<option value="258">경상남도 고성군</option>
												<option value="259">경상남도 남해군</option>
												<option value="260">경상남도 하동군</option>
												<option value="261">경상남도 산청군</option>
												<option value="262">경상남도 함양군</option>
												<option value="263">경상남도 거창군</option>
												<option value="264">경상남도 합천군</option>
												<option value="265">제주특별자치도</option>
												<option value="266">제주특별자치도 제주시</option>
												<option value="267">제주특별자치도 서귀포시</option>
										</select>
										</label>
											</div>
											<br><br><br>
											<div class="onoff-options">
											<h5 class="f-title"><i class="ti-settings"></i>환경 설정</h5>
											<div class="setting-row">
												<span>모임 초대 허용</span>
												<p>다른 회원으로부터 모임 초대를 받으시겠습니까?</p>
												<input type="hidden" id="input" value="${mypage.userOptionGroup}" name="userOptionGroup" required="required"/>
												<input type="checkbox" id="switch00" /> 
												<label for="switch00" data-on-label="ON" data-off-label="OFF"></label>
											</div>
											</div>
										</c:if>
										<!-- 카카오 로그인한 회원 -->
								        <c:if test="${logintype == 1 }">
											<div class="dob">
												<div class="form-group">
												<input type="hidden" id="inputAge" value="${mypage.userAge}"  required="required"/>
													<select name="userAge" >
														<option value="연령대">연령대</option>
														  <option value="1" <c:if test="${mypage.userAge == 1}">selected='selected'</c:if>>10</option>
														  <option value="2" <c:if test="${mypage.userAge == 2}">selected='selected'</c:if>>20</option>
														  <option value="3" <c:if test="${mypage.userAge == 3}">selected='selected'</c:if>>30</option>
														  <option value="4" <c:if test="${mypage.userAge == 4}">selected='selected'</c:if>>40</option>
														  <option value="5" <c:if test="${mypage.userAge == 5}">selected='selected'</c:if>>50</option>
														  <option value="6" <c:if test="${mypage.userAge == 6}">selected='selected'</c:if>>60</option>
													</select>
												</div>
											</div>
											<div class="form-radio">
											<input type="hidden" id="inputGender" value="${mypage.gender}" required="required"/>
											  <div class="radio">
												<label>
												  <input type="radio" name="gender" value="M" <c:if test="${mypage.gender == 'M'}">checked='checked'</c:if>><i class="check-box"></i>남
												</label>
											  </div>
											  <div class="radio">
												<label>
												  <input type="radio" name="gender" value="F" <c:if test="${mypage.gender == 'F'}">checked='checked'</c:if>><i class="check-box"></i>여
												</label>
											  </div>
											</div>
										
											<div class="form-group">	
											<input type="hidden" id="inputLoc" value="${mypage.userLocation}">
											  <label>지역 
											  <select id="nogada1" name="userLocation">
												<option value="1">서울특별시</option>
												<option value="2">서울특별시 종로구</option>
												<option value="3">서울특별시 중구</option>
												<option value="4">서울특별시 용산구</option>
												<option value="5">서울특별시 성동구</option>
												<option value="6">서울특별시 광진구</option>
												<option value="7">서울특별시 동대문구</option>
												<option value="8">서울특별시 중랑구</option>
												<option value="9">서울특별시 성북구</option>
												<option value="10">서울특별시 강북구</option>
												<option value="11">서울특별시 도봉구</option>
												<option value="12">서울특별시 노원구</option>
												<option value="13">서울특별시 은평구</option>
												<option value="14">서울특별시 서대문구</option>
												<option value="15">서울특별시 마포구</option>
												<option value="16">서울특별시 양천구</option>
												<option value="17">서울특별시 강서구</option>
												<option value="18">서울특별시 구로구</option>
												<option value="19">서울특별시 금천구</option>
												<option value="20">서울특별시 영등포구</option>
												<option value="21">서울특별시 동작구</option>
												<option value="22">서울특별시 관악구</option>
												<option value="23">서울특별시 서초구</option>
												<option value="24">서울특별시 강남구</option>
												<option value="25">서울특별시 송파구</option>
												<option value="26">서울특별시 강동구</option>
												<option value="27">부산광역시</option>
												<option value="28">부산광역시 중구</option>
												<option value="29">부산광역시 서구</option>
												<option value="30">부산광역시 동구</option>
												<option value="31">부산광역시 영도구</option>
												<option value="32">부산광역시 부산진구</option>
												<option value="33">부산광역시 동래구</option>
												<option value="34">부산광역시 남구</option>
												<option value="35">부산광역시 북구</option>
												<option value="36">부산광역시 해운대구</option>
												<option value="37">부산광역시 사하구</option>
												<option value="38">부산광역시 금정구</option>
												<option value="39">부산광역시 강서구</option>
												<option value="40">부산광역시 연제구</option>
												<option value="41">부산광역시 수영구</option>
												<option value="42">부산광역시 사상구</option>
												<option value="43">부산광역시 기장군</option>
												<option value="44">대구광역시</option>
												<option value="45">대구광역시 중구</option>
												<option value="46">대구광역시 동구</option>
												<option value="47">대구광역시 서구</option>
												<option value="48">대구광역시 남구</option>
												<option value="49">대구광역시 북구</option>
												<option value="50">대구광역시 수성구</option>
												<option value="51">대구광역시 달서구</option>
												<option value="52">대구광역시 달성군</option>
												<option value="53">인천광역시</option>
												<option value="54">인천광역시 중구</option>
												<option value="55">인천광역시 동구</option>
												<option value="56">인천광역시 미추홀구</option>
												<option value="57">인천광역시 연수구</option>
												<option value="58">인천광역시 남동구</option>
												<option value="59">인천광역시 부평구</option>
												<option value="60">인천광역시 계양구</option>
												<option value="61">인천광역시 서구</option>
												<option value="62">인천광역시 강화군</option>
												<option value="63">인천광역시 옹진군</option>
												<option value="64">광주광역시</option>
												<option value="65">광주광역시 동구</option>
												<option value="66">광주광역시 서구</option>
												<option value="67">광주광역시 남구</option>
												<option value="68">광주광역시 북구</option>
												<option value="69">광주광역시 광산구</option>
												<option value="70">대전광역시</option>
												<option value="71">대전광역시 동구</option>
												<option value="72">대전광역시 중구</option>
												<option value="73">대전광역시 서구</option>
												<option value="74">대전광역시 유성구</option>
												<option value="75">대전광역시 대덕구</option>
												<option value="76">울산광역시</option>
												<option value="77">울산광역시 중구</option>
												<option value="78">울산광역시 남구</option>
												<option value="79">울산광역시 동구</option>
												<option value="80">울산광역시 북구</option>
												<option value="81">울산광역시 울주군</option>
												<option value="82">세종특별자치시</option>
												<option value="83">세종특별자치시 세종특별자치시</option>
												<option value="84">경기도</option>
												<option value="85">경기도 수원시장안구</option>
												<option value="86">경기도 수원시권선구</option>
												<option value="87">경기도 수원시팔달구</option>
												<option value="88">경기도 수원시영통구</option>
												<option value="89">경기도 성남시수정구</option>
												<option value="90">경기도 성남시중원구</option>
												<option value="91">경기도 성남시분당구</option>
												<option value="92">경기도 의정부시</option>
												<option value="93">경기도 안양시만안구</option>
												<option value="94">경기도 안양시동안구</option>
												<option value="95">경기도 부천시</option>
												<option value="96">경기도 광명시</option>
												<option value="97">경기도 평택시</option>
												<option value="98">경기도 동두천시</option>
												<option value="99">경기도 안산시상록구</option>
												<option value="100">경기도 안산시단원구</option>
												<option value="101">경기도 고양시덕양구</option>
												<option value="102">경기도 고양시일산동구</option>
												<option value="103">경기도 고양시일산서구</option>
												<option value="104">경기도 과천시</option>
												<option value="105">경기도 구리시</option>
												<option value="106">경기도 남양주시</option>
												<option value="107">경기도 오산시</option>
												<option value="108">경기도 시흥시</option>
												<option value="109">경기도 군포시</option>
												<option value="110">경기도 의왕시</option>
												<option value="111">경기도 하남시</option>
												<option value="112">경기도 용인시처인구</option>
												<option value="113">경기도 용인시기흥구</option>
												<option value="114">경기도 용인시수지구</option>
												<option value="115">경기도 파주시</option>
												<option value="116">경기도 이천시</option>
												<option value="117">경기도 안성시</option>
												<option value="118">경기도 김포시</option>
												<option value="119">경기도 화성시</option>
												<option value="120">경기도 광주시</option>
												<option value="121">경기도 양주시</option>
												<option value="122">경기도 포천시</option>
												<option value="123">경기도 여주시</option>
												<option value="124">경기도 연천군</option>
												<option value="125">경기도 가평군</option>
												<option value="126">경기도 양평군</option>
												<option value="127">강원도</option>
												<option value="128">강원도 춘천시</option>
												<option value="129">강원도 원주시</option>
												<option value="130">강원도 강릉시</option>
												<option value="131">강원도 동해시</option>
												<option value="132">강원도 태백시</option>
												<option value="133">강원도 속초시</option>
												<option value="134">강원도 삼척시</option>
												<option value="135">강원도 홍천군</option>
												<option value="136">강원도 횡성군</option>
												<option value="137">강원도 영월군</option>
												<option value="138">강원도 평창군</option>
												<option value="139">강원도 정선군</option>
												<option value="140">강원도 철원군</option>
												<option value="141">강원도 화천군</option>
												<option value="142">강원도 양구군</option>
												<option value="143">강원도 인제군</option>
												<option value="144">강원도 고성군</option>
												<option value="145">강원도 양양군</option>
												<option value="146">충청북도</option>
												<option value="147">충청북도 청주시상당구</option>
												<option value="148">충청북도 청주시서원구</option>
												<option value="149">충청북도 청주시흥덕구</option>
												<option value="150">충청북도 청주시청원구</option>
												<option value="151">충청북도 충주시</option>
												<option value="152">충청북도 제천시</option>
												<option value="153">충청북도 보은군</option>
												<option value="154">충청북도 옥천군</option>
												<option value="155">충청북도 영동군</option>
												<option value="156">충청북도 증평군</option>
												<option value="157">충청북도 진천군</option>
												<option value="158">충청북도 괴산군</option>
												<option value="159">충청북도 음성군</option>
												<option value="160">충청북도 단양군</option>
												<option value="161">충청남도</option>
												<option value="162">충청남도 천안시동남구</option>
												<option value="163">충청남도 천안시서북구</option>
												<option value="164">충청남도 공주시</option>
												<option value="165">충청남도 보령시</option>
												<option value="166">충청남도 아산시</option>
												<option value="167">충청남도 서산시</option>
												<option value="168">충청남도 논산시</option>
												<option value="169">충청남도 계룡시</option>
												<option value="170">충청남도 당진시</option>
												<option value="171">충청남도 금산군</option>
												<option value="172">충청남도 부여군</option>
												<option value="173">충청남도 서천군</option>
												<option value="174">충청남도 청양군</option>
												<option value="175">충청남도 홍성군</option>
												<option value="176">충청남도 예산군</option>
												<option value="177">충청남도 태안군</option>
												<option value="178">전라북도</option>
												<option value="179">전라북도 전주시완산구</option>
												<option value="180">전라북도 전주시덕진구</option>
												<option value="181">전라북도 군산시</option>
												<option value="182">전라북도 익산시</option>
												<option value="183">전라북도 정읍시</option>
												<option value="184">전라북도 남원시</option>
												<option value="185">전라북도 김제시</option>
												<option value="186">전라북도 완주군</option>
												<option value="187">전라북도 진안군</option>
												<option value="188">전라북도 무주군</option>
												<option value="189">전라북도 장수군</option>
												<option value="190">전라북도 임실군</option>
												<option value="191">전라북도 순창군</option>
												<option value="192">전라북도 고창군</option>
												<option value="193">전라북도 부안군</option>
												<option value="194">전라남도</option>
												<option value="195">전라남도 목포시</option>
												<option value="196">전라남도 여수시</option>
												<option value="197">전라남도 순천시</option>
												<option value="198">전라남도 나주시</option>
												<option value="199">전라남도 광양시</option>
												<option value="200">전라남도 담양군</option>
												<option value="201">전라남도 곡성군</option>
												<option value="202">전라남도 구례군</option>
												<option value="203">전라남도 고흥군</option>
												<option value="204">전라남도 보성군</option>
												<option value="205">전라남도 화순군</option>
												<option value="206">전라남도 장흥군</option>
												<option value="207">전라남도 강진군</option>
												<option value="208">전라남도 해남군</option>
												<option value="209">전라남도 영암군</option>
												<option value="210">전라남도 무안군</option>
												<option value="211">전라남도 함평군</option>
												<option value="212">전라남도 영광군</option>
												<option value="213">전라남도 장성군</option>
												<option value="214">전라남도 완도군</option>
												<option value="215">전라남도 진도군</option>
												<option value="216">전라남도 신안군</option>
												<option value="217">경상북도</option>
												<option value="218">경상북도 포항시남구</option>
												<option value="219">경상북도 포항시북구</option>
												<option value="220">경상북도 경주시</option>
												<option value="221">경상북도 김천시</option>
												<option value="222">경상북도 안동시</option>
												<option value="223">경상북도 구미시</option>
												<option value="224">경상북도 영주시</option>
												<option value="225">경상북도 영천시</option>
												<option value="226">경상북도 상주시</option>
												<option value="227">경상북도 문경시</option>
												<option value="228">경상북도 경산시</option>
												<option value="229">경상북도 군위군</option>
												<option value="230">경상북도 의성군</option>
												<option value="231">경상북도 청송군</option>
												<option value="232">경상북도 영양군</option>
												<option value="233">경상북도 영덕군</option>
												<option value="234">경상북도 청도군</option>
												<option value="235">경상북도 고령군</option>
												<option value="236">경상북도 성주군</option>
												<option value="237">경상북도 칠곡군</option>
												<option value="238">경상북도 예천군</option>
												<option value="239">경상북도 봉화군</option>
												<option value="240">경상북도 울진군</option>
												<option value="241">경상북도 울릉군</option>
												<option value="242">경상남도</option>
												<option value="243">경상남도 창원시의창구</option>
												<option value="244">경상남도 창원시성산구</option>
												<option value="245">경상남도 창원시마산합포구</option>
												<option value="246">경상남도 창원시마산회원구</option>
												<option value="247">경상남도 창원시진해구</option>
												<option value="248">경상남도 진주시</option>
												<option value="249">경상남도 통영시</option>
												<option value="250">경상남도 사천시</option>
												<option value="251">경상남도 김해시</option>
												<option value="252">경상남도 밀양시</option>
												<option value="253">경상남도 거제시</option>
												<option value="254">경상남도 양산시</option>
												<option value="255">경상남도 의령군</option>
												<option value="256">경상남도 함안군</option>
												<option value="257">경상남도 창녕군</option>
												<option value="258">경상남도 고성군</option>
												<option value="259">경상남도 남해군</option>
												<option value="260">경상남도 하동군</option>
												<option value="261">경상남도 산청군</option>
												<option value="262">경상남도 함양군</option>
												<option value="263">경상남도 거창군</option>
												<option value="264">경상남도 합천군</option>
												<option value="265">제주특별자치도</option>
												<option value="266">제주특별자치도 제주시</option>
												<option value="267">제주특별자치도 서귀포시</option>
										</select>
										</label>
											</div>
											<br><br><br>
											<div class="onoff-options">
											<h5 class="f-title"><i class="ti-settings"></i>환경 설정</h5>
											<div class="setting-row">
												<span>모임 초대 허용</span>
												<p>다른 회원으로부터 모임 초대를 받으시겠습니까?</p>
												<input type="hidden" id="input" value="${mypage.userOptionGroup}" name="userOptionGroup" required="required"/>
												<input type="checkbox" id="switch00" /> 
												<label for="switch00" data-on-label="ON" data-off-label="OFF"></label>
											</div>
											</div>
											</c:if>
											<div class="submit-btns">
												<button type="submit" class="mtr-btn"><span>수정</span></button>
												<button type="button" class="mtr-btn" id="can"><span>취소</span></button>
											</div>
										</form>                               
									</div>
								</div>	
								
							</div><!-- centerl meta -->
							<div class="col-lg-3">
								<aside class="sidebar static">
						
								<div class="widget">
											<h4 class="widget-title" id="recentnotice"><i class="ti-bell"></i>최근 알림</h4>
											<ul class="activitiez">
												<c:if test="${msgcount > 0 }">
											<c:forEach var="msg" items="${myMessage}">
												<li>
													<div class="activity-meta">
														<i>${item.postDate}</i> 
														<i>${msg.mgDate}</i><span><a href="#" title="">
														${msg.msContent} </a></span>
														<h6>
															by <a href="time-line.html">${mg.send}</a>
														</h6>
													</div>
												</li>
											</c:forEach>
											</c:if>
											<c:if test="${msgcount == 0 }">
											   받은 내역이 없습니다.
											</c:if>
											</ul>
										</div><!-- recent activites -->
								</aside>
							</div><!-- sidebar -->
						</div>	
					</div>
				</div>
			</div>
		</div>	
	</section>

	
	<div class="side-panel">
			<h4 class="panel-title">환경 설정</h4>
			<form method="post">
				<div class="setting-row">
					<span>모임 초대 여부</span>
					<input type="checkbox" id="switch101" /> 
					<label for="switch101" data-on-label="ON" data-off-label="OFF"></label>
				</div>
			</form>
		</div><!-- side panel -->		
	
	

	
	<jsp:include page="../mainpage/footer.jsp" />
	
	<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/js/map-init.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>

		<script>
    
		var date1 = '${item.postDate}';
		document.write(timeBefore(new Date(date1))); 
		
		   //프사 등록
	       $('input[type=file]').on('change', preview);
		   
		   function preview(e){
			   var file = e.target.files[0];
			   
			   if(!file.type.match('image.*')) {
				   alert("확장자는 이미지 확장자만 가능합니다.");
				   return;
			   }
			   
			   var reader = new FileReader();
			   
			   reader.readAsDataURL(file);
			   
			   reader.onload = function(e){
				   
				   $("#imgpic").attr('src', e.target.result);
				   
				   var form = $("#userImageForm")[0];
				     
				   console.log(form);
			        var formData = new FormData(form);
				    console.log(formData);
			        formData.append("userKey", "${mypage.userKey }");
			        formData.append("file", $("#uploadfile")[0].files[0]);
				   
			         
			        $.ajax({
			              url : "userImage"
			            , type : "POST"
			            , processData : false
			            , contentType : false
			            , data : formData
			            , success:function() {
			               console.log("success");
			            }
			        });
			   }
			   
			   
			    
		   }
    
    	//회원 지역
    	var loc = $("#inputLoc").val();
    	$("#nogada1").val(loc);
    	
    	//회원이 선택했던 지역 그대로 선택한 채로 가져오기
    	$(".chosen-single>span").last().text($("#nogada1>option:selected").text());
    	
    	//
    	var invite = $("#switch00").val();
    	console.log(invite);
    
    
    
    //유효성
    var checkPassword = false;
	var checkEmail = false;
    
	//비밀번호
    $('#inputPassword').keyup(function() {
		var password = $(this).val();
        console.log(password);
		//5글자 이상, 12글자 이하 영숫자포함
		var req = /^\w{5,12}$/;
		//var label = $('#inputPassword');

		if (req.test(password)) {
			checkPassword = true;
		} else {
			checkPassword = false;
			$('#passla').text('영숫자로 5글자 이상 12글자 이하로 작성하세요.');
		}
	});

    //이메일
	$('#inputEmail').keyup(function() {
  		var email = $(this).val();
		var req = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		//var label = $('#inputEmail');
			if (req.test(email)) {
				checkEmail = true;
			  
			} else {
				checkEmail = false;
			    $('#emailla').text('올바른 이메일을 입력하세요.');
			}
	});
    
    //회원 정보 수정 이동
	$(".jungbo").click(function(){
		location.href="mypage2";
	});
	
	//회원 관심사 수정 이동
	$(".gss").click(function(){
		location.href="mypage3";
	});
    
	//취소버튼 누르면 마이페이지 메인으로 이동
	$("#can").click(function(){
		location.href="mypage";
		return false;
	});
	
	//이름 누르면 마이페이지 메인으로 이동
	$("#mymy").click(function(){
		location.href="mypage";
		return false;
	});
	
	//회원 작성글 이동
	$("#recentwww").click(function() {
		location.href = "mypage4";
	});

	
	//알림 이동
	$("#recentnotice").click(function() {
		location.href = "mypage5";
		return false;
	});
	
	
	//모임 이동
	$("#mymygroups").click(function() {
		location.href = "mypage6";
		return false;
	});
	</script>	
	
	</body>
	
	</html>