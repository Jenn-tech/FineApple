<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Main</title>
<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<script src="https://code.jquery.com/jquery-3.5.1.js" 
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
		crossorigin="anonymous"></script>
<script src='../js/login.js'></script>
<script src='../js/indexProduct.js'></script>
		
</head>

<body>
	<!-- header영역 -->
	<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="./header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="./header2.jsp"/>
	
	<%} %>
	
<!-- 메인 이미지 -->	
    <div class = "container">
       <div class="main-view">
          <ul>
            <li><img src="../images/macbook.jpg " width="100%" /></li>
            <li><img src="../images/ipad.jpg"width="100%"/></li>
            <li><img src="../images/phone.jpg"width="100%"/></li>
          </ul>
        </div>
 
        
<!-- 메인 문구 -->       
        <div class="cater3-movingBG">
			<div class="flyinTxtCont">
				<div class="flyIn lineOne">FineApple</div>
				<div class="flyIn lineTwo">makes </div>/		
				<div class="flyIn lineThree">Innovation</div>
				<div class="flyIn lineFour"></div>
			</div>
		</div>

<!-- 상품 카테고리 -->		
            <ul class="menu">
                <li><a href="javascript:phone();">휴대폰</a></li>
                <li><a href="javascript:laptop();">노트북</a></li>
                <li><a href="javascript:tablet()">태블릿PC</a></li>
                <li><a href="javascript:watch()">스마트워치</a></li>
                <li><a href="javascript:tesktop()">데스크탑</a></li>
                <li><a href="javascript:accessory()">악세서리</a></li>
             </ul>
		
		
<!-- 상품정렬 -->
		
	<div class = "product_middle">	
		<div id = "product_total">
			<p>Total&nbsp:&nbsp&nbsp<span>12</span></p>
		</div>
		
		<div id="product_order_list">
			<p><a href="#">최신순<a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<a href="#">낮은가격</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<a href="#">높은가격</a> </p>
		</div>
	</div>
		
<!-- 상품 목록 -->
		<div id = "product_list">
               <figure class="product">
                <img src="https://images.samsung.com/is/image/samsung/sec-galaxy-z-fold2-f916-sm-f916nznakoo-openbackmysticbronze-308345462?$PD_GALLERY_L_PNG$" width="250px" height="230px" />
                <figcaption>
                  <h3>  더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="../product/product.jsp"></a>
                <div id="detail">갤럭시 Z 폴드2 5G</br>2,398,000</div>
            </figure>


              <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-max-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021658000" width="200px" height="250px" />
                <figcaption>
                  <h3>더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰12 Pro</br>1,380,000</br></div>
              </figure>

              <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-max-gold-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021660000" width="200px" height="250px" />
                <figcaption>
                  <h3>더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰12 Pro</br>1,380,000</br></div>
              </figure>

              <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-max-graphite-hero?wid=470&hei=556&fmt=png-alpha&.v=1604021658000" width="200px" height="250px" />
                <figcaption>
                  <h3>더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰12 Pro</br>1,380,000</br></div>
              </figure>

              <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-white-select-2020?wid=470&hei=556&fmt=png-alpha&.v=1604343705000" width="200px" height="250px" />
                <figcaption>
                  <h3>더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰12</br>1,480,000</br></div>
              </figure>

              <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-black-select-2020?wid=470&hei=556&fmt=png-alpha&.v=16043437020000" width="200px" height="250px" />
                <figcaption>
                  <h3>더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰12</br>1,480,000</br></div>
              </figure>

              <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-blue-select-2020?wid=470&hei=556&fmt=png-alpha&.v=1604343704000" width="200px" height="250px" />
                <figcaption>
                  <h3>더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰12</br>1,480,000</br></div>
              </figure>

              <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-green-select-2020?wid=470&hei=556&fmt=png-alpha&.v=1604343704000" width="200px" height="250px" />
                <figcaption>
                  <h3>더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰12</br>1,480,000</br></div>
              </figure>

              
              <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-red-select-2020?wid=470&hei=556&fmt=png-alpha&.v=1604343703000" width="200px" height="250px" />
                <figcaption>
                  <h3>더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰12</br>1,480,000</br></div>
              </figure>
              
              <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone11-yellow-select-2019?wid=470&hei=556&fmt=png-alpha&.v=1568141245782" width="200px" height="250px" />
                <figcaption>
                  <h3>더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰11</br>1,280,000</br></div>
              </figure>
              
              <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone11-purple-select-2019?wid=470&hei=556&fmt=png-alpha&.v=1566960958082" width="200px" height="250px" />
                <figcaption>
                  <h3>더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰11</br>1,280,000</br></div>
              </figure>
              
              <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone11-green-select-2019?wid=470&hei=556&fmt=png-alpha&.v=1566956144838" width="200px" height="250px" />
                <figcaption>
                  <h3>더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰11</br>1,280,000</br></div>
              </figure>
</div>


       
   <!-- footer영역 -->
   	<%@include file="footer.jsp" %>
   

    
</div>
<script>
logInOut();
</script>
</body>
</html>