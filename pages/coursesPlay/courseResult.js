define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	var Model = function(){
		this.callParent();
		this.user = justep.Bind.observableArray([]);
		this.listView = justep.Bind.observableArray([]);
	};
	
	Model.prototype.modelLoad = function(){
		var that = this;
		userData = Server.getCurUser();
		this.user.pop();
		this.user.push(userData);		
	}
	
	Model.prototype.saveData = function(){
		var data = $('#relaxRes').serialize();
		var params = Server.toJson(data);
		if(courseModel.page === 'breathing'){
			params.eventKind = 36;
		}else{
			params.eventKind = 41;
		}
		params.lid = window.courseModel.lid;
		Server.saveCourse(params).then(function(){
			//		访问者练习记录
			var url = '$UI/OTO/pages/trainPractice/visitorDetail.w';
			justep.Shell.showPage(url);
		});
	}
	
	Model.prototype.modelParamsReceive = function(event){
		if (event.hasOwnProperty("params")) {
			console.log(event.params);
		}
		window.courseModel = event.params;
		
//		根据课程类型的不同，区别添加不同的展示模块
		this.listView.push({
			id: 1,
			title: '皮肤电数据',
			content: 'asdf',
			action: 'asdf'
		}); 
	}
	
	//	获取当前用户数据
	Model.prototype.goUserInfo = function (){
		var url = "$UI/OTO/pages/userInfo/userInfo.w";
		justep.Shell.showPage(url);
	};
	
	return Model;
});