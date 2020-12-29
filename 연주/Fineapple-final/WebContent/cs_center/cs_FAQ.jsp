<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!doctype html>
<html>

<head>
<title>FAQ</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<style>
</style>
</head>

<body>
<div class="cs_faq_body">
	<header class="cs_faq_title">
		<h2>FAQ</h2>
		</br>
		<h3>많은 고객님들이 물어보셨던 질문입니다. 여러분의 질문을 찾아보세요!</h3>
	</header>
	<div class="cs_faq_article_bar">
		<div class="faq_list">
			<div style="">
				<h1>FAQ</h1>
			</div>
			<div class="faq_category">
				<form action="inquiry.do?qa=select" name="frm_faqbook">
					<input type="hidden" name="faqStr" value="주문결제">
					<input type="hidden" name="qa" value="selectfaq">
					<input type="button" value="주문결제" class="btnFaq" onclick="gofaq(this.value)" name="btn">
					<input type="button" value="배송안내" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="주문취소" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="교환" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="환불" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="상품관련" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="적립금" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="회원관련" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="기타" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="tip" class="btnFaq" onclick="gofaq(this.value)">
				</form>
				<a href="#">주문 결제</a>
				<a href="#">배송 안내</a>
				<a href="#">주문 취소</a>
				<a href="#">교환</a>
				<a href="#">환불</a>
				<a href="#">상품 관련</a>
				<a href="#">적립금</a>
				<a href="#">회원관련</a>
				<a href="#">기타</a>
				<a href="#">TIP</a>
			</div>
			<c:forEach var="vo" items="${list }">
				<ul>
					<li class="collapsible">
						<h4 class="title" id="title-first">
							<a href="#html5">${vo.subject }</a>
						</h4>
						<div class="content">
							<p>${vo.doc}</p>
						</div>
					</li>
				</ul>
			</c:forEach>
			
			
			
			<ul>
				<li class="collapsible">
					<h4 class="title" id="title-first">
						<a href="#html5">복합결제가 가능한가요?</a>
					</h4>
					<div class="content">
						<p>복합결제는 현재 지원하지 않습니다. 구매를 희망하시는 고객님들께서는 한 가지의 결제수단을 이용해 주시기
							바랍니다. 복합결제는 현재 지원하지 않습니다. 구매를 희망하시는 고객님들께서는 한 가지의 결제수단을 이용해 주시기
							바랍니다.</p>
					</div>
				</li>
			</ul>
			<ul>
				<li class="collapsible">
					<h4 class="title">
						<a href="#html5">복합결제가 가능한가요?</a>
					</h4>
					<p class="content">복합결제는 현재 지원하지 않습니다. 구매를 희망하시는 고객님들께서는 한 가지의
						결제수단을 이용해 주시기 바랍니다.</p>
				</li>
			</ul>
			<ul>
				<li class="collapsible">
					<h4 class="title">
						<a href="#html5">복합결제가 가능한가요?</a>
					</h4>
					<p class="content">복합결제는 현재 지원하지 않습니다. 구매를 희망하시는 고객님들께서는 한 가지의
						결제수단을 이용해 주시기 바랍니다.</p>
				</li>
			</ul>
			<ul>
				<li class="collapsible">
					<h4 class="title">
						<a href="#html5">복합결제가 가능한가요?</a>
					</h4>
					<p class="content">복합결제는 현재 지원하지 않습니다. 구매를 희망하시는 고객님들께서는 한 가지의
						결제수단을 이용해 주시기 바랍니다.</p>
				</li>
			</ul>
			<ul>
				<li class="collapsible">
					<h4 class="title" id="title-last">
						<a href="#html5">복합결제가 가능한가요?</a>
					</h4>
					<p class="content">복합결제는 현재 지원하지 않습니다. 구매를 희망하시는 고객님들께서는 한 가지의
						결제수단을 이용해 주시기 바랍니다.</p>
				</li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(
	function() {

	/** 초기화 처리*/

	// 첫 번재 항목이 펼쳐져 있도록 처리
	$(".collapsible:eq(0) > a").addClass("selected"); //첫번째 항목만 selected 클래스를 적용
	$(".collapsible").not(":eq(0)").find(".content").hide(); //첫번째 항목 이외의 content를 숨김

	/** 링크에 대한 클릭 이벤트 처리 */
	$(".collapsible > .title > a").click(
			function() {
				$(this).toggleClass("selected");
				//클릭된 나 자신을 제외한 나머리 링크들은 slected 클래스를 무조건 제거
				$(".collapsible > .title > a").not(this)
						.removeClass("selected");

				// 펼칠 내용 영역 선택
				var target = $(this).parents(".collapsible")
						.find(".content");

				// 나머지 내용 영역을 선택
				var other = $(".collapsible > .title > a")
						.not(this).parents(".collapsible")
						.find(".content");

				// 애니메이션으로 열고 닫기 처리
				target.slideToggle(300);
				other.slideUp(300);

				// 링크 페이지 이동 중지
				return false;
			});
		});
	</script>
</body>

</html>
