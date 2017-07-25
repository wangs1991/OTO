define(function(require) {
	require("css!../../main/css/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function() {
		this.callParent();
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};
	
	// 下划刷新
	Model.prototype.scrollViewPullDown = function(event) {
	};
	
	Model.prototype.topBackBtnClick = function(event){
		justep.Shell.closePage();
	};
	
	Model.prototype.modelLoad = function(event){
		window.putView(this);
		
		var bindDeviceId = localStorage.getItem("BindDeviceID");
		if (bindDeviceId != null && bindDeviceId != undefined) {
			this.comp("deviceInput").val(bindDeviceId);
		}
	};
	
	Model.prototype.modelUnLoad = function(event){
		window.removeView(this);
	};
	
	Model.prototype.bindButtonClick = function(event){
		var device = this.comp("deviceInput").val();
		var params = {device:device, uid:window.uid, session:window.session};
		
		$.getJSON(AppUtils.getUrl("app/order?action=bind_device"), params, function(data){
			if (data.success == "true") {
				localStorage.setItem("BindDeviceID", device);
				
				justep.Util.hint("绑定成功", {"position":"bottom"});
			} else {
				justep.Util.hint("绑定失败", {"position":"bottom"});
			}
		});
	};
	
	return Model;
});