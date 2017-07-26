define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../assets/server');
	

	
	var Model = function(){
		this.callParent();
	};

	
	Model.prototype.modelLoad = function(event){
		var userList = this.comp('userList');
		console.log('modelLoad');
		Server.test('../mock/test.json').then(function(data){
			console.log(data);
			data.data.forEach(function(n, i){
				console.log(i);
				console.log(n);
			});
			userList.loadData(data);
		}, function(){});
	};
	
	Model.prototype.newsUserClick = function(event){
		url = "$UI/OTO/pages/userInfo/newsUser.w";
		justep.Shell.showPage(url);
	};
	
	Model.prototype.goBack = function(event){
		justep.Shell.showLeft();
	};
	
	Model.prototype.userInfoClick = function(event){
		url = "$UI/OTO/pages/userInfo/userInfo.w";
		justep.Shell.showPage(url);
	};
	Model.prototype.modifyPasswordClick = function(event){
		url = "$UI/OTO/pages/userInfo/modifyPassword.w";
		justep.Shell.showPage(url);
	};
	
	Model.prototype.assessSelectClick = function(event){
		url = "$UI/OTO/pages/userInfo/assessSelect.w";
		justep.Shell.showPage(url);
	};
	

	
	Model.prototype.setUpClick = function(event){
		url = "$UI/OTO/pages/userInfo/setUp.w";
		justep.Shell.showPage(url);
	};
	
//	去设置
	Model.prototype.goToSetting = function(){
		url = "$UI/OTO/pages/setting/settingHomeView.w";
		justep.Shell.showPage(url);
	}
	

	
	return Model;
});