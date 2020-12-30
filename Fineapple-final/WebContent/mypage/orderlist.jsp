<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.order_list_box{
   background-color : white;
}
.order-date-search-button{
   background-color : black;
   color : white;   
   height : 20pt;
   width : 40pt;
}
 td{
   border : white;
}
.order_list_button{
   background-color : black;
   color : white;
   width : 80pt;
   height : 30pt;
}
</style>
</head>
<body>
<div id="주문내역" class="order_list">
      <h2 class="order-list-title">주문내역</h2>
      <hr>

      <div class="order-date-search">
              <input
                class="order-date-search-input"
                type="text"
                placeholder="주문 일자를 입력해주세요."
              />
              <button class="order-date-search-button" type="submit">검색</button>
        </div>
        <div style = "padding: 7px ;"></div> 
     <table class="order_list_box" border="1">
   <tr>
      <td><a href="index.jsp"><img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-family-hero?wid=470&amp;hei=556&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1604021663000"
            width="150" height="200" /></a></td>
      <td>
         <table border="1" style="height: 200px; width: 800px;">
            <tr align="center">
               <td>상품명</td>
               <td>iphone12 pro</td>
            </tr>
            <tr align="center">
               <td>가격</td>
               <td>1,000,000</td>
            </tr>
            <tr align="center">
               <td>배송지</td>
               <td>서울 영등포구 선유동2로 57 이레빌딩</td>
            </tr>
            <tr align="center">
               <td colspan="2">
                  <form name="form1" method="post">
                     <input type="hidden" name="productId" value="${vo.productId}">
                     <button id="delivery_check" class="order_list_button">배송조회</button>
                     <button id="request_exchange" class="order_list_button">상품취소</button>
                     <button id="purchase_script" class="order_list_button">구매후기 쓰기</button>
                  </form>
               </td>
            </tr>
         </table>
      </td>
   </tr>
</table>
 <table class="order_list_box" border="1">
   <tr>
      <td><a href="index.jsp"><img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-family-select-2020?wid=470&amp;hei=556&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1604343709000"
            width="150" height="200" /></a></td>
      <td>
         <table border="1" style="height: 200px; width: 800px;">
            <tr align="center">
               <td>상품명</td>
               <td>iphone12</td>
            </tr>
            <tr align="center">
               <td>가격</td>
               <td>1,000,000</td>
            </tr>
            <tr align="center">
               <td>배송지</td>
               <td>서울 영등포구 선유동2로 57 이레빌딩</td>
            </tr>
            <tr align="center">
               <td colspan="2">
                  <form name="form1" method="post">
                     <input type="hidden" name="productId" value="${vo.productId}">
                     <button id="delivery_check" class="order_list_button">배송조회</button>
                     <button id="request_exchange" class="order_list_button">상품취소</button>
                     <button id="purchase_script" class="order_list_button">구매후기
                        쓰기</button>
                  </form>
               </td>
            </tr>
         </table>
      </td>
   </tr>
</table>
</div>
</body>
</html>