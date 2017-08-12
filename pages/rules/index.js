define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	var Model = function() {
		this.callParent();
	};
	
	Model.prototype.modelLoad = function(){
		//		检验是否同意规章制度
		var isagreed = Server.ruleState();
		if(isagreed <= 0){
			justep.Shell.showPage('rules');
			return false;
		}else{
			justep.Shell.showPage('main');
		}
	}
	Model.prototype.agree = function(){
		Server.ruleState(100);
		window.mainView.loginSuccess();
		justep.Shell.closePage();
	}
	
	return Model;
});