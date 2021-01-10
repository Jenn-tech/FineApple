/**
 * 
 */

function check_Pwd() {
	
		var frm = document.frm_member;
		var frmPwd = frm.frm_password.value;
		var frmRePwd = frm.re_frm_password.value;
		
		if(frmPwd.trim().length == 0 || frmRePwd.trim().length == 0)   {
			document.frm_member.frm_password.focus();
			alert('비밀번호를 입력해주세요.')
			return false;
		}
		
		if(frmPwd != frmRePwd) {
			alert('비밀번호가 다릅니다.');
			document.frm_member.re_frm_password.focus();
			return false;

		}

			alert('회원정보가 수정되었습니다.');
			frm.action = '../userProfileServlet.do';
			frm.submit();
		}