/**
 * 
 */

var view = function(noticeNo) {
	var frm = document.frm_notice;
	frm.action = '../notice/view.jsp'
	frm.noticeNo.value = noticeNo;
	frm.submit();
}
