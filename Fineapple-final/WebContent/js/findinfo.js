/**
 * 아이디, 비밀번호 찾기
 */


//아이디찾기
function id_search1() { 
	 	var frm = document.idfindscreen;

	 	if (frm.member_name.value.length < 1) {
		  alert("이름을 입력해주세요");
		  return;
		 }

		 if (frm.member_phone.value.length != 13) {
			  alert("핸드폰번호를 정확하게 입력해주세요");
			  return;
		 }

	 frm.method = "post";
	 frm.action = "findIdResult.jsp"; //넘어간화면
	 frm.submit();  
	 }


//비밀번호찾기
 function pw_search(){

  var frm=document.pwfindscreen;

//id 유효성검사	
	if(frm.member_mid.value.length<3){
   alert("아이디를 올바르게 입력해주세요");
   return;
  }
//email유효성검사	
	else if (frm.member_email.value.length <1) {             
		alert("이메일을 입력하세요");
		frm.member_email.focus();	
		return;
	}               
	else if(!CheckEmail(frm.member_email.value)){
			alert("이메일 형식이 잘못되었습니다");
			frm.member_email.focus();
			return;
	}                



 //  if (frm.member_phone.value.length != 13) {
//			  alert("핸드폰번호를 정확하게 입력해주세요");
//			  return;
//		 }
	else {
	return true;
	}
  
  }

//이메일 유효성 검사
function CheckEmail(str){                                                 
     var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

     if(!reg_email.test(str)) {                            
          return false;         
     }                            
     else {                       
          return true;         
     }                            
}           


 function addHypen(obj) {
	    var number = obj.value.replace(/[^0-9]/g, "");
	    var phone = "";

	    if(number.length < 4) {
	        return number;
	    } else if(number.length < 7) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3);
	    } else if(number.length < 11) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 3);
	        phone += "-";
	        phone += number.substr(6);
	    } else {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 4);
	        phone += "-";
	        phone += number.substr(7);
	    }
	    obj.value = phone;
	}
	
function login() {
		if(btnLogin != null){
	btnLogin.onclick = function(){
		location.href = 'loginfo.jsp';
	}
	}
}
  function joinin() {
		if(btnjoin != null){
	btnjoin.onclick = function(){
		location.href = '../UsersJoin/index.jsp';
	}
	}
}