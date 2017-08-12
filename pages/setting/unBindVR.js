define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var devId;

	var Model = function(){
		this.callParent();
		devId = Server.deviceId();
		this.devId = justep.Bind.observable();
		this.devId.set(devId);
	};
	
	Model.prototype.unbindVR = function(){
		var deviceId = devId,
			pwd = $('#devicePwd').val();
		if(pwd.length < 1){
			justep.Util.hint('请输入设备密码');
			return false;
		}
		
		Server.bindVR({
			eventKind: 45,
			deviceId: deviceId,
			pwd: pwd
		}).then(function(data){
			justep.Util.hint('解除绑定成功');
			Server.clearData('devId');
			justep.Shell.closePage();
		});
	};
	
	Model.prototype.backBtnClick = function(event){
		this.close();
	};
	
	return Model;
});