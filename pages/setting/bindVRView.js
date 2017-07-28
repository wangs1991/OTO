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
//		目前不会验证是否有设备绑定
		var bindDeviceId = localStorage.getItem("BindDeviceID");
		if (bindDeviceId != null && bindDeviceId != undefined) {
			this.comp("deviceInput").val(bindDeviceId);
		}
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
				console.log(data);
				Server.deviceId(devId);
			});
		}
	}
//	解绑设备
	Model.prototype.unbindVR = function(){
		var ok = this.bindCheck();
		if(ok){
			var res = justep.Util.confirm('是否解除绑定');
			if(res){
				this.bindAction(45, function(data){
					console.log(data);
				});
				var t = this;
				Server.bindVR({
					eventKind: 45,
					deviceId: devId,
					pwd: devPwd
				}).then(function(data){
					justep.Util.hint('解除绑定成功');
				});
			}
		}
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
	
	Model.prototype.bindButtonClick = function(event){
		/*var device = this.comp("deviceInput").val();
		var params = {device:device, uid:window.uid, session:window.session};*/
		
		/*$.getJSON(AppUtils.getUrl("app/order?action=bind_device"), params, function(data){
			if (data.success == "true") {
				localStorage.setItem("BindDeviceID", device);
				
				justep.Util.hint("绑定成功", {"position":"bottom"});
			} else {
				justep.Util.hint("绑定失败", {"position":"bottom"});
			}
		});*/
		var url = "$UI/OTO/pages/password/modifyPassword.w";
		justep.Shell.showPage(url);
	};
	
	return Model;
});