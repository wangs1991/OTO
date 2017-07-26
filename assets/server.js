define(['../config/config'], function(module) {
	var $ = require("jquery");
//	$(document).ajaxStart(function(){
//        console.log('ajaxStart');
//        console.log(arguments);
//	});
//	$(document).ajaxComplete(function(){
//        console.log('ajaxComplete');
//	});
	function post(url, data) {
//		在这里增加必须数据
		data.action = 'app_order';
		data.eventKind = 41;
		data.uid = 12;

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
		console.log(url);
		return $.ajax({
			type : 'GET',
			url : url
		});
	}
	return {
		getVisitors : function(url) {
			return get('../mock/visitors.json');
		},
		getRecords: function(data){
			return get('../mock/records.json', data);
		},
		checkHat: function(){
			return get('../mock/hat.json');
		},
		bindVR: function() {
			alert();
		},
		setCutUser : function(u) {
			window.localStorage.setItem('curUser', JSON.stringify(u));
		},
		getCurUser: function(){
			var u = window.localStorage.getItem('curUser');
			return JSON.parse(u);
		}
	};
});