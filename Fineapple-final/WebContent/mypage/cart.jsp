<%@page import="mypage.CartDao"%>
<%@page import="product.ProductVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.text.DecimalFormat"%>
<%@page import="mypage.CartVo"%>
<%@page import="java.util.ArrayList" %>
<%
request.setCharacterEncoding("utf-8");
ArrayList<CartVo> cart = null;

Object obj = session.getAttribute("cart");	//세션 객체에서 cart 값을 가져온다.

if(obj == null) {	//주문한 제품이 없으면 배열을 생성 
	cart = new ArrayList<CartVo>();	
} else {			//주문한 제품이 있으면 강제로 캐스팅 
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src='../js/pay.js'></script>
<style>
.table{
	margin : 0 auto;
	text-align :center;
}

.cart-box-title{
	font-size : 15px;
}
.cart-order-btn>#cart-btn{
	background-color : black;
	color : white;
	font-size:15px;
}
.cart-btn-choose-product>#cart-btn{
	background-color : black;
	color : white;
	font-size:18px;
	height : 30px;
	width : 130px;
}
.bottom-btn>#cart-btn{
	background-color : black;
	color : white;
	font-size:18px;
	margin-right: 5px; 
	font-size : 20px;
	height : 50px;
	width : 130px;
	}
h4{
 text-align : center;
}

	
</style>
<head>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/notice.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" type="text/css"
	href="https://vendor-cdn.imweb.me/css/site/site2.css?1608687536">
<script type="text/javascript">
funcfion fnPay(){
	alert("결제 API를 발급받으시기 바랍니다.");
}
function fnClear(){
	if(confirm("장바구니를 비우시겠습니까?")){
			location.href="cartClear.jsp"
		}
}
function fnGo(){
	location.href="../main/index.jsp";
}
</script>
</head>
<!-- header -->
<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="../main/header.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="../main/header.jsp"/>
	
	<%} %>
	<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">장바구니</h1>
		<div class="cs_category">
			<a href="../mypage/mypage.jsp">정보수정</a>
			<a href="../mypage/cart.jsp">장바구니</a>
			<a href="../mypage/orderlist.jsp">주문내역</a>
			<a href="../mypage/coupon.jsp">쿠폰함</a>
		</div>
	</header>
<body class="cart_body" id="cart_body">

 
       <h4 style="padding : 30px 0px 30px 0px;"> </h4>
	<!--장바구니 아이템 리스트 가져옴-->
	<div class="cart_list_wrap_holder">
		<table class="table no-margin shop-table">
			<colgroup>
				<col style="width: 40px">
				<col>
				<col style="width: 100px">
				<col style="width: 80px">
				<col style="width: 120px">
				<col style="width: 130px">
				<col style="width: 130px">
				<col style="width: 150px">
			</colgroup>
			<thead class="item-subject">
				<tr>
					<th>
						<div class="checkbox">
							<label> <input type="checkbox" value="" class="all_check">
								<span></span>
							</label>
						</div>
					</th>
					<th class="item-info"><span class="cart-box-title" style="width: 40px">item</span>
						<span class="hidden-lg hidden-md"></span></th>
					
					<th class="amount"><span class="cart-box-title">수량</span></th>
					<th class="deliv_price"><span class="cart-box-title">배송수단</span></th>
					<th class="deliv_price"><span class="cart-box-title">배송비</span></th>
					<th class="price"><span class="cart-box-title">가격</span></th>
					<th></th>
				</tr>
			</thead>
			
			<tbody>
			<%
			//해당 상품정보 받아오기
			CartDao dao = new CartDao();
			String temp=request.getParameter("product_serial");
			int temp1= Integer.parseInt(temp);
			
			int product_serial=temp1;
			int product_amount=Integer.parseInt(request.getParameter("product_amount"));
			String product_color=request.getParameter("product_color");
			ProductVo vo =new ProductVo();
			vo = dao.basket(product_serial);
			
			
			//카트 리스트에 추가하기
			
			
			
			
		if(cart.size() == 0) {
			out.println("<tr align='center'>");
				out.println("<td colspan= '5'>");
					out.println("장바구니에 담긴 상품이 없습니다.");
					out.println("<a href= '../main/index.jsp'>주문하기</a>");
				out.println("</td>");
			out.println("</tr>");
		} else {
			int totalSum = 0, total = 0;
			DecimalFormat df = new DecimalFormat("￦#,##0");
			for(int i = 0; i < cart.size(); i++) {
				CartVo vo = cart.get(i);
				out.println("<tr align= 'center'>");
					out.println("<td>" + (i + 1) + "</td>");
					out.println("<td>" + vo.getName() + "</td>");
					out.println("<td>" + df.format(vo.getPrice()) + "</td>");
					out.println("<td>" + vo.getCnt() + "</td>");
					total = vo.getPrice() * vo.getCnt();
					out.println("<td>" + df.format(total) + "</td>");
				out.println("</tr>");
				totalSum += total;
			}
		out.println("<tr align = 'center'>");
			out.println("<td colspan= '4'>");
				out.println("<input type='button' value='결제하기' onclick='fnPay()' />");
				out.println("<input type='button' value='장바구니 비우기' onclick='fnClear()' />");
				out.println("<input type='button' value='쇼핑 계속하기' onclick='fnGo()' />");
			out.println("</td>");
			out.println("<td>");
			out.println(df.format(totalSum));
			out.println("</td>");
		out.println("</tr>");
		}//if else
		%>
				
			</tbody>

			<tfoot>
				<tr>
					<td class="cart-btn-choose-product" colspan="4">
					<input type="button" id="cart-btn" onclick="location.href='cartClear.jsp' " style='cursor:pointer;' value="전체 상품 삭제">
					<input type="button" id="cart-btn" onclick="location.href='../main/index.jsp' " style='cursor:pointer;' value="다른 상품 보기"></td>
					<td class="amount txt"><span style="font-size:18px;">결제금액</span></td>
					<td class="amount text-brand"><span
						style="font-size: 20px; font-weight: 600;"
						id="cart_main_total_price">0원</span></td>
					<td></td>
				</tr>
			</tfoot>
		</table>


	</div>
	<!--END-->
	<div class="bottom-btn">
		<input type="button" id="cart-btn" onclick="location.href='orderlist.jsp' " style='cursor:pointer;'value="결제하기"> 
	</div>
	
	</body>
	 <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
   	
</html>