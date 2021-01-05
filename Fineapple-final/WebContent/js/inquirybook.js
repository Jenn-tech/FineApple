/** 작성자: 정해준
	작업일자: 2020-12-23
 * 
 */

function getID(id) {
	return document.getElementById(id);
}


var question = function() {
	
	var cs_insert_btnSave= getID("cs_insert_btnSave");
	var btnSelect = getID("btnSelect");
	var btnCancel = getID("btnCancel");
	if(btnCancel != null) {
		btnCancel.onclick = function() {
		}
	}

	$('#cs_notice_btn_insert').on('click', function() {
		var frm = document.frm_cs_notice;
		frm.action = 'cs_func_page.jsp?func=./cs_center/cs_notice_insert.jsp';
		frm.submit();
	})
}

/* --------------- func_page quick menu toggle --------------- */
var toggleMenu = function() {
$(document).ready(function() {
	$(".cs_FAQ_title a").on('click', function() {
		
		var submenu = $(this).parent().next();
		
		if(submenu.is(":visible")) {
			$(this).css("color", "#000000");
			submenu.slideUp();
			$('#cs_faq_change_img').attr("src", "../images/arrow_bottom.png")
		}
		else {
			$(this).css("color", "rgb(91, 135, 164)");
			submenu.slideDown();
			$('#cs_faq_change_img').attr("src", "../images/arrow_top.png")
				
		}
	})
});
}


/*--------------- board JS ---------------*/

var inquiry = function() {
	var cs_btnInsert = getID("cs_btnInsert");
	var cs_insert_btnCancel = getID("cs_insert_btnCancel");
	var cs_insert_btnSave = getID("cs_insert_btnSave");
	var cs_view_btnUpdate = getID("cs_view_btnUpdate");
	var cs_view_btnDelete = getID('cs_view_btnDelete')	
	var cs_view_btnSelect = getID('cs_view_btnSelect');
	var cs_answer_btnInsert = getID('cs_answer_btnInsert');
	
	var frm = document.cs_frm_board;
	 

	if(cs_answer_btnInsert != null) {
		cs_answer_btnInsert.onclick = function() {
			frm.action = 'cs_func_page.jsp?func=../cs_center/cs_answer.jsp';
			frm.submit();
		}
	}

	/*Q&A 수정 화면에서 다시 글로 돌아가는 키*/
	if(cs_view_btnSelect != null) {
		cs_view_btnSelect.onclick = function() {
			frm.action = 'cs_func_page.jsp?func=../cs_center/cs_view.jsp';
			frm.submit();
			
			
		}
	}
	
	/*Q&A 작성글 삭제 키*/
	if(cs_view_btnDelete != null) {
		cs_view_btnDelete.onclick = function() {
			var pwd = prompt("삭제하시려면 암호를 입력해주세요.");
			if(pwd != null) {
			frm.pwd.value = pwd;				
			frm.action = 'inquiry.do?job=delete';
			frm.submit();
			}
		}
	}

	/*Q&A 글에서 수정으로 들어가는 키*/
	if(cs_view_btnUpdate != null) {
		cs_view_btnUpdate.onclick = function() {
			frm.action = 'inquiry.do?job=update';
			frm.submit();
		}
	}

	/*Q&A 작성 후 servlet으로 전송하는 키*/
	if(cs_insert_btnSave != null) {
		cs_insert_btnSave.onclick = function() {
			frm.enctype = 'multipart/form-data';
			frm.action = 'inquiry.do?job=insertR';
			frm.submit();
		}
	}
	
	/*Q&A 글쓰기 중 다시 목록으로 돌아가는 키*/
	if(cs_insert_btnCancel !== null) {
		cs_insert_btnCancel.onclick = function() {
			frm.action = 'cs_func_page.jsp?func=../cs_center/cs_board.jsp';
			frm.submit();
		}
	}
	
	/*Q&A 글쓰기 페이지로 가는 키*/
	if(cs_btnInsert !== null) {
		cs_btnInsert.onclick = function() {
			frm.action = "cs_func_page.jsp?func=./cs_center/cs_insert.jsp";
			frm.submit();
		}
	}
	
}



/*-------------- cs_insert file_upload ---------------*/

var fileAttCnt = 1;

var fileUpload = function(attZone) {
	var zone = document.getElementById(attZone);
	append(zone);
}

function append(zone) {
	
	var div  = document.createElement("div");
	div.setAttribute("class", "attach_files")
	
	var img = document.createElement("img");
	img.setAttribute("src", "http://placehold.it/147x110");
	img.setAttribute("class", "attach_img");
	div.appendChild(img);
	img.onclick = function(ev) {
		imagePreView(zone,ev);
	}
	
	var file = document.createElement("input");
	file.setAttribute("type", "file");
	file.setAttribute("name", "attfile" + fileAttCnt);
	file.setAttribute("style", "display: none");
	file.setAttribute("modify", "no");
	file.setAttribute("class", "attfile");
	fileAttCnt++;
	
	var delBtn = document.createElement("input");
	delBtn.setAttribute("class", "attach_delBtn")
	delBtn.setAttribute("type", "button");
	delBtn.setAttribute("value", "x");
	delBtn.onclick = function(ev) {
		if(zone.childNodes.length <= 1) {
			return;
		}
		
		var ele = ev.srcElement;
		var p = ele.parentNode;
		var file = p.getElementsByClassName("attfile").item(0);
		
		if(file.getAttribute("modify") === "yes") {
			zone.removeChild(p);			
		}
	}
	div.appendChild(file);
	div.appendChild(delBtn);
	
	zone.appendChild(div);
}


var imagePreView = function(zone, ev) {
	var tag = ev.srcElement;
	var pDiv = tag.parentNode;
	var file = pDiv.getElementsByClassName("attfile").item(0);
	file.click();
	
	file.onchange = function(ev2) {
		if(file.getAttribute("modify") === "no") {
			append(zone);
		}
		
		var url = ev2.srcElement.files[0];
		var reader = new FileReader();
		
		reader.readAsDataURL(url);
		reader.onload = function(ev3) {
			tag.src = ev3.target.result;
			file.setAttribute("modify", "yes");
		}
	}
} 		




/*--------------- 페이지 이동, view 함수 설정 ---------------*/


var goPage = function(page) {
	var job = "../inquiry.do?job=";
	var frm = document.cs_frm_board;
	frm.nowPage.value = page;
	frm.action = job + "select";
	frm.submit();	
}

var view = function(serial) {
	var job = "inquiry.do?job=";
	var frm = document.cs_frm_board;
	
	frm.serial.value = serial;
	alert(frm.serial.value);
	frm.action = job + "view";
	frm.submit();	
}  

















