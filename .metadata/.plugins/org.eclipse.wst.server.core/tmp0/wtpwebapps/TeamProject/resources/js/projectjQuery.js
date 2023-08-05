// projectjQuery

function notice() {
		let R = $('#result').val();
		if (R != "") {
			alert(R);
			$('#result').val("");
		}
}

function searchAddr() {
	$('#joinAddr1, #joinAddr2').click(function() {
		new daum.Postcode({
			oncomplete: function(data) {
				$('#joinAddr1').val(data.zonecode);
				$('#joinAddr2').val(data.roadAddress)
			}
		}).open();
	});
}

function idCheck() {
	$('#joinId').keyup(function() {
		let tp_m_id = $('#joinId').val();
		$.getJSON("member.id.check?tp_m_id=" + tp_m_id, function(idChk) {
			if (idChk.member[0] == null) {
				$('#joinIdChk').css('opacity', '0');
			} else {
				$('#joinIdChk').css('opacity', '1');
			}
		});
	});
}

function nicknameCheck() {
	$('#joinNick').keyup(function() {
		let tp_m_nickname = $('#joinNick').val();
		$.getJSON("member.nickname.check?tp_m_nick=" + tp_m_nickname, function(nicknameChk) {
			if (nicknameChk.member[0] == null) {
				$('#joinNicknameChk').css('opacity', '0');
			} else {
				$('#joinNicknameChk').css('opacity', '1');
			}
		});
	});
	
	$('#updateNick').keyup(function() {
		let tp_m_nickname = $('#updateNick').val();
		let tp_m_nicknameNow = $('#updateNicknameNow').val();
		$.getJSON("member.nickname.check?tp_m_nick=" + tp_m_nickname, function(updateNicknameChk) {
			if (updateNicknameChk.member[0] == null || tp_m_nickname == tp_m_nicknameNow) {
				$('#updateNicknameChk').css('opacity', '0');
			} else if(updateNicknameChk.member[0] != null) {
				$('#updateNicknameChk').css('opacity', '1');
			}
		});
	});
}

function noticeChk() {
	setInterval(() => {
		if ($('#noticeChk').is(':checked')) {
			$('#isNotice').val(1);
		} else {
			$('#isNotice').val(0);
		}
	}, 1);
}

function textareaScroll() {
	const DEFAULT_HEIGHT = 180;
	const DEFAULT_HEIGHT2 = 20;

	const $textarea = document.querySelector('.textarea');
	const $replyarea = document.querySelector('.replyarea');
	
	$textarea.oninput = (event) => {
		  const $target = event.target;

		  $target.style.height = 0;
		  $target.style.height = DEFAULT_HEIGHT + $target.scrollHeight + 'px';
		};
	$replyarea.oninput = (event) => {
			const $target = event.target;
			
			$target.style.height = 0;
			$target.style.height = DEFAULT_HEIGHT2 + $target.scrollHeight + 'px';
		};
}



$(function () {
	notice();
	searchAddr();
	idCheck();
	nicknameCheck();
	noticeChk();
	textareaScroll();
});