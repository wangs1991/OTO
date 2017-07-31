define(function(require) {
	require("css!../../assets/style/base").load();
	require("../../assets/echart/dist/echarts-all");
	require("../../assets/js/AppUtils");
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("../../assets/js/loadData");
	var Server = require('../../assets/server');
	var url;
	window.courseModel = null;
	
	var nextKye = {
		
	};
	

	var self = null;
	var liveTimer = null;	// 控制图片刷新

	var Model = function() {
		this.callParent();
		this.button = justep.Bind.observable('');
	};

	Model.prototype.modelLoad = function(event) {
		self = this;

		var liveImage = self.getElementByXid("liveImage");

		if (liveTimer != null && liveTimer != undefined) {
			clearInterval(liveTimer);
		}

		liveTimer = setInterval(function() {
			if (liveImage.complete == true) {
				liveImage.src = "http://" + window.ip + ":8801/live/get?id="+courseModel.lid+"&time=" + (new Date()).getTime();
			}
		}, 120);
	};

	Model.prototype.goToNext = function() {
		
//		区别是否有暴露训练
		if(courseModel.page === 'breathing'){
//			不存在暴露训练
//			结束时需要返回服务器状态 停止训练
			Server.stopCourse({
				eventKind: 35,
				lid: courseModel.lid
			}).then(function(data){
				justep.Shell.showPage(url, courseModel);
			});
		}else{
//			存在暴露训练
			
			Server.goExpose({
				eventKind: 38,
				lid: courseModel.lid
			}).then(function(data){
				justep.Shell.showPage(url, courseModel);
			});
		}
		
	}

	Model.prototype.modelParamsReceive = function(event) {
		if (!event.hasOwnProperty("params")) {
			justep.Shell.closePage();
			return;
		}

		var params = event.params;
		console.log(params);
		courseModel = params;
		this.button.set(params.button);
		url = params.next;
	};

	Model.prototype.startclick = function(event) {

		window.skinFeelStart = true;

	}

	Model.prototype.andclick = function(event) {

		window.skinArraylist = {};
		window.skinFeelStart = true;

	}

	Model.prototype.endclick = function(event) {

		window.skinFeelStart = flase;

	}

	Model.prototype.button3Click = function(event) {

	};

	Model.prototype.openPageClick = function(event) {

	};

	Model.prototype.modelUnLoad = function(event) {
		clearInterval(liveTimer);
	};

	return Model;
});