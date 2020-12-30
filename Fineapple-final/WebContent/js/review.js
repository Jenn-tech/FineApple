/**
 * 	리뷰 스크립
 *  작성자 : 돌멩이
 *  작성일 : 2020.12
 */

var getID = function(id){
	return document.getElementById(id);
}

var review = function(){
	
	var btnInsert = getID('btnInsert');
	
	if(btnInsert != null){
		btnInsert.onclick = function(){
			var frm = document.frm_rv_insert;
			frm.action = './insert_result.jsp';
			frm.submit();
		}
	}
	
}

function funcDelete(frm){
	frm.action = './delete_result.jsp';
	frm.submit();
}

function funcUpdate(frm){
	if(frm.btnUpdate.value=='수정'){
		frm.doc.disabled=false; 
		frm.btnUpdate.value='수정내용저장';
	}else if(frm.btnUpdate.value=='수정내용저장'){
		frm.action = './update_result.jsp';
		frm.submit();
	}
}

function goPage(page){
	var frm = document.frm_rv;
	frm.action = './select.jsp';
	frm.nowPage.value = page;
	frm.submit();
}

function view(id){
	var frm = document.frm_rv;
	frm.action = '../review.do?job=view';
	frm.id.value = id;
	frm.submit();
}