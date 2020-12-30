<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>

</script>
<style>
#popup { width:800px; }
.header h1 
{ height:45px; 
padding:0 0 0 20px;
 color:#fff; 
 font-size:14px; 
 line-height:45px;
  background:black; 
  }

  /*footer*/ 
  * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: SF Pro KR, SF Pro Display, SF Pro Icons, AOS Icons, Apple Gothic, HY Gulim, MalgunGothic, HY Dotum, Lexi Gulim, Helvetica Neue, Helvetica, Arial, sans-serif;
}

body {
  padding-top: 6em;
}

/*헤더 이미지*/
#header img {
  width: 200px;
  height: 50px;
  margin-top: 20px;
}
#header {
  -moz-align-items: center;
  -webkit-align-items: center;
  -ms-align-items: center;
  align-items: center;
  background: #fff;
  cursor: default;
  height: 6em;
  left: 0;
  line-height: 6em;
  position: fixed;
  top: 0;
  width: 100%;
  z-index: 10001;
  box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.075);
  text-align: center;
}

#header nav {
      position: absolute;
      top: 0;
      height: inherit;
      line-height: inherit;
  }

#header nav.left {
      left: 2em;
   }

#header nav.right {
        right: 0.5em;
      }

#header nav .button {
        padding: 0 2em;
        height: 3.25em;
        line-height: 3.25em;
      }

#header nav a {
        text-decoration: none;
          display: inline-block;
      }

@media screen and (max-width: 980px) {
  body {
      padding-top: 44px;
  }

  #header {
      height: 44px;
      line-height: 44px;
  }   
}

@media screen and (max-width: 480px) {

  #header {
      min-width: 320px;
  }
}
#header .menubar input[type=button]{
   border : white;
   background-color : white;
   cursor : pointer;
  font-weight: 700;
  width : 100px;
  height:50px;
  font-size : 1rem;
}

#header .right input:hover{
  color: white;
  background-color: black;
   }


/*헤더 검색바*/
#header .searchbar{
  margin-left: 20px;
}

#header .search-form{
  display: inline-block;
  margin-left: 20px;
}
#header .left button{
  background-color: white;
  border: white;
  height: 40px;
  width: 50px;
  background-color: black;
  color: white;
  font-size: 1rem;
}
#header .left button:hover{
  color: black;
  background-color: white;
  cursor: pointer;
}

#header .left input{
  border: black;
  width: 200px;
  border-bottom: black solid 1px;
  border-radius: 0;
  font-size: 1rem;
  text-align: center;
  height: 34px;
}
.menubar>li{
   display:inline-block;
}
/*dropdown*/

.menubar li ul { 
display:none; /* 평상시에는 서브메뉴가 안보이게 하기 */ 
position:absolute; 
background : white;
width : 110px;
  }

.menubar li:hover ul{ 
   display:block;
   
 /* 마우스 커서 올리면 서브메뉴 보이게 하기 */ }

.menubar>li>a:hover{
   background : black;
   color:white;
} 
.menubar a{
   color : black;
  font-weight: 700;
}

.menubar ul>a{
   color : black;
   transition: 0.5s; 
   
}

 .menubar ul:hover a{        /*메인효과1*/
            opacity: 0.3;   
        }
        
.menubar ul>a:hover {        /*메인효과2 : 특정 a만 밝게*/
            opacity: 1;
        }
.list-box { 
     font-size: small; 
 } 
 
 
 .help-box { 
    font-size: 20px; 
     height: 100px; 
     width: 800px; 
     margin: 0 auto; 
     line-height: 100px; 
 } 
 
 
 li { 
     list-style: none; 
 } 
 
 
 .footer-list { 
     padding: 20px; 
     margin-top: 50px; 
     color: white; 
     background-color:black; 
} 
 .list-box  a{ 
     color: white; 
 } 
 .list-box-hr { 
     margin: 10px 0px 10px 0; 
 
 } 

 .ul-align { 
     width: 800px; 
    margin: 0 auto; 
     margin-top: 20px; 
 } 
    .tab{
      overflow: hidden;
      border: 1px solid #ccc;
      background-color: #f1f1f1;
    }
    .tab > div{
      float: left;
      width: 120px;
      height: 50px;
      line-height: 50px;
      text-align: center;
      cursor: pointer;
      font-size: 17px;
    }
    .tab > div:hover{
      background-color: #ddd;
    }
    .tabcontent{
      padding: 10px;
      border: 1px solid #ccc;
      border-top: none;
      display: none;
    }
  </style>
</head>
<header id="header">
    <nav class="left">
        <div class="search_bar">
             <form role="search" method="get" class="search-form" >
                 <input type="search" class="search-field" placeholder="상품명" value="" name="s" />
                <button type="submit" class="search-submit">검색</button>
             </form>
        </div>
    </nav>
    <a href ="index.jsp"><img src="../images/pineapple.png"/></a>
    <nav class="right">
        <div class = "menubar">
            <li>
                <a href="#" class="button alt">소개</a>
                <ul>
                    <a href="#" >회사소개</a>
                    <a href="#" >회사비전</a>
                    <a href="#" >오시는길</a>
                </ul>
            </li>
            <li>
                <a href="#" class="button alt">커뮤니티</a>
                <ul>
                    <a href="#" >이벤트</a>
                    <a href="#" >리뷰 게시판</a>
                </ul>
            </li>
            <li>
                <a href="#" class="button alt">고객지원</a>
                <ul>
                    <a href="#" >환불 정책</a>
                    <a href="#" >QnA게시판  </a>
                    <a href="#" >FAQ</a>
                </ul>
            </li>
            <li>
                <a href="#" class="button alt">마이룸</a>
                <ul>
                    <a href="#" >장바구니</a>
                    <a href="#" >주문내역</a>
                    <a href="#" >정보수정</a>
                    <a href="#" >찜목록</a>
                </ul>
            </li>            
            <li><a href="./login/loginfo.jsp" class="button alt">로그인</a></li>                
        </div>
    </nav>  
</header>
<body>
    <div class="w3-center w3-large w3-margin-top">
        <h2>My Page</h2>
    </div>
  <hr>
  <div class="tab">
    <div class="tablink" onclick="changeTab(this);">회원정보</div>
    <div class="tablink" onclick="changeTab(this);">주문내역</div>
    <div class="tablink" onclick="changeTab(this);">쿠폰함</div>
    <div class="tablink" onclick="changeTab(this);">장바구니</div>
    <div class="tablink" onclick="changeTab(this);">환불/취소</div>
    <div class="tablink" onclick="changeTab(this);">찜목록</div>
  </div>

  <div id="회원정보" class="tabcontent">
    <div class="w3-content w3-container w3-margin-top">
      <div class="w3-container w3-card-4">
         <div class="w3-center w3-large w3-margin-top">
            <h3>회원정보 수정</h3>
         </div>
         <div>
            <form id="myForm" action="../member/update_mypage.do" method="post">
               <p>
                  <label>ID</label> 
                  <input class="w3-input" type="text" id="id" name="id"> 
               </p>
               <p>
                  <label>Email</label> 
                  <input class="w3-input" type="text" id="email" name="email"required> 
               </p>
               <p class="w3-center">
                  <button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보 변경</button>
               </p>
            </form>
            <br />
            <form id="pwForm" action="../member/update_pw.do" method="post">   
               <input type="hidden" name="id" value="${ member.id }">
               <p>
                  <label>Password</label>
                  <input class="w3-input" id="old_pw" name="old_pw" type="password" required>
               </p>
               <p>
                  <label>New Password</label> 
                  <input class="w3-input" id="pw" name="pw" type="password" required>
               </p>
               <p>
                  <label>Confirm</label>
                  <input class="w3-input" type="password" id="pw2" type="password" required>
               </p>
               <p class="w3-center">
                  <button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호 변경</button>
               </p>
            </form>
            </div>
        </div>
    </div>
</div>
<div id="주문내역" class="tabcontent">
   <h3>주문내역</h3>
   <div class='result_msg'>
      주문일자를 입력하세요.
   </div>
   <form name='frm_member' method='post'>
      <input type='text' name='findStr' value=''/>
   
      <div class='btns'>
         <input type='button' value='목록으로' id='btnSelect' style="background-color:black; color:white;" />
      </div>      
   </form>
</body>
   
    <table border="1">
        <tr>
            <td>
                <a href ="index.jsp"><img src="../images/12pro.png" width="400" height="500"/></a>
            </td>
            <td>
                <table border="1" style="height: 500px; width: 800px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>iphone12 pro</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td><fmt:formatNumber value="1,000,000" pattern="###,###,###"/></td>
                    </tr>
                    <tr align="center">
                        <td>배송지</td>
                        <td>${vo.productDesc}</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form1" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="${vo.productId}">
                 
                                <input type="submit" value="배송조회" style="background-color:black; color : white;">
                                <input type="submit" value="교환신청" style="background-color:black; color : white;">
                                <input type="submit" value="구매후기 쓰기" style="background-color:black; color : white;">
                            </form>
                            <a href="${path}/shop/product/list.do">상품목록</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
  </div>
  <div id="쿠폰함" class="tabcontent">

   <div module="Coupon_CouponList">
    <!--@css(/css/module/coupon/couponList.css)-->
    <div class="header">
        <h1>쿠폰 사용내역</h1>
    </div>
    <div class="content">
        <div class="title">
            <h3>상품별 쿠폰</h3>
        </div>
        <table border="1" summary="" class="boardList">
            <caption>상품별 쿠폰</caption>
            <thead>
                <tr>
                    <th scope="col" class="delivery">배송구분</th>
                    <th scope="col" class="thumb">이미지</th>
                    <th scope="col" class="product">상품정보</th>
                    <th scope="col" class="price">판매가</th>
                    <th scope="col" class="select">적용된 쿠폰</th>
                    <th scope="col" class="coupon">상품별 쿠폰 할인액</th>
                </tr>
            </thead>
            <tbody>
                <tr module="Coupon_aPrd">
                    <td class="delivery"></td>
                    <td class="thumb"><img src=../images/12.png width="300" height="400" alt="" /></td>
                    <td class="product">
                        <strong></strong>
                        <div class="option"></div>
                    </td>
                    <td class="price"><strong></strong></td>
                    <td class="select"></td>
                    <td class="coupon"><strong></strong></td>
                </tr>
            </tbody>
        </table>
        <div class="boardTotal">
            <table border="1" summary="">
            <caption>총 쿠폰 할인금액</caption>
            <thead>
                <tr>
                    <th scope="col">총 상품별 쿠폰 할인금액</th>
                    <th scope="col">총 주문별 쿠폰 할인금액</th>
                    <th scope="col">총 배송비 쿠폰 할인금액</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td colspan="3"><strong>= 총 쿠폰 할인금액</strong><span class="total"><strong class="price"></strong><strong>)</span></td>
                </tr>
            </tfoot>
            <tbody>
                <tr>
                    <td><div class="box"><strong></strong><strong class="tail"></strong> <span class="tail">(<img src="{$mileage_mileage_icon}" alt="" /> )</span></div></td>
                    <td><div class="box"><strong>-</strong><strong></strong><strong class="tail"></strong> <span class="tail">
                    (<img src="{$mileage_mileage_icon}" alt="" />)</span></div></td>
                    <td><div class="box"><strong>-</strong><strong></strong><strong class="tail"></strong></div></td>
                </tr>
            </tbody>
            <tbody class="detail">
                <tr>
                    <td>
                       
                    </td>
                    <td>
                       
                    </td>
                    <td>
                       
                    </td>
                </tr>
            </tbody>
            </table>
        </div>
    </div>
    <div class="btnArea">
        <a href="#none" onclick="window.close();"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_popup_close.gif" alt="닫기" /></a>
    </div>
</div> 
  </div>
  <div id="장바구니" class="tabcontent">
   <h3>장바구니</h3>
    <table border="1">
        <tr>
            <td>
                <a href ="index.jsp"><img src="../images/12pro.png" width="400" height="500"/></a>
            </td>
            <td>
                <table border="1" style="height: 500px; width: 800px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>iphone12 pro</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td><fmt:formatNumber value="1,000,000" pattern="###,###,###"/></td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>${vo.productDesc}</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form1" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="${vo.productId}">
                                <select name="amount">
                                    <c:forEach begin="1" end="10" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="구매하기" style="background-color:black; color : white;">
                            </form>
                            <a href="${path}/shop/product/list.do">상품목록</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <table border="1">
        <tr>
            <td>
                <a href ="index.jsp"><img src="../images/12.png" width="400" height="500"/></a>
            </td>
            <td>
                <table border="1" style="height: 500px; width: 800px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>iphone12 pro</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td><fmt:formatNumber value="1,000,000" pattern="###,###,###"/></td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>${vo.productDesc}</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form1" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="${vo.productId}">
                                <select name="amount">
                                    <c:forEach begin="1" end="10" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="구매하기" style="background-color:black; color : white;">
                            </form>
                            <a href="${path}/shop/product/list.do">상품목록</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table border="1">
        <tr>
            <td>
                <a href ="index.jsp"><img src="../images/iphone11.png" width="400" height="500"/></a>
            </td>
            <td>
                <table border="1" style="height: 500px; width: 800px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>iphone12 pro</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td><fmt:formatNumber value="1,000,000" pattern="###,###,###"/></td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>${vo.productDesc}</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form1" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="${vo.productId}">
                                <select name="amount">
                                    <c:forEach begin="1" end="10" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="구매하기" style="background-color:black; color : white;">
                            </form>
                            <a href="${path}/shop/product/list.do">상품목록</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>

  </div>
  <div id="환불/취소" class="tabcontent">
    <h3>환불/취소</h3>
    <table border="1">
        <tr>
            <td>
                <a href ="index.jsp"><img src="../images/12pro.png" width="400" height="500"/></a>
            </td>
            <td>
                <table border="1" style="height: 500px; width: 800px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>iphone12 pro</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td><fmt:formatNumber value="1,000,000" pattern="###,###,###"/></td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>${vo.productDesc}</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form1" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="${vo.productId}">
                                <select name="amount">
                                    <c:forEach begin="1" end="10" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="환불/취소하기" style="background-color:black; color : white;">
                            </form>
                            <a href="${path}/shop/product/list.do">상품목록</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
  </div>
  <div id="찜목록" class="tabcontent">
    <h3>찜목록</h3>
    <p>찜한 상품들 목록</p>
  </div>
 

  <script>
    var tabs = document.getElementsByClassName('tablink');
    var content = document.getElementsByClassName('tabcontent');  
    changeTab(tabs[0]) //1. 
    function changeTab(obj){      
      for(var i=0;i<6;i++){
        tabs[i].style.backgroundColor="#f1f1f1";
        content[i].style.display="none"
      }
      obj.style.backgroundColor="#ccc";      
      var selectTab = document.getElementById(obj.innerHTML);
      selectTab.style.display="block";
    }
  </script>
  
</body>
</html>