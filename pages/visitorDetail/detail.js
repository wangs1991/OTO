define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var user = null;
	

	
	var Model = function(){
		this.callParent();
		var that = this;
//		绑定数组进去
		this.userDetail = justep.Bind.observableArray([]);	
	};
	
	Model.prototype.modelLoad = function(event){
		user = Server.getCurUser(user);
		console.log(user);
		this.userDetail.push(user);
	};
	return Model;
});