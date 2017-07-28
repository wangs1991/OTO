define(function(require){
	require("css!../../assets/style/base").load();	
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	var Model = function(){
		this.callParent();
		this.user = justep.Bind.observableArray();
	};
	
	Model.prototype.modelLoad = function(){
		var that = this;
		userData = Server.getCurUser();
		this.user.pop();
		this.user.push(userData);
		console.log(userData);
	}
	
	Model.prototype.assessSelect = function (){
		url = "$UI/OTO/pages/userInfo/assessSelect.w";
		justep.Shell.showPage(url);
	}

	return Model;
});