/* 모임장의 가입양식 수정 페이지 */
$(function(){
	var output = '';
	var count = 0;
	
	/* 가입양식 추가 버튼 hover 이벤트 */
	$('.addSample').hover(function() {
		// hover 발생 시
		$(this).css('background', '#4f93ce');
		$(this).children().css('color', 'white');
	}, function() {
		// hover 끝날 시 
		$(this).css('background', '#f1f1f1');
		$(this).children().css('color', '#403f3fc7');
	});
	
	/* 가입양식 추가 버튼 클릭 시 */
	$('.addSample').click(function() {
		output = '';
		event.preventDefault();	// button 클릭 시 form 제출하는 이벤트 막기
		
		count = $('.form-group').length;	// 가입 양식의 개수 -- 기본적으로 '자기소개' 양식 때문에 1이다. 
		
		output += '<div class = "form-group">';
		switch(count) {
		case 1:
			output += '	<input type = "text" required = "required" name = "quest1">';
			break;
		case 2:
			output += '	<input type = "text" required = "required" name = "quest2">';
			break;
		case 3:
			output += '	<input type = "text" required = "required" name = "quest3">';
			break;
		case 4:
			output += '	<input type = "text" required = "required" name = "quest4">';
			break;
		case 5:
			output += '	<input type = "text" required = "required" name = "quest5">';
			break;
		case 6:
			count = 5;
			alert('최대 다섯 개의 가입양식만 작성할 수 있습니다.');
			return false;
			break;
		}
		output += '	<label class = "control-label" for = "input">가입 양식을 적어주세요.</label><i class="mtrl-select"></i>';
		output += '</div>';
		output += '<button class = "removeBtn">삭제</button>';
		
		$('#signupSettingForm').append(output);
	});
	
	
	/* 가입양식 수정완료 버튼 클릭 시 */
	$('#confirmBtn').click(function() {
		console.log('수정완료 클릭');
		var data = $('#signupSettingForm').serialize() + '&groupkey=' + $('#signgroupkey').val();
		output = '';
		$.ajax({
			type : 'POST',
			url : 'groupSignupSetting',
			data : data,
			success : function(data) {
				console.log(data);
				if (data.result == 1) {
					alert('가입양식 수정이 완료되었습니다.');
					console.log('append 할 부분으로 넘어왔다.');
					
					$('#signupSettingForm').html('');
					
					output += '<form id = "signupSettingForm">';
					output += '	<div class = "form-group">';
					output += '		<input type = "text" required = "required" name = "introduce">';
					output += '		<label class = "control-label" for = "input">' + data.introduce + '</label><i class="mtrl-select"></i>';
					output += '	</div>';
					
					if (data.quest1 != null) {
						output += '<div class = "form-group">';
						output += '	<input type = "text" required = "required" name = "quest1">';
						output += '	<label class = "control-label" for = "input">' + data.quest1 + '</label><i class="mtrl-select"></i>';
						output += '</div>';
						output += '<button class = "removeBtn">삭제</button>';
					}
					
					if (data.quest2 != null) {
						output += '<div class = "form-group">';
						output += '	<input type = "text" required = "required" name = "quest2">';
						output += '	<label class = "control-label" for = "input">' + data.quest2 + '</label><i class="mtrl-select"></i>';
						output += '</div>';
						output += '<button class = "removeBtn">삭제</button>';
					}
					
					if (data.quest3 != null) {
						output += '<div class = "form-group">';
						output += '	<input type = "text" required = "required" name = "quest3">';
						output += '	<label class = "control-label" for = "input">' + data.quest3 + '</label><i class="mtrl-select"></i>';
						output += '</div>';
						output += '<button class = "removeBtn">삭제</button>';
					}
					
					if (data.quest4 != null) {
						output += '<div class = "form-group">';
						output += '	<input type = "text" required = "required" name = "quest4">';
						output += '	<label class = "control-label" for = "input">' + data.quest4 + '</label><i class="mtrl-select"></i>';
						output += '</div>';
						output += '<button class = "removeBtn">삭제</button>';
					}
					
					if (data.quest5 != null) {
						output += '<div class = "form-group">';
						output += '	<input type = "text" required = "required" name = "quest5">';
						output += '	<label class = "control-label" for = "input">' + data.quest5 + '</label><i class="mtrl-select"></i>';
						output += '</div>';
						output += '<button class = "removeBtn">삭제</button>';
					}
					
					$('#signupSettingForm').append(output);
				} else {
					alert('가입양식 수정에 실패했습니다. 다시 시도해주세요.');
				}
				
			},
			error : function(request, status, error) {
				console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
			}
		}); // ajax end
	});
	
	/* 가입양식 삭제 버튼 클릭 시 */
	$(document).on('click', '.removeBtn', function() {
		event.preventDefault();
		console.log('삭제할 인덱스 = ' + $(this).prev().index());		// 1, 3, 5, 7, 9
		$(this).prev().remove();	// 클릭한 삭제버튼에 해당하는 폼 삭제
		$(this).remove();			// 클릭한 삭제버튼도 삭제 
		
		
		// 가입 양식 삭제 시 다음 차례에 있는 양식의 input name은 각각 -1씩 되어야 한다.
		
	});
});