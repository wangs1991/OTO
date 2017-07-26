define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../assets/server');
	

	
	var Model = function(){
		this.callParent();
		this.userList = justep.Bind.observableArray([]);
		/*this.sexCompute = justep.Bind.computed(function() {
			console.log(this);
            return 12;
        }, this);  */
	};

	
	Model.prototype.modelLoad = function(event){
		var that = this;
		Server.test('../mock/test.json').then(function(data){
			console.log(data);
			data.data.forEach(function(n, i){
//				格式化数据
				if(n.sex == 0){
					n.sex= '男';
				}else{
					n.sex = '女';
				}
				that.userList.push(n);
			});
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