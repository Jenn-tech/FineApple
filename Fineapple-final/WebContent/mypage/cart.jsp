<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 상세정보</title>
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/header.css">
<style>
.cart_list_box{
   background-color : white;
   font-size: 100%;
}

.cart-date-search-button{
   background-color : black;
   color : white;   
   height : 20pt;
   width : 40pt;
}
 td{
   border : white;
}
.cart_list_button{
   background-color : black;
   color : white;
   width : 80pt;
   height : 30pt;
}
.delete_all_product_button{
   margin : 15px;
   background-color : black;
   color : white;
   width : 100pt;
   height : 30pt;
   position:relative;
    top:50%; 
    left:50%;
}
</style>
</head>
<body>
<!-- header영역 -->
	<jsp:include page="../main/header.jsp"/>
	

<div id="장바구니" class="cart_list">
      <h2 class="cart-list-title">장바구니</h2>
      <hr>

      <div class="cart-date-search">
              <input
                class="cart-date-search-input"
                type="text"
                placeholder="상품명을 입력해주세요."
              />
              <button class="cart-date-search-button" type="submit">검색</button>
        </div>
        <div style = "padding: 7px ;"></div> 
     <table class="cart_list_box" border="1">
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
               <td>상세 정보</td>
               <td> iPhone 12 및 iPhone 12 mini 제품 구성에는 전원 어댑터 및 EarPods이 포함되지 않습니다.</td>
            </tr>
            <tr align="center">
               <td colspan="2">
                  <form name="form1" method="post">
                     <input type="hidden" name="productId" value="${vo.productId}">
                     <button id="상품삭제" class="cart_list_button">상품 삭제</button>
                     <button id="상품구매" class="cart_list_button">상품 구매</button>
                  </form>
               </td>
            </tr>
         </table>
      </td>
   </tr>
</table>
<div style = "padding: 3px ;"></div> 
 <table class="cart_list_box" border="1">
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
               <td>상세 정보</td>
               <td> iPhone 12 및 iPhone 12 mini 제품 구성에는 전원 어댑터 및 EarPods이 포함되지 않습니다.</td>
            </tr>
            <tr align="center">
               <td colspan="2">
                  <form name="form1" method="post">
                     <input type="hidden" name="productId" value="${vo.productId}">
                     <button id="상품삭제" class="cart_list_button">상품 삭제</button>
                     <button id="상품구매" class="cart_list_button">상품 구매</button>
                  </form>
               </td>
            </tr>
         </table>
      </td>
   </tr>
</table>
<div style = "padding: 3px ;"></div>
 <table class="cart_list_box" border="1">
   <tr>
      <td><a href="index.jsp"><img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone11-select-2019-family?wid=441&amp;hei=529&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1567022175704"
            width="150" height="200" /></a></td>
      <td>
         <table border="1" style="height: 200px; width: 800px;">
            <tr align="center">
               <td>상품명</td>
               <td>iphone11</td>
            </tr>
            <tr align="center">
               <td>가격</td>
               <td>1,000,000</td>
            </tr>
            <tr align="center">
               <td>상세 정보</td>
               <td> iPhone 11 제품 구성에는 전원 어댑터 및 EarPods이 포함되지 않습니다.</td>
            </tr>
            <tr align="center">
               <td colspan="2">
                  <form name="form1" method="post">
                     <input type="hidden" name="productId" value="${vo.productId}">
                     <button id="상품삭제" class="cart_list_button">상품 삭제</button>
                     <button id="상품구매" class="cart_list_button">상품 구매</button>
                  </form>
               </td>
            </tr>
         </table>
      </td>
   </tr>
</table>
<div style = "padding: 3px ;"></div>
 <table class="cart_list_box" border="1">
   <tr>
      <td><a href="index.jsp"><img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-space-gray-select-201810?wid=452&hei=420&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1603332211000"
            width="150" height="200" /></a></td>
      <td>
         <table border="1" style="height: 200px; width: 800px;">
            <tr align="center">
               <td>상품명</td>
               <td>13-inch MacBook Air</td>
            </tr>
            <tr align="center">
               <td>가격</td>
               <td>2,000,000</td>
            </tr>
            <tr align="center">
               <td>상세 정보</td>
               <td>Apple M1 chip with 8-core CPU, 7-core GPU, and 16‑core Neural Engine</td>
            </tr>
            <tr align="center">
               <td colspan="2">
                  <form name="form1" method="post">
                     <input type="hidden" name="productId" value="${vo.productId}">
                     <button id="상품삭제" class="cart_list_button">상품 삭제</button>
                     <button id="상품구매" class="cart_list_button">상품 구매</button>
                  </form>
               </td>
            </tr>
         </table>
      </td>
   </tr>
</table>
<button id="전체상품 취소" class="delete_all_product_button">전체 상품 삭제</button>
</div>
   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
</body>

</html>