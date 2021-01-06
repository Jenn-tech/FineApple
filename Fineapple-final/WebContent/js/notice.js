/**
 * 
 */

var view = function(noticeNo) {
	var frm = document.frm_notice;
	frm.action = '../notice/view.jsp'
	frm.noticeNo.value = noticeNo;
	frm.submit();
}
var notice = function() {

	var frm = document.frm_notice;
	var btnInsert = document.getElementById('btnInsert');
	
	if(btnInsert != null){
		btnInsert.onclick = function(){
			frm.action = '../notice/insert.jsp';
			frm.submit();
	}
			
	}

	var btnSave= document.getElementById('btnSave');

	if(btnSave != null){
		btnSave.onclick = function(){
			var checkFlag = true;
			
			if(!frm.noticeSubject.checkValidity()){
				alert('제목을입력하세요');
				checkFlag = false;
			}else if(!frm.noticeDoc.checkValidity()){
				alert('제목을입력하세요');
				checkFlag = false;
				}
				
			if(checkFlag){
			frm.action = '../notice/insert_result.jsp';
			frm.submit();
			}
		}
	}	
	
}
