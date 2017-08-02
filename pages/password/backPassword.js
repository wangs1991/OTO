define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelLoad = function(){
//		请求发送接口
		Server.resetPwd({
			eventKind: 47,
			deviceId: Server.deviceId()
		}).then(function(data){
			console.log(data, 'resolve');
			$('#msgCtner').html(data.ret.msg);
		}, function(data){
			console.log(data, 'reject');
			$('#msgCtner').html(data.ret.msg);
		});
	}
	
	Model.prototype.confirm = function(){
		var url = "$UI/OTO/pages/setting/bindVRView.w";
		justep.Shell.showPage(url);
	}
	return Model;
});