<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style.css">


<meta name="viewport" content="width-device-width, initial-scale=1.0">
<title>회원가입(수정)</title>
<link rel="icon" href="img/icons8-favorite-48.png" type="image/x-icon">



<style>
@import
	url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	outline: none;
	font-family: 'Poppins', sans-serif;
}

  #spanid {
    display: inline-block;

    height: 20px; /* 원하는 높이로 설정 */
    overflow: hidden;
    white-space: nowrap;
    display: inline-block;
    height: 20px;
    overflow: hidden;
    white-space: nowrap;
    color: #F44336;
    text-align: right;
    width: 100%;
    font-size: 14px;
  }


body {
	display: flex;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	overflow: hidden;
}

@
keyframes animatedBackground {from { background-position:0100%;
	
}

to {
	background-position: 100% 100%;
}

}
@
-webkit-keyframes  animatedBackground {from { background-position:0100%;
	
}

to {
	background-position: 100% 100%;
}

}
#content {
	position: fixed;
	top: 5em;
	height: 1em;
	width: 19em;
	background-color: rgba(1, 1, 1, 0.5);
	color: white;
	padding: 2em;
	border-bottom-right-radius: 5em;
	-webkit-border-bottom-right-radius: 5em;
	border-top-left-radius: 5em;
	-webkit-border-top-left-radius: 5em;
}

::selection {
	color: #fff;
	background: #d43f8d;
}
/* 숫자 입력 필드의 화살표 숨김 */
input[type="number"]::-webkit-inner-spin-button, input[type="number"]::-webkit-outer-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}
</style>

<script src="<%=request.getContextPath()%>/Contents/js/code.jquery.com_jquery-3.7.0.min.js"></script>


</head>
<body id="signUpWrap">
	<!--1 약관동의, 2 이메일(인증), 3 이름, 아이디, 비밀번호, 4 전화번호, 생년월일, 성별-->

	<div class="container">
		<header>
			<a href="index.jsp"><img class="img-fluid" src="img/logo.png"
				alt="Logo" style="width: 50%;"></a>
		</header>
		<div class="progress-bar">
			<div class="step">
				<p>약관동의</p>
				<div class="bullet">
					<span>1</span>
				</div>
				<div class="check fas fa-check"></div>
			</div>

			<div class="step">
				<p>본인인증</p>
				<div class="bullet">
					<span>2</span>
				</div>
				<div class="check fas fa-check"></div>
			</div>

			<div class="step">
				<p>회원정보</p>
				<div class="bullet">
					<span>3</span>
				</div>
				<div class="check fas fa-check"></div>
			</div>

			<div class="step">
				<p>가입성공</p>
				<div class="bullet">
					<span>4</span>
				</div>
				<div class="check fas fa-check"></div>
			</div>
		</div>
		<div class="form-outer">
			<form action="<%=request.getContextPath()%>/signUp.do" method="post">
				<!-- 1페이지 약관동의  -->
				<div class="page slidepage">
					<div class="">
						<div class="txr">
							<div class="prov">
								<div class="prov_con">

									<h5>제 1장 총칙</h5>
									<div>
										<h6>제1조 (목적)</h6>
										<p>이 약관은 제주어때글로벌이 운영하는 제주어때닷컴(http://www.jejucompay.com)
											인터넷쇼핑몰(이하 "제주어때"라 한다)에서 제공하는 인터넷관련 서비스(이하 "서비스"라 한다)를 이용함에 있어
											제주어때글로벌과 이용자의 권리 의무 및 책임사항을 규정함을 목적으로 합니다.</p>
									</div>
									<div>
										<h6>제2조 (정의)</h6>
										<p>① "제주어때" 란 제주어때글로벌이 재화 또는 용역(이하 "재화등"이라 함)을 이용자에게 제공하기
											위하여 컴퓨터등 정보통신 설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러
											인터넷쇼핑몰을 운영하는 사업자의 의미로도 사용합니다</p>
										<p>② "이용자"란 "제주어때"에 접속하여 이 약관에 따라 "제주어때"가 제공하는 서비스를 받는 회원
											및 비회원을 말합니다.</p>
										<p>③ '회원'이라 함은 "제주어때"에 개인정보를 제공하여 회원등록을 한 자로서, " 제주어때"의
											정보를 지속적으로 제공받으며, " 제주어때"가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.</p>
										<p>④ '비회원'이라 함은 회원에 가입하지 않고 " 제주어때"가 제공하는 서비스를 이용하는 자를
											말합니다.</p>
										<p>⑤ ‘여행상품’이라 함은 ‘제주어때’가 제공하는 숙박업소 예약, 기타 여행관련 부가서비스 예약 등을
											모두 포함하는 무형의 상품을 말합니다.</p>
									</div>

									<div>
										<h6>제3조 (약관 등의 명시와 설명 및 개정)</h6>
										<p>① " 제주어때"는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을
											처리할 수 있는 곳의 주소를 포함), 전화번호,팩스번호,전자우편 주소, 사업자등록번호, 통신판매업신고번호,
											개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 인터넷쇼핑몰의 초기 서비스화면(전면)에 게시합니다만, 약관의
											내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.</p>
										<p>② " 제주어때"는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회,
											환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여
											이용자의 확인을 구하여야 합니다.</p>
										<p>③ " 제주어때"는 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법,
											전자서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는
											범위에서 이 약관을 개정할 수 있습니다.</p>
										<p>④ " 제주어때"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께
											인터넷쇼핑몰의 초기화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게
											약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 " 제주어때"는
											개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.</p>
										<p>⑤ " 제주어때"가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만
											적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을
											체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간내에'”
											제주어때"에 송신하여 " 제주어때"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.</p>
										<p>⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에
											관한 법률, 약관의 규제등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자보호지침 및 관계법령
											또는 상관례에 따릅니다.</p>
									</div>

									<div>
										<h6>제4조 (서비스의 제공 및 변경)</h6>
										<p>① " 제주어때"는 다음과 같은 업무를 수행합니다.</p>
										<p>1. ‘여행상품’에 대한 정보 제공 및 예약대행 서비스</p>
										<p>2. 구매계약이 체결된 재화 또는 용역의 배송</p>
										<p>3. 기타 " 제주어때"가 정하는 업무</p>
										<p>② “제주어때”는 각 숙소별 세부정보를 해당 숙소 또는 전문 공급업체에서 실시간으로 전달받아
											참고용으로 제공하고 있으나 일부 부정확한 정보가 포함이 되어 있을 수 있으므로 명확한 정보확인이 필요한 부분은
											반드시 제주어때 고객센터를 통하여 확인하신 후 예약을 진행하시기 바라며 미 확인으로 발생된 피해에 대해서
											제주어때는 책임을 지지 않습니다.</p>
										<p>③ “제주어때”는 FIT(Free Independent Tourism,개별자유여행)고객을 대상으로
											판매한다는 조건으로 계약된 Wholesale(도매)가에 대행수수료와 세금, 봉사료가 포함된 요금을 제공합니다.
											단, 동일한 일자에 동일한 숙소의 4방 이상 예약 시에는 Group(단체예약)으로 간주되어
											Wholesale(도매)요금이 아닌 별도 요금과 취소정책이 적용될 수 있습니다. 이럴 경우 “제주어때”는
											고객에게 제 8조항에 의거하여 통보하고 예약 유지 여부를 확인하며 취소를 원할 경우 제 12조에 의거하여 취소
											처리를 진행해 드립니다.</p>
										<p>④ “제주어때”는 현지숙소 및 전문 공급업체가 정한 요금 카테고리 중 레저 카테고리를 기준으로 한
											할인요금을 제공합니다. 단, 학회 및 박람회 참여등과 같은 비즈니스 목적의 숙소예약 시에는 레저 카테고리
											요금이 아닌 비즈니스 카테고리의 요금이 적용되므로 비즈니스 카테고리 요금을 제공하지 않는 “제주어때”에서
											비즈니스 목적의 호텔예약을 하신 경우에는 현지 호텔에서 예약 불가 또는 추가금액 요구가 있을 수 있으며
											“제주어때”는 이에 따른 손해에 대한 책임을 지지 않습니다. 비즈니스 목적의 호텔 예약을 원하실 경우에는
											제주어때 고객센터로 문의하시기 바랍니다.</p>
										<p>⑤ “제주어때”가 제공하는 요금은 현지숙소에서 보여지는 요금과 다를 수 있으며 최저가를 보장하지
											않습니다.</p>
										<p>⑥ "제주어때"는 “여행상품”의 품절 또는 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할
											“여행상품”의 내용을 변경할 수 있습니다. 이 경우에는 변경된 내용 및 제공일자를 명시하여 해당상품의
											상세내용을 게시한 곳에 즉시 공지합니다.</p>
										<p>⑦ "제주어때”가 제공하기로 이용자와 계약을 체결한 “여행상품”의 내용을 품절 또는 변경 등의
											사유로 변경할 경우에는 그 사유를 제8조에 정한 방법으로 이용자에게 통지하고 "제주어때"는 이로 인하여
											이용자가 입은 손해를 배상합니다. 다만, "제주어때"의 고의 또는 과실이 없음을 입증하는 경우에는 그러하지
											아니합니다.</p>
										<p>⑧ “여행상품”은 당일 이후 재판매가 불가한 무재고 상품이므로 객실 판매현황에 따라 재고소진을
											목적으로 해당 숙소 또는 전문 공급업체에서 자체적으로 일시적인 할인판매를 진행할 수 있으며 이로 인해 동일
											숙소의 기존 예약자들의 결제금액과 차이가 발생할 경우 “제주어때”는 이에 대한 차액을 보상하지 않습니다.</p>
										<p>⑨ 숙소에서 제공하는 동일한 유료서비스라 하더라도 “제주어때”에서 제공하는 요금과 해당 숙소에서
											제공하는 요금 간 차이가 있을 수 있으며 “제주어때”는 이 차액에 대한 보상을 하지 않습니다.</p>
									</div>
									<div>
										<h6>제5조 (서비스의 중단)</h6>
										<p>① "제주어때"는 컴퓨터 등 정보통신설비의 보수점검,교체 및 고장, 통신의 두절 등의 사유가 발생한
											경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</p>
										<p>② 제1항에 의한 서비스 중단의 경우에는 "제주어때"는 제8조에 정한 방법으로 이용자에게
											통지합니다.</p>
										<p>③ "제주어때"는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가
											입은 손해에 대하여 배상합니다. 단, "제주어때"가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지
											아니합니다.</p>
									</div>
									<div>
										<h6>제6조 (회원가입)</h6>
										<p>① 이용자는 "제주어때"가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는
											의사표시를 함으로서 회원가입을 신청합니다.</p>
										<p>"제주어때”는 1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한
											회원으로 등록합니다.</p>
										<p>1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만
											제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 "제주어때"의 회원재가입 승낙을 얻은 경우에는
											예외로 한다.</p>
										<p>2. 등록 내용에 허위, 기재누락, 오기가 있는 경우</p>
										<p>3. 기타 회원으로 등록하는 것이 "제주어때"의 기술상 현저히 지장이 있다고 판단되는 경우</p>
										<p>③ 회원가입계약의 성립시기는 "제주어때"의 승낙이 회원에게 도달한 시점으로 합니다.</p>
										<p>④ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로
											"제주어때"에 대하여 그 변경사항을 알려야 합니다.</p>
									</div>
									<div>
										<h6>제7조 (회원 탈퇴 및 자격 상실 등)</h6>
										<p>① 회원은 "제주어때"에 언제든지 탈퇴를 요청할 수 있으며 "제주어때"는 즉시 회원탈퇴를
											처리합니다.</p>
										<p>② 회원이 다음 각호의 사유에 해당하는 경우, "제주어때”는 회원자격을 제한 및 정지시킬 수
											있습니다.</p>
										<p>1. 가입 신청시에 허위 내용을 등록한 경우</p>
										<p>2. "제주어때"를 이용하여 예약한 “여행상품”의 대금, 기타 "제주어때"이용에 관련하여 회원이
											부담하는 채무를 기일에 지급하지 않는 경우</p>
										<p>3. 다른 사람의 "제주어때" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는
											경우</p>
										<p>③ "제주어때"가 회원 자격을 제한,정지 시킨 후, 동일한 행위가 2회이상 반복되거나 30일이내에
											그 사유가 시정되지 아니하는 경우 "제주어때"는 회원자격을 상실시킬 수 있습니다.</p>
										<p>④ "제주어때"가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를
											통지하고, 회원등록 말소전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.</p>
									</div>
									<div>
										<h6>제8조(회원에 대한 통지)</h6>
										<p>① "제주어때"가 회원에 대한 통지를 하는 경우, 회원이 “제주어때"와 미리 약정하여 지정한
											전자우편 주소로 할 수 있습니다.</p>
										<p>② "제주어때"는 불특정다수 회원에 대한 통지의 경우 1주일이상 "제주어때" 게시판에 게시함으로서
											개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는
											개별통지를 합니다.</p>
									</div>
									<div>
										<h6>제9조 (“여행상품” 구매신청)</h6>
										<p>① "제주어때"이용자는 "제주어때"상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청합니다.
										</p>
										<p>1. “여행상품”의 검색 및 선택</p>
										<p>2. 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력</p>
										<p>3. 각 상품별 약관내용, 청약철회권이 제한되는 상품, 기타서비스 등의 비용부담과 관련한 내용에
											대한 확인</p>
										<p>4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)</p>
										<p>5. “여행상품” 예약신청 및 이에 관한 확인 또는 "제주어때"의 확인에 대한 동의</p>
										<p>6. 결제방법의 선택</p>
										<p>② 예약 및 결제 단계에서 요청하신 사항 중 해당 숙소에서 별도 청구가 이루어 진 사항은 사전
											보장이 가능하지만 그 외 사항에 대해서는 보장되지 않습니다.</p>
										<p>③ 일부 숙소의 경우 별도 예고없이 24시간 프론트를 운영하지 않을 수 있으므로 늦은 체크인을
											원하실 경우에는 반드시 예약 및 결제 단계의 고객 요청사항 입력란에 해당 사항을 기재하시기 바라며 미 기재로
											인하여 발생하는 문제는 “제주어때”에서 책임지지 않습니다.</p>
									</div>
									<div>
										<h6>제10조 (계약의 성립)</h6>
										<p>① "제주어때"는 제9조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙하지 않을 수 있습니다.</p>
										<p>다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는
											법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.</p>
										<p>1. 신청 내용에 허위, 기재누락, 오기가 있는 경우</p>
										<p>2. 미성년자가 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우</p>
										<p>3. 기타 구매신청에 승낙하는 것이 "회사" 기술상 현저히 지장이 있다고 판단하는 경우</p>
										<p>② "제주어때"의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 후 계약금이 입금된
											시점에 계약이 성립한 것으로 봅니다.</p>
										<p>③ "제주어때"의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의
											정정 취소 등에 관한 정보 등을 포함하여야 합니다.</p>
										<p>④ “제주어때”에 선 결제 후 “여행상품”을 이용할 경우 결제 증빙자료 발급은 “제주어때”의
											웹사이트를 통해서만 가능합니다.</p>
									</div>
									<div>
										<h6>제11조 (지급방법)</h6>
										<p>"제주어때”에서 구매한 “여행상품”에 대한 대금지급방법은 다음 각호의 방법 중 가용한 방법으로 할
											수 있습니다. 호텔 직접지불의 경우 호텔 직접지불이 가능한 조건의 상품 선택 시에만 가능합니다.</p>
										<p>1. 실시간 계좌이체</p>
										<p>2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제</p>
										<p>3. 호텔 직접지불</p>
									</div>
									<div>
										<h6>제12조 (수신확인통지,구매신청 변경 및 취소)</h6>
										<p>① “제주어때”의 취소정책은 현지 호텔 또는 전문 공급업체의 규정과 약관법에 의거하며 호텔예약 및
											결제단계에서 회원에게 고지되고 이에 대한 동의를 하지 않을 경우 예약진행이 불가합니다.</p>
										<p>② "제주어때"는 이용자의 “여행상품” 구매에 대한 결제가 진행된 경우 이용자에게 신청 및
											결제내역을 이메일과 휴대전화 SMS를 통해 수신확인통지를 진행 합니다.</p>
										<p>③ 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시
											구매 또는 예약신청에 대한 변경 및 취소를 요청할 수 있고 "제주어때"는 각 상품별로 규정되어 있는 취소가능일
											이전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 단, 취소가능일 이후에는
											변경 및 취소가 불가합니다. 이러한 경우 제주어때는 고객님의 피해가 최소화 되도록 현지 숙소측과 적극적인
											중재를 진행하지만 최종 패널티에 대한 책임을 지지는 않습니다.</p>
										<p>④ 대금환불은 제15조의 청약철회 등에 관한 규정에 따릅니다.</p>
									</div>
									<div>
										<h6>제13조 (“여행상품” 이용권 제공)</h6>
										<p>① "제주어때"에서 제공하는 “여행상품”에 별도의 고지가 없는 이상, 이용자가 예약과 결제를 완료한
											즉시 해당 “여행상품”을 이용할 수 있는 이용권과 본 상품 이용에 적용되는 별도의 약관을 웹사이트를 통해
											제공하고 차질 없이 출발할 수 있도록 일련이 조치를 하여야 합니다.</p>
										<p></p>
										<p>② "제주어때"는 이용자가 구매한 “여행상품”의 이용권을 “제주어때” 사정으로 웹사이트를 통해
											제공하지 못할 경우 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 "제주어때"가 고의,과실이 없음을
											입증한 경우에는 그러하지 아니합니다.</p>
									</div>
									<div>
										<h6>제14조 (환급)</h6>
										<p>① "제주어때"는 이용자가 구매한 “여행상품”이 품절되어 제공을 할 수 없을 때에는 지체 없이 그
											사유를 이용자에게 통지하고 대금을 받은 날부터 2영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.</p>
										<p>② 이용자가 “여행상품”의 예약과 결제가 완료된 이후 계약을 해지할 경우 각 상품이용 계약 체결 시
											계약한 특별약관과 국내(외) 여행표준약관 및 국내(외) 소비자 피해보상규정에 의거 소정의 위약금을 공제하고
											환불해 드립니다.</p>
										<p>③ “제주어때”에 선 결제를 했음에도 불구하고 현지 숙소의 과실로 이중으로 결제되었을 경우 해당
											숙소에서 결제된 금액이 환불처리 됩니다.</p>
									</div>
									<div>
										<h6>제15조 (청약철회 등)</h6>
										<p>
											① "제주어때"와 “여행상품”의 구매에 관한 계약을 체결한 이용자는 숙박 예정일로부터 120일 이상 남거나
											취소 가능일 이내에는 100% 환불 및 청약철회가 가능합니다. 단, 취소가능일이 지나거나 취소불가 조건으로
											예약하신 경우 민법 제674조의3항과 특별약관에 의거하여 별도의 취소수수료가 부가될 수 있습니다.<br>
											(민법 제674조의3항(여행 개시 전의 계약 해제):여행자는 여행을 시작하기 전에는 언제든지 계약을 해제할 수
											있다. 다만, 여행자는 상대방에게 발생한 손해를 배상하여야 한다.)
										</p>
										<p>② 이용자는 “여행상품” 예약과 결제를 완료한 후 해당 상품의 이용 시작일이 지난 경우에는 취소 및
											교환을 할 수 없습니다.</p>
										<p>③ "제주어때"가 사전에 2항과 같은 상황에는 청약철회가 제한되는 사실을 소비자가 쉽게 알 수 있는
											곳에 명기하지 않을 경우 이용자의 청약철회등이 제한되지 않습니다.</p>
										<p>④ 이용자는 제1항 및 제2항의 규정에 불구하고 “여행상품”의 내용이 표시된 광고 내용과 다르거나
											계약내용과 다르게 이행된 때에는 해당 “여행상품”을 이용한 날부터 3월이내, 그 사실을 안 날 또는 알 수
											있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.</p>
									</div>
									<div>
										<h6>제16조 (청약철회 등의 효과)</h6>
										<p>① "제주어때"는 제14조에 의거하여 환급을 진행하고 이용자에게 재화 등의 환급을 지연한 때에는 그
											지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.</p>
										<p>② "제주어때"는 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로
											“여행상품”의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 “여행상품”의 대금의
											청구를 정지 또는 취소하도록 요청합니다.</p>
										<p>③ 청약철회 등의 경우 “여행상품” 예약철회에 필요한 비용은 이용자가 부담합니다. "제주어때"는
											상품별 특별약관에서 규정하고 있는 사항을 위반하지 않는 범위에서 이용자에게 청약철회 등을 이유로 위약금 또는
											손해배상을 청구하지 않습니다. 다만 상품의 내용이 표시광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회
											등을 하는 경우 “여행상품” 예약철회에 필요한 비용은 "제주어때"가 부담합니다.</p>
									</div>
									<div>
										<h6>제17조 ("회원"서비스 제공)</h6>
										<p>① "제주어때"는 약관이 정하는 바에 따라 지속적이고 안정적으로 상품 또는 서비스를 제공하는데
											최선을 다합니다</p>
										<p>② “제주어때”는 서비스이용과 관련하여 "회원"으로부터 제기된 문의, 요청사항 및 기타 불만사항이
											정당하다고 인정할 경우에는 이를 처리하여야 합니다.</p>
									</div>
									<div>
										<h6>제18조 (개인정보보호)</h6>
										<p>① "제주어때"는 "정보통신망법" 등 관계 법령이 정하는 바에 따라 "회원"의 개인정보를 보호하기
											위해 노력합니다. 개인정보의 보호 및 사용에 대해서는 관련법 및 "호탤패스"의 개인정보취급방침이 적용됩니다.
											다만, "제주어때"의 공식 사이트 이외의 링크된 사이트에서는 "제주어때"의 개인정보취급방침이 적용되지 않습니다
										</p>
										<p>②“제주어때”는 이용자가 제공한 개인정보를 당해 동의 없이 이 약관에 정한 목적 이외의 용도로
											이용하거나,회원서비스 수행목적 범위를 넘어서서 임의의 목적으로 제3자 에게 제공하지 않습니다.</p>
									</div>
									<div>
										<h6>제19조 (정보전송 및 제공)</h6>
										<p>① "제주어때"는 "회원"이 "서비스" 이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나
											전자우편 등의 방법으로 "회원"에게 제공할 수 있습니다. 다만,"회원"은 관련법에 따른 거래관련 정보 및
											고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편에 대해서 수신거절을 할 수 있습니다.</p>
										<p>② 제1항의 정보를 전화 및 모사전송기기에 의하여 전송하려고 하는 경우에는 "회원"의 사전 동의를
											받아서 전송합니다. 다만, "회원"의 거래관련 정보 또는 필수고지사항, 그리고 고객문의 등에 대한 회신에
											있어서는 예외됩니다.</p>
									</div>
									<div>
										<h6>제20조 ("제주어때"의 의무)</h6>
										<p>① "제주어때"는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이
											정하는 바에 따라 지속적이고, 안정적으로 “여행상품”을 제공하는데 최선을 다하여야 합니다.</p>
										<p>② "제주어때"는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보
											포함)보호를 위한 보안 시스템을 갖추어야 합니다.</p>
										<p>③ "제주어때"는 “여행상품”에 대하여 「표시,광고의공정화에관한법률」 제3조 소정의 부당한 표시
											광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.</p>
										<p>④ "제주어때"는 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.</p>
									</div>
									<div>
										<h6>제21조 (회원의 ID 및 비밀번호에 대한 의무)</h6>
										<p>① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.</p>
										<p>② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.</p>
										<p>③ 회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로
											"제주어때"에 통보하고 "제주어때"의 안내가 있는 경우에는 그에 따라야 합니다.</p>
									</div>
									<div>
										<h6>제22조 (이용자의 의무)</h6>
										<p>이용자는 다음 행위를 하여서는 안됩니다</p>
										<p>1. 신청 또는 변경 시 허위 내용의 등록</p>
										<p>2. 타인의 정보 도용</p>
										<p>3. "제주어때"에 게시된 정보의 변경</p>
										<p>4. "제주어때"가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시</p>
										<p>5. "제주어때" 기타 제3자의 저작권 등 지적재산권에 대한 침해</p>
										<p>6. "제주어때" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위</p>
										<p>7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 인터넷쇼핑몰에 공개
											또는 게시하는 행위</p>
									</div>
									<div>
										<h6>제23조 (저작권의 귀속 및 이용제한)</h6>
										<p>① "제주어때"가 작성한 저작물에 대한 저작권 기타 지적재산권은 "제주어때"에 귀속합니다.</p>
										<p>② 이용자는 "제주어때"를 이용함으로써 얻은 정보 중 “제주어때"에게 지적재산권이 귀속된 정보를
											"제주어때"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나
											제3자에게 이용하게 하여서는 안됩니다.</p>
										<p>③ "제주어때"는 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야
											합니다.</p>
										<p>④ "제주어때"와 “여행상품” 이용계약을 체결하지 않고 이용자가 "제주어때"에 게시된 정보를
											사용으로 인한 피해는 전적으로 이용자에게 있습니다.</p>
									</div>
									<div>
										<h6>제24조 (회원의 게시물 및 저작권)</h6>
										<p>① 게시물이라 함은 회원이 서비스를 이용하면서 게시한 글, 사진, 각종 파일과 링크 등을 말합니다.</p>
										<p>② 회원의 게시물에 의한 손해나 기타 문제가 발생하는 경우, 회원은 이에 대한 책임을 지게 되며,
											"제주어때"는 책임을 지지 않습니다.</p>
										<p>③ "제주어때"는 다음 각 호에 해당하는 게시물 등을 회원의 사전 동의 없이 임의 게시, 중단,
											수정, 삭제, 이동 또는 등록 거부 등의 관련 조치를 할 수 있습니다.</p>
										<p>- 다른 회원 또는 제 3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우</p>
										<p>- 공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우</p>
										<p>- 불법복제 또는 해킹을 조장하는 내용인 경우</p>
										<p>- 제 3자의 저작권을 침해하여 게시중단 요청을 받은 경우</p>
										<p>- 영리를 목적으로 하는 광고일 경우</p>
										<p>- 범죄와 결부된다고 객관적으로 인정되는 내용일 경우</p>
										<p>- 다른 이용자 또는 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우</p>
										<p>- 사적인 정치적 판단이나 종교적 견해의 내용으로 회사가 서비스 성격에 부합하지 않는다고 판단하는
											경우</p>
										<p>- 고객이 “여행상품” 이용후기를 작성한 시점 이후에 해당 호텔에 변경사항(리뉴얼, 폐업 등)이
											발생하여 현 시점에 근거한 정보제공이 되지 않는다고 판단될 경우</p>
										<p>- “제주어때”에서 규정한 게시물 원칙에 어긋나거나, 게시판 성격에 부합하지 않는 경우</p>
										<p>- 기타 관계법령에 위배된다고 판단되는 경우</p>
										<p>④ 회원이 게시한 게시물의 저작권은 게시한 회원에게 귀속됩니다. 단, "제주어때"는 서비스의 운영,
											전시, 전송, 배포, 홍보의 목적으로 회원의 별도 허락 없이 무상으로 저작권법에 규정하는 공정한 관행에
											합치되게 회원의 게시물을 사용할 수 있습니다.</p>
										<p>⑤ "제주어때"는 전항 이외의 방법으로 회원의 게시물을 이용하고자 하는 경우, 전화, 팩스,
											전자우편 등의 방법을 통해 사전에 회원의 동의를 얻어야 합니다.</p>
										<p>⑥ 회원이 이용계약 해지를 한 경우 타인에 의해 보관, 담기 등으로 재게시 되거나 복제된 게시물과,
											타인의 게시물과 결합되어 제공되는 게시물, 공용 게시판에 등록된 게시물 등은 삭제되지 않습니다.</p>
									</div>

									<div>
										<h6>제25조 (분쟁해결)</h6>
										<p>① "제주어때"는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여
											피해보상처리기구를 설치운영합니다.</p>
										<p>② "제주어때"는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만,
											신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.</p>
										<p>③ "제주어때"와 이용자간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는
											공정거래위원회 또는 시/도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.</p>
									</div>
									<div>
										<h6>제26조 (재판권 및 준거법)</h6>
										<p>① "제주어때"와 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에
											의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소
											또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.</p>
										<p>② "제주어때"와 이용자간에 제기된 전자상거래 소송에는 한국법을 적용합니다.</p>
									</div>
									<div>
										<h6>제27조(특별규정)</h6>
										<p>① 당 약관에 명시되지 않은 사항은 전자거래기본법, 전자서명법, 전자상거래등에서의 소비자보호에 관한
											법률 기타 관련법령의 규정 및 국내외 여행표준약관 등에 의합니다.</p>
										<p>② “제주어때”는 숙박업소 및 호텔공급업체와의 계약을 통하여 예약서비스만을 대행하고 있으므로 세부
											예약조건이나 규정은 “여행상품”의 상세정보에서 제공되는 해당 “여행상품”의 개별규정을 참고하신 후 예약 및
											결제를 진행하시기 바랍니다.</p>
									</div>
									<div>
										<h6>제 28 조 (개인정보 유효기간제)</h6>
										<p>① “제주어때”는 운영하는 “사이트” 에 가입한 회원이 1년 간 로그인 및 유선을 통한 이용 등
											이용 기록이 없을 경우 회원의 계정을 “휴면계정”처리하여 회원가입 단계에서 수집된 일체의 개인정보를 안전하게
											별도보관 하며, 이 경우 "제주어때"는 휴면계정 처리 예정일로부터 30일 이전에 해당 사실을 전자메일, 서면,
											SMS 중 하나의 방법으로 회원에게 사전 통지하고 회원이 로그인 및 유선을 통한 이용 등으로 "사이트"
											이용의사표시를 한 경우에는 이용의사표시 일로부터 1년간 회원의 계정을 “휴면계정”처리 하지 않습니다. 또한
											“제주어때”는 “휴면계정”처리된 회원의 개인정보를 이용,제공 하지 않습니다.</p>
									</div>
									<div>
										<h6>[부칙]</h6>
										<p>1. 본 약관은 2017년 12월 1일부터 적용됩니다.</p>
										<p>2. 2016년 2월 4일부터 2017년 11월 30일 까지 시행되던 종전의 약관은 본 약관으로
											대체합니다.</p>
									</div>

								</div>
							</div>
							<p class="prov_btm">
								<label class="implicit"><input type="radio"
									name="chk_agreeA" value="0"><span>동의 합니다.</span></label> <label
									class="implicit"><input type="radio" name="chk_agreeA"
									value="1"><span>동의하지 않습니다.</span></label>
							</p>
							<!-- ** 이용약관에 동의하셔야합니다. 얼랏창 기능 추가 -->
						</div>
					</div>
					<div class="field nextBtn">
						<button type="button">다음</button>
					</div>
				</div>

				<!-- 2페이지 본인 인증  -->
				<div class="page">
					<div class="field">
						<div class="label">이메일</div>
						<div class="sectionWrap">
							<input class="inp_wrap" type="text" name="email"
								placeholder="이메일 주소 형식" style="width: 80%;">
							<button type="button" class="btn_send btn_confirm" onclick="sendVerificationEmail()">인증번호전송</button>
							
							
							
							
							<input class="inp_wrap mt-2" type="text" placeholder="인증번호"
								style="width: 80%;">
								<!-- <button type="button" class="btn_send btn_confirm">확  인</button> -->
						</div>
						<!-- ** 올바른 이메일 주소 형식이 아닙니다 얼랏창 또는 문구 표시 기능 추가  -->
					</div>

					<div class="field btns" style="margin-top: 225px;">
						<button type="button" class="prev-1 prev">이전</button>
						<button type="button" class="next-1 next">다음</button>
					</div>
				</div>

				<!-- 3페이지 이름, 아이디, 비밀번호-->
				<div class="page">
					<div class="field">
						<div class="label">이름</div>
						<input class="name_signup" type="text" name="name"
							placeholder="이름 입력">
					</div>
					<div class="field">
						<div class="label">아이디</div>
						<div class="sectionWrap">
							<input class="id_signup" type="text" name="id"
								placeholder="아이디 입력">
							<button type="button" class="btn_send btn_confirm" onclick="sendIdToServlet()">중복검사</button>
							<!-- 화면에 안보임 span은  -->
							  <span id="spanid"></span><!-- 결과를 표시할 새로운 컨테이너 -->
						</div>
					</div>
					<div class="field">
						<div class="label">비밀번호</div>
						<input class="pass_signup" name="pass" type="password" placeholder="비밀번호 입력">
					</div>
					<div class="field btns">
						<button type="button" class="prev-2 prev">이전</button>
						<button type="button" class="next-2 next">다음</button>
					</div>
				</div>

				<!-- 4페이지 전화번호, 생년월일, 성별-->
				<div class="page">
					<div class="field">
						<div class="label">휴대폰번호</div>
						<input class="tel" name="tel" type="tel" placeholder="숫자만 입력">
					</div>
					<div class="field">
						<div class="label">생년월일</div>
						<input class="birth" name="birth" type="date">
					</div>
					<div class="field">
						<div class="label">성별</div>
						<select name="gender">
							<option value="남성">남성</option>
							<option value="여성">여성</option>
						</select>
					</div>
					<div class="field btns">
						<button type="button" class="prev-3 prev">이전</button>

						<button type="submit" class="next-3 next">회원가입</button>
					</div>
				</div>
			</form>
		</div>
	</div>


<script src="js/signUp.js"></script>
<script>
	//1페이지
	// DOM 로드 이후에 실행되도록 이벤트 리스너 등록

		// "다음" 버튼 클릭 시 이벤트 처리
		document.querySelector('.nextBtn')
				.addEventListener('click', checkRadio);

		function checkRadio() {
			var selectedRadio = document
					.querySelector('input[name=chk_agreeA]:checked');
			if (selectedRadio == null) {
				alert("이용약관에 동의해야 합니다.");
			} else {
				var value = selectedRadio.value;
				if (value == "0") {

					firstbuttonfunction();
				} else if (value == "1") {
					alert("이용약관에 동의해야 회원가입 하실 수 있습니다.");
				}
			}
		}

		//2페이지
        document.querySelector('.next-1').addEventListener('click', emailCheck);

        function emailCheck() {
            var email = document.querySelector('.inp_wrap').value;
            var num = document.querySelector('.mt-2').value;
            if (email == "" || num == "") {
                alert("이메일 인증은 필수입니다.");
            } else {
                // 이메일 인증이 확인되었을 때만 다음 페이지로 넘어감
                if (isEmailVerified()) {
                    secbuttonfunction();
                    
                } else {
                    alert("이메일 인증을 완료해야 다음 단계로 진행할 수 있습니다.");
                }
            }
        }

        // 이메일 인증 여부를 저장하는 변수
        var emailVerified = false;

        // 이메일 인증 여부를 반환하는 함수
        function isEmailVerified() {
            return emailVerified;
        }

        // 이메일 인증 완료 시 호출되는 함수
        function setEmailVerified(value) {
            emailVerified = value;
        }
		
        function sendVerificationEmail() {
            var uemail = document.querySelector('.inp_wrap').value;

            $.ajax({
                url: "<%=request.getContextPath()%>/EmailController.do",
                method: "POST",
                data: {
                    email: uemail,
                    verificationCode: "12345"
                },
                success: function (response) {
                	if(uemail==""){
                		alert("인증번호 전송에 실패했습니다.")
                    	setEmailVerified(false);
                	}else{
                	
                	 alert("인증번호가 전송되었습니다.");
                     // 이메일 전송 성공 시 이메일 인증 여부 설정
                     setEmailVerified(true);
                	}
                },
                error: function (xhr, status, error) {
                    console.error(error);
                    alert("이메일 전송 중 오류 발생");
                }
            });
        }
        
		    

		//3페이지
		document.querySelector('.next-2').addEventListener('click', infoCheck1);

		function infoCheck1() {
			var name = document.querySelector('.name_signup').value;
			var id = document.querySelector('.id_signup').value;
			var pass = document.querySelector('.pass_signup').value;

			if (name == "" || id == "" || pass == "") {
				alert("회원 정보 입력은 필수입니다.");
			} else {
				thirdbuttonfunction();
			}
		}

		//4페이지
		document.querySelector('.next-3').addEventListener('click', infoCheck2);

		function infoCheck2() {
			var tel = document.querySelector('.tel').value;
			var date = document.querySelector('.birth').value;

			if (tel == "" || date == "") {
				alert("회원 정보 입력은 필수입니다.");
			} else {
				lastbuttonfunction();
			}
		}
		
		function sendIdToServlet() {
		    var idInput = document.querySelector('.id_signup').value;// 아이디 입력란 요소를 가져옴

		    $.ajax({
				url:"<%=request.getContextPath()%>/signUp.do",
				data : {"id" : idInput},
				dataType : 'json',
				type : 'get',
				success : function(res){
					$('#seokho-hihi').css('display','block');
					$('#spanid').html(res.sw).css('color','red');		
				},
				error : function(xhr){
					alert('상태'+ xhr.status);
				}
			})
		    
		}
		
		
	
</script>


</body>

</html>