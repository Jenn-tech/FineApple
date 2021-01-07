/**
 * SweetAlert 가이드 페이지 
 * https://sweetalert.js.org/guides/
 */



$().ready(function () {
   $(".btn1").click(function () {
      Swal.fire({
         title: '장바구니에 추가되었습니다.',
         icon: 'success',
         showCancelButton: true, 
         confirmButtonColor: '#000',
         cancelButtonColor: '#000', 
         confirmButtonText: '장바구니 가기', 
         cancelButtonText: '쇼핑 계속하기'
      }).then((result) => {
          if (result.isConfirmed) {
             Swal.fire(document.location.href = "../mypage/cart.jsp")
               
         }else if(result.isCanceled){
            Swal.fire(history.go(-1))
         }
      })
   });
});

 


/*
$().ready(function () {
   $(".btn1").click(function () {
      Swal({
         title: '장바구니에 추가되었습니다.',
         icon: 'success',

		buttons : {
			cancle: {
				text : '쇼핑 계속하기',
				value : false,
			},
			confirm : {
				text : '로그인 창으로',
				value : true,
			}
		}
		}).then((result) =>{
			if(result){
				swal(document.location.href = "../mypage/cart.jsp")
			}else{
				 Swal(history.go(-1))
			}
		})
      })
   });
*/