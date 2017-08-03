define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var loosenType = loosenType;
	var page;

	var Model = function(){
		this.callParent();
		this.hatState = justep.Bind.observable(false);
		this.title = justep.Bind.observable('');
	};
	
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
	
	Model.prototype.beginStudy =function(event){
		window.skinFeelStart = true;
//		开始练习请求服务器
		var data = $('#courseOpt').serialize();
		data = decodeURI(data);
		var params = Server.toJson(data);
		params.eventKind = 34;
		params.vid = Server.getCurUser().id;
		params.loosenType = loosenType;
		
		//时长
		var duration = params.duration;
		
//		所有的课程开始都会调用课程第一步接口，即保存配置数据的接口
		Server.startRelease(params).then(function(data){
			var params = {
				title: '放松训练',
				button: '结束训练',
				next: '$UI/OTO/pages/coursesPlay/courseResult.w',
				lid: data.lid,
				page: page,
				type: loosenType,
				duration : duration
			};
			
			var url = "$UI/OTO/pages/coursesPlay/relaxPlay.w";
			justep.Shell.showPage(url, params);
		});
		
	}
	
	Model.prototype.goBack = function(event){
		this.close();
	};
	return Model;
});