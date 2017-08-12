define(function(require) {
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var devId;
	var devPwd;
	
	var Model = function() {
		this.callParent();
	};
	
	Model.prototype.modelLoad = function(event){
//		检查是否绑定
//		验证是否有设备绑定
		var that = this;
		Server.checkHat({
			eventKind: 33
		}).then(function(data){
//			绑定成功
			justep.Shell.showPage('main');
		}, function(data){
//			0 - 绑定成功
//			1 - 未连接
//			2 - 未绑定
			if(data.ret && data.ret.retCode != 2){
				justep.Shell.showPage('main');
			}
		});
	};
	
//	绑定设备
	Model.prototype.bindVR = function(){
		var ok = this.bindCheck();
		if(ok){
			Server.bindVR({
				eventKind: 44,
				deviceId: devId,
				pwd: devPwd
			}).then(function(data){
				Server.deviceId(devId);
				$("#welBind #deviceIdInfo").html(devId);
				$('#win_bind').show();
				$('#bindButton').show();
				$('#win_unbind').hide();
				$('#unBindBtn').hide();
			}, function(data){
//			0 - 绑定成功
//			1 - 未连接
//			2 - 未绑定
				if(data.ret && data.ret.retCode == 2){
					justep.Shell.showPage("bindVR");
				}else{
					justep.Shell.showPage('main');
				}
				return false;
			});
		}
	}
//	解绑设备
	Model.prototype.beginUse = function(){
		justep.Shell.showPage('main');
		justep.Shell.closePage();
	}
//	绑定 、 解绑 公用方法
	Model.prototype.bindCheck = function(){
		devId = this.comp('deviceId').val();
		devPwd = this.comp('devicePwd').val();
		if(devId.length < 1 || devPwd.length < 1){
			justep.Util.hint("请填写正确的设备号或密码", {"position":"bottom"});
			return false;
		}
		return true;
	}
	
	return Model;
});