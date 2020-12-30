/**
 * 
 */

var event = function() {

	var btnInsert = document.getElementById('btnInsert');
			var frm = document.frm_event;
	
	if(btnInsert != null){
		btnInsert.onclick = function(){
			frm.action = '../event/insert.jsp';
			frm.submit();
	}
			
	}
}