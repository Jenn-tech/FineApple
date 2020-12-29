/** 작성자: 정해준
	작업일자: 2020-12-23
 * 
 */

function getID(id) {
	return document.getElementById(id);
}


var question = function() {
	
	var btnInsert = getID("btnInsert");
	
	if(btnInsert != null) {
		btnInsert.onclick = function() {
			var frm = document.frm_question;
			frm.enctype = 'multipart/form-data';
			frm.action = '../question.do?qa=insert';
			frm.submit();
		}
	}
	
}