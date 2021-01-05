/**
 * 
 */
function getID(id){ return document.getElementById(id)}


// 다음 우편번호 검색 API를 사용한 주소 찾기
var member = function() {
	
var btnFindZip = getID('btnFindZip');
var idCheck = getID('id-Check');


	if(btnFindZip != null) {
		btnFindZip.onclick = function() {
			var frm = document.getElementById("frm_member");
			new daum.Postcode({
				oncomplete:function(data) {
					frm.zipcode.value = data.zonecode;
					frm.address.value = data.address;

				}
			}).open();
		}
	
	}
	
	if(idCheck != null) {
			idCheck.onclick = function() {
			window.open("idCheckForm.jsp", "idwin", "width=400, height=350");

		}
	}
}

/* 전화번호 하이픈 자동 추가하기 */
var phoneHypen = function() {
	var autoHypenPhone = function(str){
	      str = str.replace(/[^0-9]/g, '');
	      var tmp = '';
	      if( str.length < 5){
	          return str;
	      }else if(str.length <= 8){
	          tmp += str.substr(0, 4);
	          tmp += '-';
	          tmp += str.substr(4);
	          return tmp;
	      }
	  
	      return str;
	}


	var phoneNum = document.getElementById('phoneNum');

	phoneNum.onkeyup = function(){
	  this.value = autoHypenPhone( this.value ) ;  
	}
}

/* */
function send_go(){
			alert("이름을 입력하세요");
	        return false;

	 }


 
