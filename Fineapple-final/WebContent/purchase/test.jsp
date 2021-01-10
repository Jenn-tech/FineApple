<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>  
<body>

<input type="button" id="naverPayBtn">
<script>

var IMP = window.IMP; // 생략가능
IMP.init('imp85740135');  // 가맹점 식별 코드
IMP.request_pay({
	pg : "nice", // version 1.1.0부터 지원.
    pay_method : 'vbank',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '주문명:결제테스트',
    amount : 100,
    buyer_email : 'iamport@siot.do',
    buyer_name : '구매자이름',
    buyer_tel : '010-1234-5678',
    buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456',
    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        location.href='<%=request.getContextPath() %>/purchase/payComplete.jsp';
    } else {
        var msg = '결제에 실패하였습니다.';
        rsp.error_msg;
        
    }
    alert(rsp.error_msg);
});

</script>  

</body>
</html>