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
	};
	
	Model.prototype.beginStudy = function(){
		window.skinFeelStart = true;
		
		//开始练习请求服务器
		var data = $('#courseOpt').serialize();
		data = decodeURI(data);
		
		var curVisitor = Server.getCurUser();
		var next;
		
		var params = Server.toJson(data);
		params.eventKind = 37;
		params.vid = curVisitor.id;
		params.loosenType = loosenType;
		params.isOpen = params.isOpen? params.isOpen: 0;
		
		//时长
		var duration = params.duration;
		
		//所有的课程开始都会调用课程第一步接口，即保存配置数据的接口
		next = '$UI/OTO/pages/coursesPlay/exposePlay.w';
		Server.startRelease(params).then(function(data){
			var params = {
				title: '面试练习',
				button: '开始面试',
				next: next,
				lid: data.lid,
				page: 'interview',
				type: loosenType,
				duration : duration
			};
			
			//判断是否开启场景
			var isOpen = $('#checkboxTwoInput').is(':checked');
			var url;
			if(isOpen){
				url = "$UI/OTO/pages/coursesPlay/relaxPlay.w";
			} else {
				url = '$UI/OTO/pages/coursesPlay/exposePlay.w';
			}
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
	
//	视图逻辑
	Model.prototype.switchSence = function(evt){
//		点击场景选择，检验是否要进入放松练习
		var isOpen = $('#checkboxTwoInput').is(':checked');
		if(!isOpen){
			$('#senceOption').attr('disabled', 'disabled');
		}else{
			$('#senceOption').removeAttr('disabled');
		}
	}
	
	Model.prototype.goBack = function(event){
		this.close();
	};
	
	return Model;
});