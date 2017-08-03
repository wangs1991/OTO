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
	
	var self = null;
	var liveTimer = null;	// 控制图片刷新
	var durationArray = [3,5,10];
	var durationDelay = 600;
	
	var Model = function() {
		this.callParent();
		this.button = justep.Bind.observable('');
		this.skinInfo =  justep.Bind.observable("");
	};

	Model.prototype.modelLoad = function(event) {
		self = this;
		
//		初始化图表
		this.initEchart();
	};

	Model.prototype.goToNext = function() {
		//停止发送Live请求
		if (liveTimer != null) {
			clearInterval(liveTimer);
			liveTimer = null;
		}
		
		
//		区别是否有暴露训练
		this.saveSkinData('relax');
		if(courseModel.page === 'breathing'){
			console.warn(url);
//			不存在暴露训练的放松类训练
//			结束时需要返回服务器状态 停止训
			Server.stopCourse({
				eventKind: 35,
				lid: courseModel.lid
			}).then(function(data){
				courseModel.result = {};
				for(var i in data){
					if(1 !== 'ret'){
						courseModel.result[i] = data[i];
					}
				}
				justep.Shell.showPage(url, courseModel);
			});
		}else{
//			存在且打开放松训练的暴露训练的焦虑类练习
			var params = {
				eventKind: 38,
				lid: courseModel.lid
			};
			params.baseLine = Server.skinData('relax');
			Server.goExpose(params).then(function(data){
				justep.Shell.showPage(url, courseModel);
			});
		}
		
	}
	
//	获取当前页面的皮肤电数据
	Model.prototype.saveSkinData = function(name){
		Server.skinData(name, window.skinArraylist);
	};

	Model.prototype.modelParamsReceive = function(event) {
		if (!event.hasOwnProperty("params")) {
			justep.Shell.closePage();
			return;
		}
		
		console.log("modelParamsReceive2");
		
		//得到直播图片
		var liveImage = self.getElementByXid("liveImage");
		
		//清理以前的直播Timer
		if (liveTimer != null && liveTimer != undefined) {
			clearInterval(liveTimer);
		}
		
		//开始直播请求
		liveTimer = setInterval(function() {
			if (liveImage.complete == true) {
				console.log("get live image, ip:" + window.ip + " lid:" + courseModel.lid);
				liveImage.src = "http://" + window.ip + ":8801/live/get?id="+courseModel.lid+"&time=" + (new Date()).getTime();
			}
		}, 120);
		
		var params = event.params;
		var duration = params.duration;
		
		durationDelay = durationArray[duration - 1];
		if (durationDelay > 0 && durationDelay < 15) {
			durationDelay = durationDelay * 60;
			
			setTimeout(function() {
				self.goToNext();
			}, durationDelay * 1000);
		}
		
		console.log(params);
		
		console.log("relax duration:" + duration + " durationDelay:" + durationDelay);
		
		courseModel = event.params;
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
		if (liveTimer != null) {
			clearInterval(liveTimer);
		}
		
		window.skinFeelStart = false;
	};
	
	
	Model.prototype.initEchart = function(){		
		myChartClock = echarts.init($('#echart')[0]);
		myChartClock.setOption(options, true);
	};
	
	updateEchart = (function(){
		var len = 1,
			displayData = [];
		return function(){
			var nLen = window.skinArraylist.length;
			for(var i = len-1, l = nLen.length; i < nLen; i++ ){
				displayData.push([ window.skinTimeList[i], window.skinArraylist[i]]);
			}
//			保留展示的100条数据
			var show = 100;
			var resLen = displayData.length;
			options.series[0].data = displayData.splice(Math.min(show, resLen));
//			if(myChartClock){
			try{
				window.myChartClock.setOption(options);
			}catch(e){
				console.log(e);
			}
			
//			}
		}
	})();

	Model.prototype.goBack = function(event){
		if (liveTimer != null) {
			clearInterval(liveTimer);
		}
		this.close();
	};

	return Model;
});