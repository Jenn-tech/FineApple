/** 작성자: 정해준
	작업일자: 2020-12-23
 * 
 */

function getID(id) {
	return document.getElementById(id);
}


var question = function() {
	
	var btnSave= getID("btnSave");
	var btnSelect = getID("btnSelect");
	var btnCancel = getID("btnCancel");

	if(btnCancel != null) {
		btnCancel.onclick = function() {
						
		}
	}

	if(btnSave != null) {
		btnSave.onclick = function() {
			var frm = document.frm_question;
			frm.enctype = 'multipart/form-data';
			frm.action = 'inquiry.do?qa=insert';
			frm.submit();
		}
	}
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
