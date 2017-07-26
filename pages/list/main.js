define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
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
		url = "$UI/OTO/pages/visitorDetail/settingHomeView.w";
		justep.Shell.showPage(url);
	}
//	去详情页面
	Model.prototype.goDetail = function(evt){
		Server.setCutUser(user);
		url = "$UI/OTO/pages/trainPractice/visitorDetail.w";
		justep.Shell.showPage(url);
	}
	
	Model.prototype.modelLoad = function(event){
		var that = this,
			date = new Date(),
			cy = date.getFullYear();
//		获取数据，并格式化
		Server.getVisitors().then(function(data){
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
	

	
	Model.prototype.relaxFeedbackClick = function(event){
		url = "$UI/OTO/pages/userInfo/relaxFeedback.w";
		justep.Shell.showPage(url);
	};
	

	
	Model.prototype.psyShowClick = function(event){
		url = "$UI/OTO/pages/userInfo/psyShow.w";
		justep.Shell.showPage(url);
	};
	

	
	return Model;
});