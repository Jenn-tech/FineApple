/**
 * product list 를 ajax로
 */
var laptop = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'POST',
		url: "laptop.jsp",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};
var phone = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'POST',
		url: "phone.jsp",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};
var tablet = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	$.ajax({
		type: 'POST',
		url: "tablet.jsp",
		data: "",
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			$('#product_list').html(data);
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
};



