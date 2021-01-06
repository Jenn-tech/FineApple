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
		<h1 style="font-size: 2em;">FAQ</h1>
		</br>
		<h2 style="font-weight: bold">많은 고객님들이 물어보셨던 질문입니다. 여러분의 질문을 찾아보세요!</h2>
	</header>
	<div class="cs_faq_article_bar">
		<div class="faq_list">
			<div style="">
			</div>
			<div class="faq_category">
				<form action="" name="frm_faqbook" method="post">
					<input type="hidden" name="findStr" value="주문결제">
					<input type="button" value="주문결제" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="배송안내" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="주문취소" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="교환" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="환불" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="회원관련" class="btnFaq" onclick="gofaq(this.value)">
				</form>
			</div>
			<c:forEach var="vo" items="${list }">
			<ul class="cs_FAQ_item">
				<h4 class="cs_FAQ_title" id="cs_FAQ_title-first">
					<a href="#html5">
					<span>${vo.subject}</span>
					<img alt="" src="../images/arrow_bottom.png" id="cs_faq_change_img">
					</a>
				</h4>
				<div class="cs_FAQ_content">
					<p>${vo.doc}</p>
				</div>
			</ul>
			</c:forEach>
			
			<ul class="cs_FAQ_item">
				<h4 class="cs_FAQ_title" id="cs_FAQ_title-first">
					<a href="#html5">
					<span>Q. 복합결제가 가능한가요?</span>
					<img alt="" src="../images/arrow_bottom.png" id="cs_faq_change_img">
					</a>
				</h4>
				<div class="cs_FAQ_content">
					<p>복합결제는 현재 지원하지 않습니다. 0구매를 희망하시는 고객님들께서는 한 가지의 결제수단을 이용해 주시기
						바랍니다. 복합결제는 현재 지원하지 않습니다. 구매를 희망하시는 고객님들께서는 한 가지의 결제수단을 이용해 주시기
						바랍니다.</p>
				</div>
			</ul>
			<ul>
				<li class="collapsible">
					<h4 class="cs_FAQ_title">
						<a href="#html5">
						<span>Q. 복합결제가 가능한가요?</span>
						<img alt="" src="../images/arrow_bottom.png" id="cs_faq_change_img">
						</a>
					</h4>
					<p class="cs_FAQ_content">복합결제는 현재 지원하지 않습니다. 구매를 희망하시는 고객님들께서는 한 가지의
						결제수단을 이용해 주시기 바랍니다.</p>
				</li>
			</ul>
			<ul>
				<li class="collapsible">
					<h4 class="cs_FAQ_title">
						<a href="#html5">
						<span>Q. 복합결제가 가능한가요?</span>
						<img alt="" src="../images/arrow_bottom.png" id="cs_faq_change_img">
						</a>
					</h4>
					<p class="cs_FAQ_content">복합결제는 현재 지원하지 않습니다. 구매를 희망하시는 고객님들께서는 한 가지의
						결제수단을 이용해 주시기 바랍니다.</p>
				</li>
			</ul>
			<ul>
				<li class="collapsible">
					<h4 class="cs_FAQ_title">
						<a href="#html5">
						<span>Q. 복합결제가 가능한가요?</span>
						<img alt="" src="../images/arrow_bottom.png" id="cs_faq_change_img">
						</a>
					</h4>
					<p class="cs_FAQ_content">복합결제는 현재 지원하지 않습니다. 구매를 희망하시는 고객님들께서는 한 가지의
						결제수단을 이용해 주시기 바랍니다.</p>
				</li>
			</ul>
			<ul>
				<li class="collapsible">
					<h4 class="cs_FAQ_title">
						<a href="#html5">
						<span>Q. 복합결제가 가능한가요?</span>
						<img alt="" src="../images/arrow_bottom.png" id="cs_faq_change_img">
						</a>
					</h4>
					<p class="cs_FAQ_content">복합결제는 현재 지원하지 않습니다. 구매를 희망하시는 고객님들께서는 한 가지의
						결제수단을 이용해 주시기 바랍니다.</p>
				</li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
toggleMenu()
</script>
</body>

</html>
