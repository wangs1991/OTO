define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	
	var loosenType = -1;
	var page;

	var Model = function(){
		this.callParent();
		this.hatState = justep.Bind.observable(false);
		this.title = justep.Bind.observable('');
	};
	
	Model.prototype.beginStudy = function(){
		window.skinFeelStart = true;
//		开始练习请求服务器
		var data = $('#courseOpt').serialize();
		var params = Server.toJson(data);
		var curVisitor = Server.getCurUser();
		var next;
		params.eventKind = 49;
		params.vid = curVisitor.uid;
//		next会根据是否开启放松训练决定
		next = '$UI/OTO/pages/coursesPlay/exposePlay.w';
		Server.startRelease(params).then(function(data){
			var params = {
				title: '考试练习',
				button: '开始考试',
				next: next,
				lid: data.lid,
				page: page,
				type: loosenType
			};
//			判断是否开启场景
			
			var url = "$UI/OTO/pages/coursesPlay/relaxPlay.w";
			justep.Shell.showPage(url, params);
		});
	}
	
	Model.prototype.goBindVR = function(){
		var url = "$UI/OTO/pages/setting/bindVRView.w";
		justep.Shell.showPage(url);
	}

//	接收参数
	Model.prototype.modelParamsReceive = function(evt){
		console.log(evt.params);
		this.title.set(evt.params.title);
		loosenType = evt.params.type;
		page = evt.params.page;
	}

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

	return Model;
});