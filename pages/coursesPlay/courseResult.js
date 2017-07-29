define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	var Model = function(){
		this.callParent();
		this.user = justep.Bind.observableArray([]);
	};
	
	Model.prototype.modelLoad = function(){
		var that = this;
		userData = Server.getCurUser();
		this.user.pop();
		this.user.push(userData);
		
		
	}
	
	Model.prototype.saveData = function(){
		
//		访问者练习记录
		var url = '$UI/OTO/pages/trainPractice/visitorDetail.w';
		justep.Shell.showPage(url);
	}
	
	Model.prototype.modelParamsReceive = function(event){
		if (event.hasOwnProperty("params")) {
			console.log(event.params);
		}
	}
	
	//	获取当前用户数据
	Model.prototype.goUserInfo = function (){
		var url = "$UI/OTO/pages/userInfo/userInfo.w";
		justep.Shell.showPage(url);
	};
	
	return Model;
});