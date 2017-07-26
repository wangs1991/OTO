define(['../config/config'], function(module) {
//	console.log(module);
	function post(url, data) {
		var dtd = $.Deferred(); // 新建一个deferred对象
		$.ajax({
			type : 'POST',
			url : url,
			data : data,
			success : function(data) {
				dtd.resolve(data);
			},
			dataType : function(data) {
				dtd.reject(data);
			}
		});
		return dtd.promise();
	}
	function get(url) {
		/*var dtd = $.Deferred(); // 新建一个deferred对象
		console.log(111);
		$.ajax({
			type : 'GET',
			url : url,
			success : function(data) {
				console.log(22222);
				dtd.resolve(data);
			},
			dataType : function(data) {
				dtd.reject(data);
			}
		});
		return dtd.promise();*/
		return $.ajax({
			type : 'GET',
			url : url
		});
	}
	return {
		test : function(url) {
			return get(url);
		}
	};
});