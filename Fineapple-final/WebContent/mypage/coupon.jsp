<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.coupon-product-table{
   height: 150px; 
   width: 1000px;
   text-align : center;
   
}

</style>
</head>
<body>

<div id="쿠폰함" class="coupon-list">
   <div module="coupon-couponList">
      <h2 class="coupon-list-title">쿠폰 내역</h2>
      <hr>
      </div>
      <div class="coupon-product">
         <div class="coupon-product-title">
            <h3>상품별 쿠폰</h3>
         </div>
         <table border="1" summary="" class="coupon-product-table">
            <thead>
               <tr>
               <div class="coupon-title">
                  <th scope="col" class="delivery">배송구분</th>
                  <th scope="col" class="img">이미지</th>
                  <th scope="col" class="product">상품정보</th>
                  <th scope="col" class="price">판매가</th>
                  <th scope="col" class="select">적용된 쿠폰</th>
                  <th scope="col" class="coupon">상품별 쿠폰 할인액</th>
               </div>
               </tr>
            </thead>
            <tbody>
               <tr module="Coupon_aPrd">
                  <td class="delivery"><strong>무료배송</strong></td>
                  <td class="img"><img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-family-hero?wid=470&amp;hei=556&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1604021663000" 
                  width="80" height="120" alt="" /></td>
                  <td class="product"><strong>아이폰 12pro</strong>
                     <div class="option"></div></td>
                  <td class="price"><strong>1,000,000</strong></td>
                  <td class="select"><strong>10% 할인쿠폰</strong></td>
                  <td class="coupon"><strong>900,000</strong></td>
               </tr>
               <tr module="Coupon_aPrd">
                  <td class="delivery"><strong>무료배송</strong></td>
                  <td class="img"><img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-family-hero?wid=470&amp;hei=556&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1604021663000" 
                  width="80" height="120" alt="" /></td>
                  <td class="product"><strong>아이폰 12pro</strong>
                     <div class="option"></div></td>
                  <td class="price"><strong>1,000,000</strong></td>
                  <td class="select"><strong>10% 할인쿠폰</strong></td>
                  <td class="coupon"><strong>900,000</strong></td>
               </tr>
               <tr module="Coupon_aPrd">
                  <td class="delivery"><strong>무료배송</strong></td>
                  <td class="img"><img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-family-hero?wid=470&amp;hei=556&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1604021663000" 
                  width="80" height="120" alt="" /></td>
                  <td class="product"><strong>아이폰 12pro</strong>
                     <div class="option"></div></td>
                  <td class="price"><strong>1,000,000</strong></td>
                  <td class="select"><strong>10% 할인쿠폰</strong></td>
                  <td class="coupon"><strong>900,000</strong></td>
               </tr>
            </tbody>
         </table>
         
         <div class="boardTotal">
            <table border="1" summary="">
               <h3>할인 가격</h3>
               <thead>
                  <tr>
                     <th scope="col">총 상품별 쿠폰 할인금액</th>
                     <th scope="col">총 주문별 쿠폰 할인금액</th>
                     <th scope="col">총 배송비 쿠폰 할인금액</th>
                  </tr>
               </thead>
               <tfoot>
                  <tr>
                     <td colspan="3"><strong>= 100,000</strong><span
                        class="total"><strong class="price"></strong><strong>)</span></td>
                  </tr>
               </tfoot>
               <tbody>
                  <tr>
                     <td><div class="box">
                           <strong></strong><strong class="tail"></strong> <span
                              class="tail">(<img src="{$mileage_mileage_icon}" alt="" />
                              )
                           </span>
                        </div></td>
                     <td><div class="box">
                           <strong>-</strong><strong></strong><strong class="tail"></strong>
                           <span class="tail"> (<img src="{$mileage_mileage_icon}"
                              alt="" />)
                           </span>
                        </div></td>
                     <td><div class="box">
                           <strong>-</strong><strong></strong><strong class="tail"></strong>
                        </div></td>
                  </tr>
               </tbody>
               <tbody class="detail">
                  <tr>
                     <td></td>
                     <td></td>
                     <td></td>
                  </tr>
               </tbody>
            </table>
         </div>
      </div>
      <div class="btnArea">
         <a href="#none" onclick="window.close();"><img
            src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_popup_close.gif"
            alt="닫기" /></a>
      </div>
   </div>
</div>
</body>
</html>