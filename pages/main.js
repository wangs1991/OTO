define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../assets/server');
	

	
	var Model = function(){
		this.callParent();
	};

	
	Model.prototype.modelLoad = function(event){
		var indicators = $('[xid="carousel"]>.carousel-indicators>li'),
			m = this;
		indicators.click(function(){
			var index = parseInt($(this).attr("index"));
			m.comp('carousel').to(index);
		});
		Server.test('../mock/test.json').then(function(data){
			console.log(data);
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