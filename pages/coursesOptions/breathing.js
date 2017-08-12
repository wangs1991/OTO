define(function(require) {
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var loosenType = loosenType;
	var page;
	var hatTimer = null;

	var Model = function() {
		this.callParent();
		this.hatState = justep.Bind.observable(false);
		this.title = justep.Bind.observable('');
	};

	// 接收参数
	Model.prototype.modelParamsReceive = function(evt) {
		this.title.set(evt.params.title);
		loosenType = evt.params.type;
		page = evt.params.page;
	}
	Model.prototype.modelLoad = function() {
		var that = this;
		Server.checkHat({
			eventKind : 33
		}).then(function(data) {
			that.hatState.set(true);
			$('#bindb').show();
			$('#unbindb').hide();
			Server.deviceId(data.deviceId);
		}, function(data) {
			that.hatState.set(false);
			$('#unbindb').show();
			$('#bindb').hide();
			that.checkHat();
		});
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
				$('#bindb').show();
				$('#unbindb').hide();
				Server.deviceId(data.deviceId);
				clearInterval(hatTimer);
				hatTimer = null;
			}, function(data) {
				that.hatState.set(false);
				$('#unbindb').show();
				$('#bindb').hide();
			});
		}, 2000);
		
		console.log(hatTimer);
	}
	
	Model.prototype.unload = function(){
		console.log(hatTimer);
		
		if (hatTimer != null) {
			clearInterval(hatTimer);
			hatTimer = null;
		}
	}

	Model.prototype.beginStudy = function(event) {
		// 判断头盔是否连接 ， 未连接不能开始训练
		// 头盔未连接，无法开始练习
		if (!this.hatState.latestValue) {
			//justep.Util.hint('头盔未连接，无法开始练习', {position: 'bottom'});
//			return false;
		}
		
		window.skinFeelStart = true;
		// 开始练习请求服务器
//		console.log(data);
		var data = {
			music: $('#courseOpt [name=music]:checked').val(),
			'switch': $('#courseOpt [name=switch]:checked').val(),
			duration: $('#courseOpt [name=duration]:checked').val(),
			sceneId: $('#courseOpt [name=sceneId]:checked').val()
		};
//		data = decodeURI(data);
//		var params = Server.toJson(data);
		var params = data;
		params.eventKind = 34;
		params.vid = Server.getCurUser().id;
		params.loosenType = loosenType;
//		params.music = parseInt($('input[name=music]:checked').val());

		// 时长
		var duration = params.duration;

		// 所有的课程开始都会调用课程第一步接口，即保存配置数据的接口
		Server.startRelease(params).then(function(data) {
			var params = {
				title : '放松训练',
				button : '结束训练',
				next : '$UI/OTO/pages/coursesPlay/courseResult.w',
				lid : data.lid,
				page : page,
				type : loosenType,
				duration : duration
			};
			clearInterval(hatTimer);
			hatTimer = null;
			var url = "$UI/OTO/pages/coursesPlay/relaxPlay.w";
			justep.Shell.showPage(url, params);
		});
	}

	Model.prototype.goBack = function(event) {
		if (hatTimer != null) {
			clearInterval(hatTimer);
			hatTimer = null;
		}
		
		this.close();
	};

	return Model;
});