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
			frm.action = '../notice/insert_result.jsp';
			frm.submit();
		}
	}	
	
}
