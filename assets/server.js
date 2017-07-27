define(['../config/config'], function(module) {
	var $ = require("jquery");
	var baseUrl = 'http://test.adai-tech.com:8801';
	
	function get(url, data) {
		var dtd = $.Deferred(); // 新建一个deferred对象
		console.log(url);
		$.ajax({
			type : 'GET',
			url : baseUrl+url,
			data: data,
			dataType: 'json',
			success: function(data){
				dtd.resolve(data);
			},
			error: function(data){
				dtd.reject(data);
			}
		});
		return dtd;
	}
	function fetch(url, data){
		var dtd = $.Deferred(); // 新建一个deferred对象
		data = $.extend(data, {
			action: 'app_order',
			uid: window.uid,
			sid: window.session
		});
		$.ajax({
			type : 'POST',
			url : baseUrl+url,
			data: data,
			dataType: 'json',
			success: function(data){
				console.log(data);
				var ret = data.ret;
				if(ret.retCode == 0){
//					成功
					dtd.resolve(data);
				}else{
					console.log(ret.msg);
					dtd.reject(data);
				}
			},
			error: function(data){
				dtd.reject(data);
			}
		});
		return dtd;
	}
	return {
		checkState: function(){
			var dtd = $.Deferred();
			window.uid = localStorage.getItem("uid");
			window.session = localStorage.getItem("session");
			if(uid && session){
				dtd.resolve();
			}else{
				dtd.reject();
			}
			return dtd;
		},
		getCode: function(data){
			return get('/app/order', data);
		},
		login: function(data){
			return get('/app/order', data, cbk);
		},
		getVisitors : function(data) {
			return fetch('/app/order', data);
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
		setCurUser : function(u) {
			window.localStorage.setItem('curUser', JSON.stringify(u));
		},
		getCurUser: function(){
			var u = window.localStorage.getItem('curUser');
			return JSON.parse(u);
		}
	};
});