<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Main</title>
<link rel="stylesheet" href="./css/indexstyle.css">
<link rel="stylesheet" href="./css/header2.css">
<script src="https://code.jquery.com/jquery-3.5.1.js" 
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
		crossorigin="anonymous"></script>
		   <script src='./js/login.js'></script>
		
</head>
</head>

<body>
	<!-- header영역 -->
	<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="/header3.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="/header2.jsp"/>
	
	<%} %>
    <div class = "container">
    
        <div class =" main-view">
            <img src="./images/macbook.jpg " width="100%" />
        </div>
       
            <ul class="menu">
                <li><a href="#">노트북</a></li>
                <li><a href="#">휴대폰</a></li>
                <li><a href="#">태블릿PC</a></li>
                <li><a href="#">스마트워치</a></li>
                <li><a href="#">데스크탑</a></li>
                <li><a href="#">악세서리</a></li>
             </ul>


             <figure class="product">
                <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-max-silver-hero?wid=470&hei=556&fmt=png-alpha&.v=1604021658000" width="200px" height="250px" />
                <figcaption>
                  <h3>  더 알아보기</h3>
                  <h5>more detail</h5>
                </figcaption>
                <a href="https://www.apple.com/shop/buy-iphone/iphone-11"></a>
                <div id="detail">아이폰12 Pro</br>1,380,000</div>
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



       
   <!-- footer영역 -->
   	<%@include file="footer.jsp" %>
   

    
</div>
<script>
logInOut()
</script>
</body>
</html>