<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>

</head>
<style>
.layerPopup img{
margin-bottom : 20px;}
.layerPopup {display:none;}
.layerPopup:before {display:block; content:""; position:fixed; left:0; top:0; width:100%; height:100%; background:rgba(0,0,0,.5); z-index:9000}
.layerPopup .layerBox {    z-index:10000;   
position:fixed; left:85%; top:48%; transform:translate(-50%, -50%); padding:30px; background:#fff; border-radius:6px; }
.layerPopup .layerBox .title {margin-bottom:10px; padding-bottom:10px; font-weight:600; border-bottom:1px solid #d9d9d9;}
.layerPopup .layerBox .btnTodayHide {
font-size:14px; font-weight:600; color:black; 
float: left;text-decoration:none;width: 150px; 
height : 30px;line-height:30px;border:black solid 1px; text-align : center;text-decoration:none;
}

.layerPopup .layerBox .btnClose {
font-size:14px; font-weight:600; width: 40px; height : 30px;color:black; float: right; line-height:30px;border:black solid 1px; text-align : center;text-decoration:none;
}
.layerPopup .layerBox .btnTodayHide:hover,
.layerPopup .layerBox .btnClose:hover{
	background : black;
	color : white;
}
</style>
<body>

<!-- layer popup content -->
<div class="layerPopup">
    <div class="layerBox">
        <h4 class="title">FineApple 공지사항</h4>
        <div class="cont">
            <p>
<img src="../images/popup.jpg" width=350 height=500 usemap="#popup" alt="event page">
            </p>
        </div>
        <a href="javascrfipt:;" class="btnClose">닫기</a>
        <a href="javascript:;" class="btnTodayHide">오늘 하루 보지 않기</a>
    </div>
</div>

<script>
var $layerPopup = document.querySelector('.layerPopup');
var $btnLayerPopupClose = document.querySelector('.layerPopup .btnClose');
var $btnLayerPopupTodayHide = document.querySelector('.layerPopup .btnTodayHide');

//최초 레이어팝업 노출
layerPopupShow();

//레이어팝업 닫기 버튼 클릭
$btnLayerPopupClose.addEventListener('click', function(){
    layerPopupHide(0);
});

//레이어팝업 오늘 하루 보지 않기 버튼 클릭
$btnLayerPopupTodayHide.addEventListener('click', function(){
    layerPopupHide(1);
});

//레이어팝업 노출
function layerPopupShow(){
    $layerPopup.style.display = 'block'
    	if($.cookie('testCookie') == undefined){
            //쿠키가 없는 경우 testCookie 쿠키를 추가
            $.cookie('testCookie', 'Y', { expires: 1, path: '/' });
      
        }        
}
//레이어팝업 비노출
function layerPopupHide(state){
    //닫기버튼 오늘하루보지않기 버튼 무관하계 레이어팝업은 닫는다.
    $layerPopup.style.display = 'none'

    	//'testCookie' 이름의 쿠키가 있는지 체크한다.
        if($.cookie('testCookie') == undefined){
            //쿠키가 없는 경우 testCookie 쿠키를 추가
            $.cookie('testCookie', 'Y', { expires: 1, path: '/' });
            /**
                설명 :
                임의로 testCookie라는 이름에 Y라는 값을 넣어주었고,
                expires값으로 1을 주어 1일 후 쿠키가 삭제되도록 하였다.
                path값을 '/'로 주면 해당사이트 모든페이지에서 유효한 쿠키를 생성한다.
                특정페이지에서만 작동하려면 페이지 경로를 작성하면 된다.
            **/
        }        
    }

</script>
</body>
</html>