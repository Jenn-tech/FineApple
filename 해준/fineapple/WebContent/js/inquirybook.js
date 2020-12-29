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

	if(cs_insert_btnSave != null) {
		cs_insert_btnSave.onclick = function() {
			var frm = document.frm_question;
			frm.enctype = 'multipart/form-data';
			frm.action = 'inquiry.do?qa=insert';
			frm.submit();
		}
	}
	$('#cs_notice_btn_insert').on('click', function() {
		var frm = document.frm_cs_notice;
		frm.action = 'cs_func_page.jsp?func=./cs_center/cs_notice_insert.jsp';
		frm.submit();
	})
}

var initmenu = function() {
	$('.cs_func_page_quickmenu_ul ul').hide();
	$('.cs_func_page_quickmenu_ul ul').children().parent().show();
	$('.cs_func_page_quickmenu_ul ul > li > a').click(
		function() {
      var checkElement = $(this).next();
      if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
        return false;
        }
      if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
        $('.cs_func_page_quickmenu_ul ul:visible').slideUp('normal');
        checkElement.slideDown('normal');
        return false; 
        }
      })
}
function initMenu() {
  $('.cs_func_page_quickmenu_ul ul').hide();
  $('.cs_func_page_quickmenu_ul li a').click(
    function() {
        $(this).next().slideToggle('normal');	
      }
    );  
  }
$(document).ready(function() {initMenu();});

var gofaq = function(value) {
	var frm = document.frm_faqbook;
	frm.faqStr.value = value;
	frm.action = 'inquiry.do?qa=selectfaq';
	frm.submit();
}



/*--------------- notice js ---------------*/


var notice = function() {

	var frm = document.frm_cs_notice;

	$('#cs_notice_insert_save').on('click', function() {
		frm.submit();
	})

	$('#cs_notice_insert_cancel').on('click', function() {
		frm.notice.value = 'select';		
		frm.submit();
	})
}

var view = function(serial) {
	var frm = document.frm_cs_notice;
	frm.serial.value = serial;
	frm.notice.value = 'view';
	frm.submit();
}



var autoscroll = function() {
	$('#cs_notice_repl').on('keyup', function() {
		$(this).css('height', 'auto');
		$(this).height(this.scrollHeight);
		
	})
	
}











