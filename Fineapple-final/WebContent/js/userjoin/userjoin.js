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

/* 
function send_go(){
			alert("이름을 입력하세요");
	        return false;

	 }

*/
 
function fn_validate() {
	
	var userInfo = document.userInfo;
	var frm_id = userInfo.frm_id.value;
	var frm_password = userInfo.frm_password.value;
	
	if((frm_id.length == 0 || frm_id == "")) {
		alert('아이디를 입력해주세요.');
		userInfo.frm_id.focus();
		return;
	}else if (frm_password == 0 || frm_password == ""){
		alert('비밀번호를 입력해주세요.');
		userInfo.frm_password.focus();
		return;
	}else if(re_frm_password == 0 || re_frm_password == ""){
		alert('비밀번호를 재입력해주세요.');
		userInfo.re_frm_password.focus();
		return;
	}
	
	userInfo.action = "www.daum.net";
	userInfo.submit();
}


function joinCheck(obj) {
	if(!obj.frm_id.value || obj.frm_id.value.trim().length == 0) {
		alert('아이디를 입력해주세요.');
		obj.frm_id.value ="";
		obj.frm_id.focus();
		return false;
	}
	
	if(!obj.frm_password.value || obj.frm_password.value.trim().length == 0) {
		alert('비밀번호를 입력해주세요.');
		obj.frm_password.value ="";
		obj.frm_password.focus();
		return false;
	}
	
	if(!obj.frm_password.value || obj.frm_password.value.trim().length == 0) {
		alert('비밀번호를 입력해주세요.');
		obj.frm_password.value ="";
		obj.frm_password.focus();
		return false;
	}
	
	if(!obj.re_frm_password || obj.re_frm_password.value.trim().length == 0){
		alert('비밀번호를 재입력해주세요.');
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
		alert('이메일을 입력해주세요.');
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
