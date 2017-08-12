define(function(require) {
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	var loosenType = -1;
	var page;
	var hatTimer = null;

	var Model = function() {
		this.callParent();
		this.hatState = justep.Bind.observable(false);
	};

	Model.prototype.beginStudy = function() {
		// 判断头盔是否连接 ， 未连接不能开始训练
		// 头盔未连接，无法开始练习
		if (!this.hatState.latestValue) {
			//justep.Util.hint('头盔未连接，无法开始练习', {position: 'bottom'});
//			 return false;
		}
		// 判断是否开启场景
		var isOpen = $('#acropOpt #checkboxTwoInput').is(':checked');
		var url, isOpenFlag;
		if (isOpen) {
			var scene = $('#acropOpt select[name=sceneId]').val();
			if(scene<0){
				justep.Util.hint('请选择放松场景', {position: 'bottom'});
				return false;
			}
			isOpenFlag = 1;
			url = "$UI/OTO/pages/coursesPlay/relaxPlay.w";
			this.startIt({
				isOpenFlag: 1,
				url: url
			});
		} else {
			// 提示场景未打开
			// 打开提示框
			$('#acropModal').modal('show');
		}
	}

	// 确认继续前进
	Model.prototype.userOk = function() {
		var isOpenFlag = 0;
		url = '$UI/OTO/pages/coursesPlay/exposePlay.w';
		$('#acropModal').modal('hide');
		this.startIt({
			isOpenFlag: 0,
			url: url
		});
	}
	Model.prototype.userCancle = function() {
		$('#acropModal').modal('hide');
	}

	Model.prototype.startIt = function(opt){
		window.skinFeelStart = true;
		
		var inputIsOpen = $('#acropOpt [name=isOpen]:checked').val();
		if (inputIsOpen == undefined || inputIsOpen == false) {
			inputIsOpen = false;
		} else {
			inputIsOpen = true;
		}
		
		// 开始练习请求服务器
//		var data = $('#acropOpt').serialize();
		var data = {
			sceneType: $('#acropOpt [name=sceneId]').val(),
			sex: $('#acropOpt [name=sex]:checked').val(),
			weather: $('#acropOpt [name=weather]:checked').val(),
			sceneId: $('#acropOpt [name=sceneId]').val(),
			isOpen : (inputIsOpen ? 1:0)
		};
		
//		data = decodeURI(data);
//		var params = Server.toJson(data);
		var params = data;
		var curVisitor = Server.getCurUser();
		var next;
		params.eventKind = 50;
		params.vid = curVisitor.id;
		params.loosenType = loosenType;
		//params.isOpen = opt.isOpenFlag;
		
		//next会根据是否开启放松训练决定
		next = '$UI/OTO/pages/coursesPlay/exposePlay.w';
		
		//所有的课程开始都会调用课程第一步接口，即保存配置数据的接口
		Server.startRelease(params).then(function(data) {
			var params = {
				title : '恐高练习',
				button : '开始恐高练习',
				next : next,
				lid : data.lid,
				page : 'acrophobia',
				type : loosenType
			};
			justep.Shell.showPage(opt.url, params);
		});
	}
		
	Model.prototype.goBindVR = function() {
		var url = "$UI/OTO/pages/setting/bindVRView.w";
		justep.Shell.showPage(url);
	}

	// 接收参数
	Model.prototype.modelParamsReceive = function(evt) {
		loosenType = evt.params.type;
		page = evt.params.page;
	}

	Model.prototype.modelLoad = function() {
		var that = this;
		Server.checkHat({
			eventKind : 33
		}).then(function(data) {
			that.hatState.set(true);
			$('#binda').show();
			$('#unbinda').hide();
			Server.deviceId(data.deviceId);
		}, function(data) {
			that.hatState.set(false);
			$('#unbinda').show();
			$('binda').hide();
			that.checkHat();
		});
	}
	
	
	
	Model.prototype.modelUnload = function(){
		clearInterval(hatTimer);
		hatTimer = null;
		
//		场景选择重置
		$('#acropOpt select[name=sceneId]').val(-1);
	}
	
	// 请求接口
	Model.prototype.checkHat = function() {
		var that = this;
		hatTimer = setInterval(function() {
			// 验证头盔绑定状态
			Server.checkHat({
				eventKind : 33
			}).then(function(data) {
				that.hatState.set(true);
				$('#binda').show();
				$('#unbinda').hide();
				Server.deviceId(data.deviceId);
				clearInterval(hatTimer);
				hatTimer = null;
			}, function(data) {
				that.hatState.set(false);
				$('#unbindb').show();
				$('#bindb').hide();
			});
		}, 2000);
	}

	// 视图逻辑
	Model.prototype.switchSence = function(evt) {
		// 点击场景选择，检验是否要进入放松练习
		var isOpen = $('#acropOpt #checkboxTwoInput').is(':checked');
		if (!isOpen) {
			$('#acropOpt #senceOption').attr('disabled', 'disabled');
		} else {
			$('#acropOpt #senceOption').removeAttr('disabled');
		}
	}

	Model.prototype.goBack = function(event){
		this.close();
	};

	return Model;
});