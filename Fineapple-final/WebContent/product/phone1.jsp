<%@page import="product.ProductVo"%>
<%@page import="mypage.CartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>    

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>product</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js" 
    integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
    crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script src='<%=request.getContextPath() %>/js/product.js'></script>
	<script src='../js/review.js'></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/product.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/review3.css"> 
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/images/favicon.png">
    <link rel="icon" href="favicon.ico">
    <script src='../js/go_cart.js'></script>  
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
</head>
<body>
<%
CartDao dao = new CartDao();
ProductVo vo =new ProductVo();
int product_serial=1234;
int product_amount=12;
String member_id=(String)session.getAttribute("member_mid");



//카트 리스트에 추가하기
/* dao.insertCart(member_id, product_serial, product_amount);//카트 db에 등록 */

%>


	<!-- header영역 -->
		<jsp:include page="../main/header.jsp"/>

    <!-- main -->
    <div class="main" id="main">
        <img class="phone-img" src="https://images.samsung.com/is/image/samsung/sec-galaxy-z-fold2-f916-sm-f916nznakoo-frontmysticbronze-308345475?$PD_GALLERY_L_PNG$" alt="갤럭시 Z 폴드2 5G">
        <div class="summary">
           <form method="get" name="form" id="form" target="iframe1">
          
                 <input type="hidden" name="phone-img" value="https://images.samsung.com/is/image/samsung/sec-galaxy-z-fold2-f916-sm-f916nznakoo-frontmysticbronze-308345475?$PD_GALLERY_L_PNG$" />
	            <div class="테두리">
	               <h1>갤럭시 Z 폴드2 5G</h1><input type= hidden name="product_name" value= "갤럭시 Z 폴드2 5G"><br>
	               상품코드 : SM-F916NZKAKOO<input type=hidden name="product_serial" value= "1"><br>
	               판매가 : 2,398,000원<br>
	               색상 : 미스틱브론즈<input type=hidden name="product_color" value= "미스틱브론즈"><br>
	               메모리 : 256 GB<br>
	            </div>
                <div class="amount">
                    수량  <input type=hidden name="sell_price" value="2398000">
                    <input type="button" value=" - " onclick="del();">
                    <input type="text" style = "text-align:center;" name="amount" value="1" size="3" onchange="change();">
                    <input type="button" value=" + " onclick="add();"><br/>
                    금액  <input type="text" style = "text-align:center;" name="sum" size="11" readonly>원
                </div>
            <br/>

	               <div class="btns">
	               		<input type="button" value="장바구니" class="btn1"/>
	               		<input type="button" value="바로구매" class="btn2" onclick="funcPO"/>
	               </div>
            </form>
        </div>
    </div>

    <!-- 메뉴바 -->
    <div class = "menubar2">
        <div class = "여백3"></div>
        <div class="item-title">
            <a href="#main"><h2>갤럭시 Z 폴드2 5G</h2></a>
            <div class="item-title2">
                <ul>
                    <a href="#item-benefits"><li>특장점</li></a>
                    <a href="#review"><li>상품평</li></a>
                    <a href="#note"><li>유의사항</li></a>
                    <button>바로구매</button>
                </ul>
            </div>
        </div>
    </div>

        <!-- 특장점 -->
        <div class="item-benefits" id="item-benefits">
            <div class="item-video">
                <iframe width="1120" height="630" src="https://www.youtube.com/embed/lAOSljJYOqI?autoplay=1&mute=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <br/><br/><br/><br/><br/><br/><br/>
            
            <h1>섬세한 색조의 신비로운 미스틱 컬러</h1>
            <p>시대를 초월한 프리미엄을 제시할 두 가지 컬러를 소개합니다.<br/>
                무광의 미스틱 브론즈와 클래식한 유광의 미스틱 블랙 컬러는 고급스러운 색감으로 눈길을 사로잡습니다.</p>
            <img src="https://images.samsung.com/is/image/samsung/sec-feature-galaxy-z-fold2-302874846?$FB_TYPE_A_JPG$" alt="갤럭시 Z 폴드2 5G">
            
            <br/><br/><br/><br/><br/><br/><br/>
            <h1>펼치지 않아도 그 자체로 완전합니다</h1>
            <p>158.1 mm의 디스플레이로 커버 디스플레이를 꽉 채웠습니다.<br/>
                한 손으로 사용하기 딱 좋은 크기죠. 동영상과 게임을 즐기고 문자 메시지를 하기에 부족함이 없습니다.</p>
            <img src="https://images.samsung.com/is/image/samsung/sec-feature-galaxy-z-fold2-302874848?$FB_TYPE_A_JPG$" alt="갤럭시 Z 폴드2 5G">
            <p class="small-str2">* 화면을 직각화해 측정한 크기는 158.1 mm이며, 직각화하지 않고 측정한 크기는 156.5mm입니다. 둥근 모서리와 전면 카메라 홀로 인해 실제 보이는 영역은 화면 사이즈보다 작습니다.<br/>
                * 이해를 돕기 위해 연출된 이미지로 실 사용시 차이가 있을 수 있습니다.</p>
            
            <br/><br/><br/><br/><br/><br/><br/>
            <h1>펼치면 더 큰 세상을 마주하게 됩니다</h1>
            <p>삼성 Ultra Thin Glass를 사용한 192.7 mm 크기의 다이내믹 아몰레드 2X 디스플레이로 압도적인 화면을 경험해보세요.<br/>
                블루라이트를 획기적으로 줄여 큰 화면도 눈의 피로 걱정 없이 즐길 수 있습니다.</p>
            <img src="https://images.samsung.com/is/image/samsung/sec-feature-galaxy-z-fold2-302874850?$FB_TYPE_A_JPG$" alt="갤럭시 Z 폴드2 5G">

            <br/><br/><br/><br/><br/><br/><br/>
            <h1>섬세한 설계로 완성한 예술적인 움직임</h1>
            <p>부드럽게 펼쳐지는 최첨단 힌지 기술을 적용했습니다.<br/>
                접었다 펼 때마다 예술적인 움직임이 손끝에 느껴지죠. 보기 편한 각도로 조절하여 사용할 수 있습니다.</p>
            <img src="https://images.samsung.com/is/image/samsung/sec-feature-galaxy-z-fold2-302874852?$FB_TYPE_A_JPG$" alt="갤럭시 Z 폴드2 5G">
            <p class="small-str2">* 히든 힌지는 75°와 115° 사이의 각도에서 플렉스 모드를 지원합니다.<br/>
                * 흔들림이나 다른 상황들로 인해 움직이는 동안에는 플렉스 모드를 유지하기 어려울 수 있습니다. 플렉스 모드는 스마트폰을 움직이지 않는 상황에서 사용하기를 권장합니다.<br/>
                * 이해를 돕기 위해 연출된 이미지로 실 사용시 차이가 있을 수 있습니다.</p>

            <br/><br/><br/><br/><br/><br/><br/>
            <h1>나만의 각도로 감상</h1>
            <p>플렉스 모드를 사용하면 갤럭시 Z 폴드 5G를 다양한 각도로 접거나 펼칠 수도 있습니다.<br/>
                이제 스마트폰을 손에 들지 않고 Google Duo로 영상 통화를 하거나 좋아하는 콘텐츠를 감상해보세요.</p>
            <img src="https://images.samsung.com/is/image/samsung/sec-feature-galaxy-z-fold2-302874854?$FB_TYPE_A_JPG$" alt="갤럭시 Z 폴드2 5G">
            <p class="small-str2">* Google Duo 관련 표기는 Google LLC.의 상표입니다.<br/>
                * 플렉스 모드가 동작하는 각도는 75˚~115˚입니다. 해당 범위를 벗어날 경우 제품이 완전히 펼쳐지거나 접힐 수 있습니다.<br/>
                * 이동 중에는 흔들림과 같은 충격으로 플렉스 모드 유지가 어려울 수 있습니다. 가급적 정지된 상태에서 사용하시기를 권장합니다.<br/>
                * 일부 앱은 플렉스 모드를 지원하지 않을 수 있습니다.<br/>
                * 이해를 돕기 위해 연출된 이미지입니다. 실제 UI는다를 수 있습니다.</p>
            
            <br/><br/><br/><br/><br/><br/><br/>
            <h1>플렉스 모드로 새롭게 촬영하세요</h1>
            <p>삼각대나 거치대 없이도 다양한 각도에서 사진을 찍거나 동영상을 촬영할 수 있습니다.<br/>
                촬영 인물에 따라 화각을 바꿔주는 자동 프레이밍 기능까지 추가되어 브이로그도 손쉽게 촬영할 수 있습니다.</p>
            <img src="https://images.samsung.com/is/image/samsung/sec-feature-galaxy-z-fold2-302874856?$FB_TYPE_A_JPG$" alt="갤럭시 Z 폴드2 5G">
            <p class="small-str2">* 플렉스 모드가 동작하는 각도는 75˚~115˚입니다. 해당 범위를 벗어날 경우 제품이 완전히 펼쳐지거나 접힐 수 있습니다.<br/>
                * 이동 중에는 흔들림과 같은 충격으로 플렉스 모드 유지가 어려울 수 있습니다. 가급적 정지된 상태에서 사용하시기를 권장합니다.<br/>
                * 일부 앱은 플렉스 모드를 지원하지 않을 수 있습니다.<br/>
                * 이해를 돕기 위해 연출된 이미지입니다. 실제 UI는 다를 수 있습니다.</p>
            
            <br/><br/><br/><br/><br/><br/><br/>
            <h1>화면과 화면 간의 매끄러운 연결</h1>
            <p>커버 디스플레이와 메인 디스플레이가 자연스럽게 연결됩니다.<br/>
                갤럭시 Z 폴드2 5G를 접은 상태에서 앱을 사용하다가 화면을 펼쳐보세요. 더 큰 화면에서 사용하던 그대로 이어집니다.</p>
            <img src="https://images.samsung.com/is/image/samsung/sec-feature-galaxy-z-fold2-302874858?$FB_TYPE_A_JPG$" alt="갤럭시 Z 폴드2 5G"> 
            <p class="small-str2">* 일부 앱은 앱 연속성을 지원하지 않을 수 있습니다.<br/>
                * 메인 디스플레이 보기는 설정에서 조정할 수 있습니다.<br/>
                * 이해를 돕기 위해 연출된 이미지입니다. 실제 UI는 다를 수 있습니다.</p>
            
            <br/><br/><br/><br/><br/><br/><br/>
            <h1>앞서 가는 멀티플레이</h1>
            <p>멀티 액티브 윈도우가 업그레이드됐습니다.<br/>
                커버 디스플레이에서는 두 개의 앱을, 메인 디스플레이에서는 세 개의 앱을 동시에 사용할 수 있죠.<br/>
                이제 한 번에 더 많은 일을 하세요.</p>
            <img src="https://images.samsung.com/is/image/samsung/sec-feature-galaxy-z-fold2-302874860?$FB_TYPE_A_JPG$" alt="갤럭시 Z 폴드2 5G">
            
            <br/><br/><br/><br/><br/><br/><br/>
            <h1>완전히 새로운 게임 세계가 펼쳐집니다</h1>
            <p>메인 디스플레이에서 120 Hz 주사율의 부드러운 장면 전환과 빠른 반응 속도를 느껴보세요.<br/>
                블루투스 컨트롤러와 갤럭시 버즈 라이브까지 연결하면 게이밍 환경이 더 완벽해지죠.</p>
            <img src="https://images.samsung.com/is/image/samsung/sec-feature-galaxy-z-fold2-302874862?$FB_TYPE_A_JPG$" alt="갤럭시 Z 폴드2 5G">
            
            <br/><br/><br/><br/><br/><br/><br/>
            <h1>촬영하기 전에 한 번 더 체크해보세요</h1>
            <p>갤럭시 Z 폴드2 5G를 펼치면 커버와 메인 디스플레이 모두에서 카메라에 잡힌 모습을 미리 볼 수 있습니다.<br/>
                찍는 사람도 찍히는 사람도 더 만족할 만한 사진을 촬영할 수 있죠.</p>
            <img src="https://images.samsung.com/is/image/samsung/sec-feature-galaxy-z-fold2-302874868?$FB_TYPE_A_JPG$" alt="갤럭시 Z 폴드2 5G">

            <br/><br/><br/><br/><br/><br/><br/>
            <h1>차원이 다른 셀피를 완성하세요</h1>
            <p>고성능 후면 카메라로 셀피를 찍을 수 있습니다. 커버 디스플레이에서 카메라를 실행한 뒤, 셀피 아이콘을 누르고 화면을 펼쳐보세요.<br/>
                커버 디스플레이로 내 모습을 보면서 촬영할 수 있습니다.</p>
            <img src="https://images.samsung.com/is/image/samsung/sec-feature-galaxy-z-fold2-302874870?$FB_TYPE_A_JPG$" alt="갤럭시 Z 폴드2 5G">
            <br/><br/><br/><br/><br/><br/><br/>
        </div>
        
        <!-- 상품평 -->
        <div class="review" id="review">
            <div class="여백1"></div>
            <h2>상품평</h2>
            <div class="review-avg">
                <ul>
                    <li>상품</li>
                    <li>배송</li>
                    <li>프로모션</li>
                    <li>기타</li>
                </ul>
            </div>
            <span class="total-review-menu">전체 상품평</span>
            <button class="write-review-btn" onclick="location.href='./review3/write.jsp'"><i class="fas fa-pen"></i> 상품평 작성</button>
            <div class="total-review">
             
             
             <%--review에서 가져옴 --%>
<%--         <div class="container">
 		<div class="row">
 		<form method="post" name="frm_review">
	 			<table class="review-table-detail" style="text-align: center;"> 
	 				<tbody>
	 					<tr>
	 						<td class="table-left">제목</td>
	 						<td class="table-right" colspan="2"><input type="text" name="reivewTitle" disabled="disabled" value="${vo.reviewTitle }"></td>
	 						
	 						<td class="table-right" colspan="2"><%= rv.getReviewTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
	 					</tr>
	 					<tr>
	 						<td class="table-left">작성자</td>
	 						<td class="table-right" colspan="2"><input type="text" name="memberId" disabled="disabled" value="${vo.memberId }"></td>
	 						<td class="table-right" colspan="2"><%= rv.getMemberId() %></td>
	 					</tr>
	 					<tr>
	 						<td class="table-left">작성일자</td>
	 						<td class="table-right" colspan="2"><input type="text" name="reviewDate" disabled="disabled" value="${vo.reviewDate }"></td>
	 						<td class="table-right" colspan="2"><%= rv.getReviewDate()%></td>
	 					</tr>
	 					<tr>
	 						<td class="table-left">사진</td>
	 						<td  class="table-right" colspan="2">
	 						<a href='review3/upload/${vo.reviewImg}' download = '${vo.reviewImg }'>
										<img src='review3/upload/${vo.reviewImg}' width='200px' height='140px'/>
									</a>
							</td>	
						<hr/>
						</tr>
	 					<tr>
	 						<td class="table-right" id="table-doc" colspan="2"><input type="text" name="reivewDoc" disabled="disabled" value="${vo.reviewDoc }"></td>
	 						<td class="table-right" id="table-doc" colspan="2"><%= rv.getReviewDoc().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>")%></td>
	 					</tr>
	 						
	 				</tbody>
	 			</table>
	 			<input type="hidden" name="reviewSerial" value="6">
 			</form> 
 		</div>
 	</div>
 	 --%>
 			
            </div>
        </div>


        <!-- 유의사항 -->
        <div id="note"></div>
        <div class="여백2"></div>
        <div class= "note">
            <h2>구매시 유의사항</h2>
            <ul>
                <div class="note-btn">
                    <input type="button" class="note-btn1" value="배송정책" />
                    <input type="button" class="note-btn2" value="교환/반품/AS 안내"/>
                    <input type="button" class="note-btn3" value="교환/반품 불가 안내"/>
                </div>    
                    <div class='배송정책'>
                        <p class="bold">배송지역</p>
                            <p>도서 산간지역은 배송이 제한될 수 있습니다.</p><br>
                        <p class="bold">배송비</p>
                        <p>전 상품 무료배송<br>
                            (단, 제주도 등 일부 도서/산간 지역은 별도 배송비가 발생할 수 있으며, 설치상품의 경우 설치 환경 등에 따라 추가 설치비가 발생할 수 있습니다.)</p><br>
                        <p class="bold">배송기간</p>
                        <p>주문결제 후 평균 3일 이내 배송 (일, 공휴일 제외) 단, 도서/산간지역은 배송일이 추가적으로 소요될 수 있으며, 상품 보유현황에 따라 배송일이 지연될 수 있습니다.<br>
                            아래 상품군은 지정하신 희망배송일에 상품을 배송 해 드리나 상품 보유현황 및 설치기사 상황에 따라 배송이 다소 지연될 수 있습니다.<br>
                            - 희망배송일 지정 가능 상품군 : 전자레인지, 청소기, 자연가습청정기<br>
                            - 희망배송일 지정 및 설치 상품군 : PC/모니터, 프린터, 오븐, 에어케어, 에어트랙, 무선도킹오디오,블루레이/DVD플레이어<br>
                            또한 인수고객과의 통화불가, 수령지 주소가 불명확할 경우 배송이 지연될 수 있습니다.</p><br>
                        <p class="bold">배송방법</p>
                        <p>배송 당일 오전에 SMS로 배송예정을 알리는 문자를 발송해드리며, 고객 댁에 도착하기 전 배달설치 기사가 연락 드립니다. 스팸 처리 등으로 인해 문자를<br>
                            받지 못하는 경우가 있으니 주문내역에서 배송 상황을 확인해주시기 바랍니다. 파인애플 배송 상품 중에는 고가의 프리미엄 상품들이 포함되어 있어 고객님께<br>
                            직접 전달을 원칙으로 하고 있습니다. 안전한 배송을 위해 고객님이 주문 시 지정한 배송장소 외 제3자 전달이나 임의장소로의 배송은 제공하지 않습니다.<br>
                            설치상품을 주문 시에는 설치환경을 꼭 체크하여 주십시오.<br>
                            - TV: 벽걸이 설치 시 설치 불가한 벽면 재질은 아닌지 확인하여 주십시오.<br>
                            - 냉장고/세탁기 : 설치공간 사이즈, 출입문 사이즈, 제품 사이즈를 주문 전에 확인하여 주십시오.<br>
                            - TV 138 cm 이상, 양문형 냉장고, 비스포크 냉장고, 스탠드형 김치냉장고, 세탁기 7 kg 이상, 건조기, 에어드레서는 반드시 설치가 필요한 품목으로, 설치 전문가가 직접 설치, 시운전 후 이상 여부를 점검하고 있습니다.<br>
                            미설치 단순 수령이 불가한 제품이오니, 고객님의 사정으로 미설치 시 배송 보류 또는 반품될 수 있습니다.</p><br>
                        <p class="bold">배송추적</p>
                            <p>파인애플 상단 '마이페이지 -> 주문/배송조회 -> 주문정보'에서 배송상태 및 배달설치 기사 전화번호 조회가 가능합니다.</p><br>
                    </div>

                    <div class='교환반품기간'>
                        <p class="bold">교환/반품 기간</p>
                            <p>단순변심에 의한 상품의 교환ㆍ반품은 실제 상품 등을 수령하신 날부터 7일 이내에 가능합니다. 단, 상품안내 페이지에 표시된 교환/반품 기간이 7일보다 긴 경우에는 그 기간을 따릅니다.<br>
                            수령한 상품 등의 내용이 표시ㆍ광고 내용과 다르거나 오배송 등 계약내용과 다르게 이행된 경우에는 수령하신 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 가능합니다.<br>
                            제품을 교환/반품 하기 전 고객센터로 미리 연락을 주셔야 합니다.<br>
                            제품 자체에 하자가 있는 경우 파인애플 서비스센터로 접수하시면 A/S 기사의 판정을 거친 후 소비자분쟁해결기준에 의거하여 파인애플 서비스 센터를 통해 교환/환불/수리해드립니다.<br>
                            미성년자인 고객이 구매계약을 체결한 후, 법정대리인이 그 계약에 동의하지 아니하면 본인 또는 법정대리인이 취소할 수 있습니다.</p><br>
                            <p class="bold">교환/반품 배송비</p>
                            <p>구매하신 상품의 교환ㆍ반품을 하시는 경우에는 상품 등의 반환에 필요한 비용(2,500원)을 고객님이 부담하셔야 합니다. 단, 고객님이 받으신 상품 등의 내용이 표시ㆍ광고 내용과 다르거나 제품하자ㆍ오배송 등 계약내용과 다르게 이행되어 교환/반품을 하시는 경우에는, 교환ㆍ반품 배송비는 무료입니다.</p><br>
                            <p class="bold">환불지연 배상금 지급안내</p>
                            <p>대금 환불 및 환불 지연에 따른 배상금 지급 조건, 절차 등은 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 처리합니다.</p><br>
                            <p class="bold">A/S 안내</p>
                            <p>파인애플에서 판매되는 상품에 대해서는 가까운 파인애플 서비스센터를 방문하시면 A/S가 가능합니다. (상품A/S 문의전화: 1588-3366)<br>
                            일부제품의 경우 파인애플 서비스센터에서 A/S가 불가능하므로, [스펙] -> [상품기본정보] 의 [A/S 책임자와 전화번호] 정보를 확인하시기 바랍니다.</p><br>
                    </div>

                    <div class="교환반품불가사유">      
                        <p class="bold">교환/반품 불가사유</p>
                            <p>- 고객님의 책임 있는 사유로 상품이 멸실 또는 훼손된 경우<br>
                            (다만, 단순히 상품의 내용을 확인하기 위해 포장 등을 훼손한 경우는 제외)<br>
                            - 고객님의 사용으로 상품가치가 현저히 감소된 경우<br>
                            - 패키지 상품의 경우 구성상품 일부의 개봉/설치/사용으로 상품가치가 현저히 감소된 경우<br>
                            * 특히, 잉크/토너/필터의 경우 상품박스 훼손 및 내부 비닐포장 개봉시 반품이 불가합니다. 상품 주문전 호환 가능상품을 반드시 확인하시고 주문해주시기 바랍니다.<br>
                            * 무약정폰의 경우 반품은 상품을 수령하신 날부터 7일 이내, 통신사 개통 이전에만 가능합니다.<br>
                            - 시간이 경과되어 재판매가 곤란할 정도로 상품가치가 상실된 경우<br>
                            - 복제가 가능한 상품의 경우 그 원본인 상품의 포장이 훼손된 경우<br>
                            - 설치완료 상품에 하자가 없는 경우<br>
                            - 상품 등의 내용이 표시ㆍ광고 내용 및 계약내용과 같고, 별도의 하자가 없음에도 단순변심으로 인한 교환을 요구하는 경우<br>
                            - 기타, '전자상거래 등에서의 소비자보호에 관한 법률' 등 관계법령이 정하는 교환/반품 제한사유에 해당되는 경우</p>
                    </div>          
            </ul>
        </div>
        
   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
<script>

</script>
</body>
<iframe name="iframe1" style="display:none;"></iframe>
</html>