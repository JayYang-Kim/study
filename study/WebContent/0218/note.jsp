<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

body {
	font-size: 14px;
	font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
	box-sizing: border-box; /* padding과 border는 크기에 포함되지 않음 */
}

a {
	color: #000000;
	text-decoration: none;
	cursor: pointer;
}

a:active, a:hover {
	text-decoration: underline;
	color: tomato;
}

.btn {
	color: #333333;
	font-weight: 500;
	border: 1px solid #cccccc;
	background-color: #fff;
	text-align: center;
	cursor: cursor;
	padding: 3px 10px 5px;
	border-radius: 4px;
}

.btn:active, .btn:focus, .btn:hover {
	background-color: #e6e6e6;
	border-color: #adadad;
	color: #333333;
}

.boxTF {
	border: 1px solid #999999;
	padding: 4px 5px 5px;
	border-radius: 4px;
	background-color: #ffffff;
}

.selectField {
	border: 1px solid #999999;
	padding: 2px 5px 6px;
	border-radius: 4px;
	font-size: 12px;
}

.boxTA {
	border: 1px solid #999999;
	height: 150px;
	padding: 3px 5px;
	border-radius: 4px;
	background-color: #ffffff;
}

.title {
	width: 100%;
	height: 45px;
	line-height: 45px;
	text-align: left;
	font-weight: bold;
	font-size: 15px;
}
</style>

<script type="text/javascript">
	function itemAdd() {
		var f = document.noteForm;
		var item = f.itemLeft;
		item[0] = new Option("홍길동", "hong");
		item[1] = new Option("이자바", "lee");
		item[2] = new Option("김자바", "kim");
		item[3] = new Option("호자바", "ho");
		item[4] = new Option("마자바", "ma");
		item[5] = new Option("다자바", "da");
		item[6] = new Option("아자바", "a");
	}

	function itemMove(ob) {
		var f = document.noteForm;
		var source, target;
		
		// target : 위치 / source : 사람 목록
		if (ob == "left") {
			target = f.itemLeft;
			source = f.itemRight;
		} else {
			target = f.itemRight;
			source = f.itemLeft;
		}

		var n = target.length;
		var len = source.length;

		for (var i = 0; i < len; i++) {
			if (source.options[i].selected) { // option중 선택된 값만 체크
				target[n++] = new Option(source.options[i].text,
						source.options[i].value);
				source[i] = null;
				i--;
				len--;
			}
		}
	}

	function itemAllMove(ob) {
		var f = document.noteForm;
		var source, target;

		if (ob == "left") {
			target = f.itemLeft;
			source = f.itemRight;
		} else {
			target = f.itemRight;
			source = f.itemLeft;
		}

		var n = target.length;
		var len = source.length;

		for (var i = 0; i < len; i++) {
			target[n++] = new Option(source.options[0].text,
					source.options[0].value);
			source[0] = null; // target쪽으로 옮긴 후 맨 위에 있는 값 지우기
		}
	}

	function sendOk() {
		var f = document.noteForm;

		/* 받는사람이 없는 경우 */
		if (f.itemRight.length == 0) {
			alert("메시지를 받을 사람을 먼저 추가해주세요.");
			return;
		}

		if (!f.msg.value) {
			alert("메시지를 입력해주세요.");
			return;
		}

		// SELECT 박스가 multiple 속성을 가지고 있는 경우
		// 선택된 데이터만 서버로 전송되므로 모든 항목을 선택 시킴
		for (var i = 0; i < f.itemRight.length; i++) {
			f.itemRight[i].selected = true;
		}

		f.action = "note_ok.jsp";
		f.submit();
	}

	/* 페이지 내용 읽기 전 처리 - 방법1 */
	if (window.attachEvent) { // IE 낮은 버전 (8이하 버전)
		window.attachEvent("onload", function() {
			itemAdd();
		});
	} else if (window.addEventListener) { // IE, FF, 크롬등
		window.addEventListener("load", function() {
			itemAdd();
		}, false);
	}

	/* 페이지 내용 읽기 전 처리 - 방법2 */
	/* window.onload = function() {
		itemAdd();
	} */
</script>

</head>
<body>

	<div style="width: 400px; margin: 30px auto 0px;">

		<div style="">
			<h3>
				<span>|</span> 쪽지 보내기
			</h3>
		</div>

		<form name="noteForm" method="post">
			<table
				style="width: 400px; margin: 10px auto 0px; padding: 5px 5px 0;">
				<tr height="25">
					<td width="150"><span>친구목록</span></td>
					<td width="100">&nbsp;</td>
					<td width="150"><span>받는사람</span></td>
				</tr>

				<tr>
					<td align="center" style="padding: 3px;"><select
						name="itemLeft" multiple="multiple" class="selectField"
						style="width: 130px; height: 120px;"></select></td>
					<td align="center">
						<button type="button" class="btn" onclick="itemMove('right');"
							style="display: block; width: 80px;">&gt;</button>
						<button type="button" class="btn" onclick="itemAllMove('right');"
							style="display: block; width: 80px;">&gt;&gt;</button>
						<button type="button" class="btn" onclick="itemMove('left');"
							style="display: block; width: 80px;">&lt;</button>
						<button type="button" class="btn" onclick="itemAllMove('left');"
							style="display: block; width: 80px;">&lt;&lt;</button>
					</td>
					<td align="center" style="padding: 2px;"><select
						name="itemRight" multiple="multiple" class="selectField"
						style="width: 130px; height: 120px;">
					</select></td>
				</tr>
				<tr height="25">
					<td colspan="3" align="left" style="padding-top: 5px;"><span>메시지</span>
					</td>
				</tr>
				<tr>
					<td colspan="3" style="padding: 3px;"><textarea rows="5"
							cols="60" name="msg" class="boxTA"
							style="height: 60px; width: 95%;"></textarea></td>
				</tr>
			</table>

			<table style="width: 400px; margin: 0px auto 0px;">
				<tr height="30">
					<td align="right" style="padding-right: 4%;">
						<button type="button" class="btn" onclick="sendOk();">
							쪽지보내기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>