define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var courseModel;

	var Model = function(){
		this.callParent();
		this.user = justep.Bind.observableArray([]);
		
//		详情标题
		this.type = justep.Bind.observable();
		this.date = justep.Bind.observable();
		this.duration = justep.Bind.observable();
		
//		区块展示相关
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
	}
	Model.prototype.modelParamsReceive = function(event){
		var data = event.params;
		var that = this;
		
		this.type.set(data.content);
		this.date.set(data.time);
		this.duration.set(data.duration);
		courseModel = data;
		
		Server.getPecDetail({
			eventKind: 43,
			lid: data.lid
		}).then(function(data){
			console.log(data);
			courseModel.result = data;
			that.contentShow();
		});
		
	}
	
	//	获取当前用户数据
	Model.prototype.goUserInfo = function (){
		var url = "$UI/OTO/pages/userInfo/userInfo.w";
		justep.Shell.showPage(url);
	};
	
//	控制界面展示
	Model.prototype.contentShow = function(){
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
		
//		根据课程类型的不同，区别添加不同的展示模块
		console.log(courseModel );
		courseModel.loosenType = 4;
		switch (courseModel.loosenType){
//			放松类
			case 1:
			case 2:
			case 3:
				this.initSkinData();
				this.initConsult();
				break;
//			case 'interview':
			case 4:
			case 5:
			case 6:
				this.initSkinData();
				this.initVoice();
				this.initConsult();
				this.initSheet();
				break;
//			case 'examTender': 
			case 7:
				this.initSkinData();
				this.initExam();
				this.initConsult();
				this.initSheet();
				break;
//			case 'acrophobia':
			case 8:
				this.initSkinData();
				this.initConsult();
				this.initSheet();
				break;
		}
	}
	
	Model.prototype.initSkinData = function(){
		this.skinData.show();
		var data = courseModel.result.dataList;
//		图标数据展示 ？？？？？？？
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
//		var questDect = {};
//		courseModel.result.questType = 0;
		$('#zplb').html();
	}
	
	
	return Model;
});