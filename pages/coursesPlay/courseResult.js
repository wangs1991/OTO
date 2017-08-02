define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	require("../../assets/echart/dist/echarts-all");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	var Model = function(){
		var dateStr = this.formDate(+new Date());
		this.callParent();
		this.user = justep.Bind.observableArray([]);
		this.skinInfo =  justep.Bind.observable("");
		this.duration = justep.Bind.observable();
		this.title = justep.Bind.observable();
		this.curDate = justep.Bind.observable(dateStr);
		
		this.subject = justep.Bind.observable();
		this.score = justep.Bind.observable();
		this.totalScore = justep.Bind.observable();
		this.answerList = justep.Bind.observableArray();		
	};
	
	Model.prototype.modelLoad = function(){
		var that = this;
		userData = Server.getCurUser();
		this.user.pop();
		this.user.push(userData);
		
		/*获取页面的下拉组件*/
		this.skinData = $("#skinData");
		this.skinData.hide();
		this.consult = $("#consult");
		this.consult.hide();
		this.exam = $("#exam");
		this.exam.hide();
		this.voice = $("#voice");
		this.voice.hide();
		this.sheet = $("#sheet");
		this.sheet.hide();
	}
	
	Model.prototype.saveData = function(){
		var data = $('#relaxRes').serialize();
		var params = Server.toJson(data);
		if(courseModel.page === 'breathing'){
			params.eventKind = 36;
			params.baseLine = Server.skinData('relax');
		}else{
			params.eventKind = 41;
			params.skin = Server.skinData('expose').join(',');
			params.answer = window.formSheetRes;
		}
		
		params.lid = window.courseModel.lid;
		
		Server.saveCourse(params).then(function(){
			//		访问者练习记录
			var url = '$UI/OTO/pages/trainPractice/visitorDetail.w';
			justep.Shell.showPage(url);
		});
		
		justep.Shell.closeAll();
		this.close();
	}
	
	Model.prototype.formDate = function(str){
		var myDate = new Date(str);
		var YYYY = myDate.getFullYear(),
			MM = myDate.getMonth()+1,
			DD = myDate.getDate();
			MM = MM < 10? '0'+MM : MM;
			DD = DD < 10? '0'+DD: DD;
		return YYYY+MM+DD;
	}
	
	Model.prototype.modelParamsReceive = function(event){
		if (event.hasOwnProperty("params")) {
			console.log(event.params);
		}
		window.courseModel = event.params;
		this.title.set(courseModel.title);
		this.duration.set(courseModel.result.duration);
		
//		根据课程类型的不同，区别添加不同的展示模块
		console.log(courseModel.page);
		switch (courseModel.page){
			case 'breathing':{
				this.initSkinData();
				this.initConsult();
				break;
			};
			case 'interview': {
				this.initSkinData();
				this.initVoice();
				this.initConsult();
				this.initSheet();
				break;
			};
			case 'examTender': {
				this.initSkinData();
				this.initExam();
				this.initConsult();
				this.initSheet();
				break;
			};
			case 'acrophobia': {
				this.initSkinData();
				this.initConsult();
				this.initSheet();
				break;
			}
		}
	}
	
	Model.prototype.initSkinData = function(){
		this.skinData.show();
		var data = Server.skinData('relax');
		var displayData = [];
		var time = 0;
		$('#baseLine').val(data.join(','));
		for(var i =0, len = data.length; i < len; i++){
			displayData.push([time+200*i, data[i]]);
		}
		options.series[0].data = displayData;
		try{
			window.myChartClock = echarts.init($('#echart')[0]);
			window.myChartClock.setOption(options, true);
		}catch(e){
		}

	}
	Model.prototype.initConsult = function(){
		this.consult.show();
	}
	Model.prototype.initExam = function(){
		this.exam.show();
		var answers = courseModel.result.answer; 	// '1:2,2:3,3:2,4:1'
		var subject = courseModel.result.subject;	// 学科
		var score = courseModel.result.score;		// 自评列表
		var totalScore = courseModel.result.totalScore;	// 考试总成绩
		var subjecDirec = ['语文', '数学', '外语'];
		
		this.subject.set(subjecDirec[subject-1]);
		this.score.set(score);
		this.totalScore.set(totalScore);
//		this.answerList;
	}
	Model.prototype.initVoice = function(){
		this.voice.show();
		$('#voice').val(courseModel.result.speech);
	}
	Model.prototype.initSheet = function(){
		this.sheet.show();
	}
	
	//	获取当前用户数据
	Model.prototype.goUserInfo = function (){
		var url = "$UI/OTO/pages/userInfo/userInfo.w";
		justep.Shell.showPage(url);
	};
	
	Model.prototype.goBack = function(event){
		this.close();
	};
	
//	自评
	Model.prototype.goTest = function(){
		var url = "$UI/OTO/pages/userInfo/assessSelect.w";
		justep.Shell.showPage(url, {
			from: 'result'
		});
	}
	
	return Model;
});