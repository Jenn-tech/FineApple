/**
 * 
 */
function getID(id){ return document.getElementById(id)}


// 다음 우편번호 검색 API를 사용한 주소 찾기
var member = function() {
	
var btnFindZip = getID('btnFindZip');
var idCheck = getID('id-Check');
var userInfo = getID('frm_member');

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
			if(document.userInfo.frm_id.value == "") {
				alert("아이디를 입력하세요.");
				return;
			}
		
			var userInfo = document.userInfo;
			var user_id =  userInfo.frm_id.value;
			console.log(user_id);
			userInfo.action = "/Fineapple-final/UsersJoin/formCheck";
			userInfo.method="POST";
			userInfo.submit();
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

/* 
function send_go(){
			alert("이름을 입력하세요");
	        return false;

	 }

*/
 
	
function onlyEng(objtext1) {
  var inText = objtext1.value;

  if (deny_pattern.test(inText)) {
    alert("영문자와 한글,숫자만을 입력하세요");
    objtext1.value = "";
    objtext1.focus();
    return false;
  }
  return true;
}



function joinCheck(obj) {
	
   var deny_char = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/
   var regExpPw = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/;
   var regExpEm = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	if(!obj.frm_id.value || obj.frm_id.value.trim().length == 0 && (obj.frm_id.value != deny_char)) {
		alert('영문자와 한글,숫자만을 입력하세요');
		obj.frm_id.value ="";
		obj.frm_id.focus();
		return false;
	}
	
	if(!obj.frm_password.value || obj.frm_password.value.trim().length == 0 && (obj.frm_password.value != regExpPw)) {
		alert('숫자, 특문 각 1회 이상, 영문은 2개 이상 사용하여 8자리 이상 입력하세요');
		obj.frm_password.value ="";
		obj.frm_password.focus();
		return false;
	}
	

	if(obj.re_frm_password.value != obj.frm_password.value){
		alert('비밀번호가 다릅니다.');
		obj.re_frm_password.value ="";
		obj.re_frm_password.focus();
		return false;
	}
	
	if(!obj.frm_name || obj.frm_name.value.trim().length == 0){
		alert('이름을 입력해주세요.');
		obj.frm_name ="";
		obj.frm_name.focus();
		return false;
	}
	
	if(!obj.frm_email || obj.frm_email.value.trim().length == 0){
		alert('이메일을 입력해주세요');
		obj.frm_email ="";
		obj.frm_email.focus();
		return false;
	}
	
	if(!obj.frm_phone || obj.frm_phone.value.trim().length == 0){
		alert('전화번호를 입력해주세요.');
		obj.frm_phone = "";
		obj.frm_phone.focus();
		return false;
	}
	
	if(!obj.zipcode || obj.zipcode.value.trim().length == 0) {
		alert('우편번호를 입력해주세요.')
		obj.zipcode = "";
		obj.zipcode.focus();
		return false;
	}
	
		if(!obj.btnZipcode || obj.btnZipcode.value.trim().length == 0) {
		alert('상세 주소를 입력해주세요.')
		obj.btnZipcode = "";
		obj.btnZipcode.focus();
		return false;
	}
	
		if(!obj.address || obj.address.value.trim().length == 0) {
		alert('우편번호를 입력해주세요.')
		obj.address = "";
		obj.address.focus();
		return false;
	}
	
	
	return true;
}
