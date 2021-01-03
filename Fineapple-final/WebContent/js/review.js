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
	var btnFind   = getID('btnFind');
	var btnSelect = getID('btnSelect');
	var btnSave   = getID('btnSave');
	var btnPhoto  = getID('btnPhoto');
	var btnModify = getID('btnModify');
	var btnUpdate = getID('btnUpdate');
	var btnDelete = getID('btnDelete');
	
	if(btnDelete != null){
		btnDelete.onclick = function(){
			var frm = document.frm_review;
			//var pwd = prompt("회원정보를 삭제하시려면 암호를 입력하세요");
			var win = window.open('./member/input_pwd.jsp', 'win', 'width=400px, height=100px, left=300px, top=300px');
			
			win.onbeforeunload = function(){
				if(frm.pwd.value != ''){
					frm.action = 'review.do?job=delete';
					frm.mid.disabled=false;
					frm.submit();
				}
			}
			
		}
	}
	
	
	if(btnUpdate != null){
		btnUpdate.onclick = function(){
			var frm = document.frm_review;

			//암호와 암호확인의 일치여부
			/*
			var pwd = prompt("회원정보를 수정하시려면 암호를 입력하세요");
			if(pwd == null){
				return;
			}
			frm.pwd.value = pwd;
			*/
			
			var win = window.open('./member/input_pwd.jsp', 'win', 'width=400px, height=100px, left=300px, top=300px');
			win.onbeforeunload = function(){
				if(frm.pwd.value != ''){
					frm.enctype = 'multipart/form-data';
					frm.action = 'review.do?job=update'; //수정된 정보를 저장
					frm.submit();
				}
			}
		}
	}
	
	if(btnModify != null){
		btnModify.onclick = function(){
			var frm = document.frm_review;
			frm.mid.disabled=false;
			frm.action = 'review.do?job=modify';//수정화면이동
			frm.submit();
		}
	}
	
	if(btnPhoto != null){
		btnPhoto.onchange = function(ev){
			var tag = ev.srcElement; // 이벤트 발생한 태그
			var url = tag.files[0]; // 선택된 파일명
			var reader = new FileReader();
			reader.readAsDataURL(url);
			reader.onload = function(e){
				var img = new Image();
				img.src = e.target.result;
				var photo = getID('photo');
				photo.src = img.src;
			}
		}
	}
	
	if(btnSave != null){
		btnSave.onclick = function(){
			var frm = document.frm_review;
				frm.enctype = 'multipart/form-data';
				frm.action = 'review.do?job=insert';
				frm.submit();
		}
	}

	if(btnSelect != null){
		btnSelect.onclick = function(){
			var frm = document.frm_review;
			frm.action = './review.jsp';
			frm.submit();
		}
	}
	
	if(btnFind != null){
		btnFind.onclick = function(){
			var frm = document.frm_review;
			frm.action = "review.do?job=select";
			frm.nowPage.value = 1;
			frm.submit();
		}
	}
	
	if(btnInsert != null){
		btnInsert.onclick = function(){
			var frm = document.frm_review;
			frm.action = 'review.do?job=insert';
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
	frm.action = './review.jsp';
	frm.nowPage.value = page;
	frm.submit();
}

function view(id){
	var frm = document.frm_rv;
	frm.action = './review.do?job=view';
	frm.id.value = id;
	frm.submit();
}