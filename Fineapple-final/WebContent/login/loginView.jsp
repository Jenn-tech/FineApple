<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"></script>
</head>
<body>
<div id="naverIdLogin" align="center">
    <a id="naver-login-btn" href="#" role="button">
        <img src="https://static.nid.naver.com/oauth/big_g.PNG" width="80%" height="45"/> 
    </a>
</div>


<script>
//네이버 로그인
$(function(){
    var naverLogin = new naver.LoginWithNaverId({
        clientId: "{fyPzWAkiT_459mrRrsXD}",
        callbackUrl: "{http://localhost:9090/Fineapple-final/login/naverCallback.jsp}",
        isPopup: true,
        loginButton: {color: "green", type: 3, height: 45}
    });
    naverLogin.init();
})//e.o.naver

</script>
</body>
</html>