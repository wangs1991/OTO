define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../assets/server');
	var user = null;
	

	
	var Model = function(){
		this.callParent();
		var that = this;
//		绑定数组进去
		this.userList = justep.Bind.observableArray([]);
		this.gotDetail = function(){
			user = this;
			that.goDetail()
		}
		/*this.sexCompute = justep.Bind.computed(function() {
			console.log(this);
            return 12;
        }, this);  */
	};
	
//	去设置
	Model.prototype.goToSetting = function(){
		url = "$UI/OTO/pages/setting/settingHomeView.w";
		justep.Shell.showPage(url);
	}
//	去详情页面
	Model.prototype.goDetail = function(evt){
		console.log(user);
		url = "$UI/OTO/pages/setting/settingHomeView.w";
		justep.Shell.showPage(url, {
			user: user
		});
	}
	
	Model.prototype.modelLoad = function(event){
		var that = this,
			date = new Date(),
			cy = date.getFullYear();
//		获取数据，并格式化
		Server.test('../mock/test.json').then(function(data){
			console.log(data);
			data.data.forEach(function(n, i){
//				格式化数据
				if(n.sex == 0){
					n.sex= '男';
				}else{
					n.sex = '女';
				}
				
//				年龄
				n.age = cy - n.birthday.split('-')[0];
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
	

	
	return Model;
});