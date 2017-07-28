define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	var Model = function(){
		this.callParent();
		this.hatState = justep.Bind.observable(false);
	};
	
	Model.prototype.modelLoad = function(){
		var that = this;
//		验证头盔绑定状态
		Server.checkHat({
			eventKind: 33
		}).then(function(data){
			that.hatState.set(true);
			console.log(data);
			Server.deviceId(data.deviceId);
		}, function(data){
			that.hatState.set(false);
		});
	}
	
	Model.prototype.enterCources = function(type){
		var params = {
				type: 1
		    },
		    url = "$UI/OTO/pages/trainPractice/fangsongMusicView.w";
		justep.Shell.showPage(url, params);
	};
	
	Model.prototype.goBindVR = function(){
		var url = "$UI/OTO/pages/setting/bindVRView.w";
		justep.Shell.showPage(url);
	}

	return Model;
});