define(['../config/config'], function(module) {
	var $ = require("jquery");
	var baseUrl = 'http://test.adai-tech.com:8801';
	var justep = require("$UI/system/lib/justep");
	
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
		data = $.extend({
			action: 'app_order',
			uid: window.uid,
			session: window.session
		}, data);
		console.log(data);
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
					justep.Util.hint(ret.msg);
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
//		数据格式转化
		toJson: function(data){
			var res = {};
			var array = data.split('&');
			for(var i=0, len=array.length; i < len; i++){
				var tmp = array[i].split('=');
				res[tmp[0]] = tmp[1];
			}
			return res;
		},
//		获取用户登录状态
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
//		皮肤点的读取操作
		skinData: function(key, data){
			if(data){
				window.localStorage.setItem(key, data.join('/'));
//				清空数据
				window.skinArraylist = [];
				return data;
			}else{
				return window.localStorage.getItem(key).split('/');
			}
		},
//		获取验证码
		getCode: function(data){
			return get('/app/order', data);
		},
//		登录方法
		login: function(data){
			return get('/app/order', data);
		},
//		获取来访者列列表
		getVisitors : function(data) {
			return fetch('/app/order', data);
		},
//		获取训练记录列表
		getRecords: function(data){
			return fetch('/app/order', data);
		},
//		获取训练详情
		getPecDetail: function(data){
			return fetch('/app/order', data);
		},
//		检测设备连接状态
		checkHat: function(data){
			return fetch('/app/order', data);
		},
//		绑定头盔
		bindVR: function(data) {
			return fetch('/app/order', data);
		},
//		存储当前操作用户数据
		setCurUser : function(u) {
			window.localStorage.setItem('curUser', JSON.stringify(u));
		},
//		获取本地当前操作用户信息
		getCurUser: function(){
			var u = window.localStorage.getItem('curUser');
			return JSON.parse(u);
		},
//		获取本地设备id
		deviceId : function(id){
			if(id){
				window.localStorage.setItem('devId', id);
				return id;
			}
			return window.localStorage.getItem('devId');
		},
//		重置密码
		resetPwd: function(data){
			return fetch('/app/order', data);
		},
		uploadOption: function(data){
			return fetch('/app/order', data);
		},
//		新建来访者
		createUser: function(data){
			return fetch('/app/order', data);
		},
//		自评量表完成情况
		getAssess: function(data){
			return fetch('/app/order', data);
		},
//		开始放松类练习 // 放松和暴露是两条皮肤点数据
		startRelease: function(data){
//			所有的课程开始都会调用课程第一步接口，即保存配置数据的接口
//			保存训练开始时间点
			window.courseStart = +new Date();
			return fetch('/app/order', data);
		},
//		获取训练动作
		getActions: function(data){
			return get('/app/order', data);
		},
//		所有课程结束接口
		stopCourse: function(data){
			window.courseEnd = +new Date();
			return fetch('/app/order', data);
		},
		// 训练结果保存
		saveCourse: function(data){
			return fetch('/app/order', data);
		},
		// 开始暴露训练
		goExpose: function(data){
			return fetch('/app/order', data);
		}
	};
});