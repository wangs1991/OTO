define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	var Model = function(){
		this.callParent();
	};

	Model.prototype.uploadPwd = function(){
		var oldPwd = this.comp('oldPwd').val(),
			newPwd = this.comp('newPwd').val(),
			newPwdRe = this.comp('newPwdRe').val();
		
		if(oldPwd.length < 1){
			justep.Util.hint('请输入旧密码');
			return false;
		}
		
		if(newPwd.length < 1){
			justep.Util.hint('请输入新密码');
			return false;
		}
		
		if(newPwdRe.length < 1){
			justep.Util.hint('请输入确认密码');
			return false;
		}
		
		if(newPwd.length != newPwdRe.length){
			justep.Util.hint('确认密码和新密码不一致');
			return false;
		}
		if(!Server.deviceId()){
			justep.Util.hint('请绑定设备后再修改密码');
			return false;
		}
		Server.resetPwd({
			eventKind: 46,
			deviceId: Server.deviceId(),
			oldPwd: oldPwd,
			newPwd: newPwd
		}).then(function(data){
			console.log(data);
		});
		
	}
	return Model;
});