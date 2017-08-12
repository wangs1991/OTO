define(function(require) {
	require("css!../../assets/style/base").load();

	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	
	require("$UI/system/lib/cordova/cordova");
	require("cordova!cordova-plugin-inappbrowser");

	var selectID = "0";
	var jiaolvFileKey = "Jiaolv-Course";
	var setSceneKey = "Jiaolv-SetScene";
	var dataOffset = 0;

	var Model = function() {
		this.callParent();
	};
	
	//切换视图的方法
	Model.prototype.selectView = function(evt) {
		var target = $(evt.currentTarget), //获取事件目标对象
		type = target.attr('data-type');
		var url = "$UI/OTO/pages/setting/" + type + "View.w",
		params = {};
		if(type === 'loginOut'){
			//注销用户
			window.mainView.logout();
			return false;
		}
		
		if(type === 'update'){
			var version = window.version;
			console.log(version);
			Server.checkUpdate({
				version: version,
				eventKind: 56
			}, function(data){
				if(data.url && data.url.length>0){
					cordova.InAppBrowser.open(data.url, '_system');
				}
			}); 
			return false; 
		}
		justep.Shell.showPage(url, params);
	}

	Model.prototype.headImageClick = function(event) {

	};

	Model.prototype.modelLoad = function(event) {
		//window.putView(this);
	};

	Model.prototype.modelUnLoad = function(event) {
		//window.removeView(this);
	};
	Model.prototype.goBack = function(event){
		this.close();
	};
	return Model;
});