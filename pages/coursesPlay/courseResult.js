define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	require("../../assets/echart/dist/echarts-all");
	require("../../assets/js/AppUtils");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var self = null;
	
	var Model = function(){
		var dateStr = this.formDate(+new Date());
		this.callParent();
		this.user = justep.Bind.observableArray([]);
		this.skinInfo =  justep.Bind.observable("");
		this.duration = justep.Bind.observable();
		this.title = justep.Bind.observable();
		this.curDate = justep.Bind.observable(dateStr);
		
//		区块展示相关 考试相关
		this.subject = justep.Bind.observable();
		this.score = justep.Bind.observable();
		this.totalScore = justep.Bind.observable();
		this.answerList = justep.Bind.observableArray();		
	};
	
	Model.prototype.modelLoad = function(){
		var that = this;
		self = this;
		
		userData = Server.getCurUser();
		this.user.pop();
		this.user.push(userData);
		
		/*获取页面的下拉组件*/
		this.skinData = $("#skinDataRes");
		this.skinData.hide();
		this.consult = $("#consultRes");
		this.consult.hide();
		this.exam = $("#examRes");
		this.exam.hide();
		this.voice = $("#voiceRes");
		this.voice.hide();
		this.sheet = $("#sheetRes");
		this.sheet.hide();
//		this.enterPage();
	}
	
	Model.prototype.saveData = function(){
		var data = decodeURIComponent($('#relaxRes').serialize());
		var params = Server.toJson(data);
		if(courseModel.page === 'breathing'){
			params.eventKind = 36;
			params.baseLine = Server.skinData('baseline').join(',');
		}else{
			params.eventKind = 41;
			params.skin = Server.skinData('skin').join(',');
			params.answer = JSON.stringify(window.formSheetRes);
		}
		
		params.lid = window.courseModel.lid;
		Server.saveCourse(params).then(function(){
			window.questions = {};
			//		访问者练习记录
			var url = '$UI/OTO/pages/trainPractice/visitorDetail.w';
			justep.Shell.showPage(url);
			
			justep.Shell.closeAll();
			self.close();
		});
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
		self = this;
		
		window.courseModel = event.params;
		this.title.set(courseModel.title);
		this.duration.set(courseModel.result.duration);
		this.modelLoad();
		
//		根据课程类型的不同，区别添加不同的展示模块
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
			case 'public': {
				this.initSkinData();
				this.initVoice();
				this.initConsult();
				this.initSheet();
				break;
			};
			case 'speech':
				this.initSkinData();
				this.initVoice();
				this.initConsult();
				this.initSheet();
				break;
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
			};
			default:{
				this.initSkinData();
				this.initConsult();
				this.initSheet();
				break;
			}
			
		}
	}
	
	Model.prototype.initSkinData = function(){
		this.skinData.show();
		$('#relaxRes #baseLine').val('');
		var data;
		if(courseModel.page === 'breathing'){
			data = Server.skinData('baseline');
		}else{
			data = Server.skinData('skin');
		}
		var displayData = [];
		var time = 0;
		$('#relaxRes #baseLine').val(data.join(','));
		for(var i =0, len = data.length; i < len; i++){
			displayData.push([time+200*i, data[i]]);
		}
		options.series[0].data = displayData;
		try{
			window.myChartClock = echarts.init($('#echartres')[0]);
			window.options.yAxis[0].max = 10;
			window.myChartClock.setOption(options, true);
		}catch(e){
			console.log(e);
		}

	}
	Model.prototype.initConsult = function(){
		this.consult.show();
		$('#consultInpt').val('');
	}
	Model.prototype.initExam = function(){
		this.exam.show();
		
		var subjecDirec = ['语文', '历史', '外语'];
		var subjectData = ['Chinese', 'History', 'English'];
		var that = this;
		
		var rep = window.courseModel.result;
		that.score.set(rep.score);
		that.totalScore.set(rep.totalScore);
		that.subject.set(subjecDirec[rep.subject-1]);

		var url = require.toUrl('../../mock/test_'+subjectData[rep.subject-1]+'.json');
		AppUtils.getAction(url, null, function(data) {
			var list = data; //问题列表
			
			//根据answer去读取问题
			var answer = rep.answerList;  // 用户作答问题
			list.forEach(function(n, i){
				var item = hasIt(n, answer);
				if(item){
					var q = item.q,
						a = item.a;
					that.answerList.push({
						title: q.title,
						option1: q.question1,
						option2: q.question2,
						option3: q.question3,
						option4: q.question4,
						answer: q.answer,
						selected: a.selectItem
					});
				}
			});
			
		});
	}
	Model.prototype.initVoice = function(){
		this.voice.show();
		$('#voiceTxt').val('');
	}
	Model.prototype.initSheet = function(){
		window.questions = {};
		this.sheet.show();
	}
	
	//	获取当前用户数据
	Model.prototype.goUserInfo = function (){
		var url = "$UI/OTO/pages/userInfo/userInfo.w";
		justep.Shell.showPage(url);
	};
	
//	Model.prototype.goBack = function(event){
//		this.close();
//		
//	};
//	抓取VR端数据
	Model.prototype.fetchExam = (function(){
		var times = 0,
			lid = 0;
		return function(){
			if(lid != courseModel.lid || times%2 == 0){
				var subjecDirec = ['语文', '历史', '外语'];
				var subjectData = ['Chinese', 'History', 'English'];
				var that = this;
				Server.fetchMod({
					eventKind: 52,
					lid: courseModel.lid
				}).then(function(data){
					var rep = data;
					that.score.set(data.score);
					that.totalScore.set(data.totalScore);
					that.subject.set(subjecDirec[data.subject-1]);

					var url = require.toUrl('../../mock/test_'+subjectData[data.subject-1]+'.json');
					AppUtils.getAction(url, null, function(data) {
						var list = data; // 问题列表
//						根据answer去读取问题
						var answer = rep.answerList;  // 用户作答问题
						list.forEach(function(n, i){
							var item = hasIt(n, answer);
							if(item){
								var q = item.q,
									a = item.a;
								that.answerList.push({
									title: q.title,
									option1: q.question1,
									option2: q.question2,
									option3: q.question3,
									option4: q.question4,
									answer: q.answer,
									selected: a.selectItem
								});
							}
						});
						
					});
				});
			}
			lid = courseModel.lid;
			times++;
		}
	})();
	Model.prototype.fetchVoice = (function(){
		var times = 0,
			lid = 0;
		return function(){
			if(lid != courseModel.lid || times%2 == 0){
				Server.fetchMod({
					eventKind: 55,
					lid: courseModel.lid
				}).then(function(data){
//					$('#voice').val(data.speech);
					$('#voiceTxt').val(courseModel.result.speech);
				});
			}
			lid = courseModel.lid;
			times++;
		}
	})();
	
	function hasIt(tar, ori){
//		比对questId 与 id
		try{
			var res;
			for(var i = 0, len = ori.length; i < len; i++){
				if(ori[i].questId == tar.id){
					res = {q: tar,
					       a: ori[i]};
					return res;
				}
			}
			return false;
		}catch(e){
			console.log(e);
			return false;
		}
	}
//	自评
	Model.prototype.goTest = function(){
		var params = {
			kind: parseInt(window.courseModel.type),
			from:  'result'
		};
		
		url = "$UI/OTO/pages/userInfo/assess_con.w";
		justep.Shell.showPage(url,params);
	}
	
	//	页面激活去读取数据
	Model.prototype.enterPage = function(){
		window.formSheetRes = {};
//		尝试曲本地读取测评完的成绩
		try{
			var sheetRec = window.sheetRec,
				resStr = '',
				tar;
			
			window.formSheetRes[window.courseModel.type] = {};
			var jlen = sheetRec.type.length;
			if(jlen<1){ return false; }
			for(var j = 0; j < jlen; j++){
				window.formSheetRes[window.courseModel.type][sheetRec.type[j]] = sheetRec.score[j];
			}
			$('#relaxRes #answer').val(JSON.stringify(window.formSheetRes));
		}catch(e){
			console.log(e);
		}
	}
//	离开页面重置数据
	Model.prototype.modelUnLoad = function(event){
		window.formSheetRes = {};
		$('#relaxRes #answer').val('');
	};
	
	Model.prototype.goBack = function(event){
		this.close();
	};
	
	return Model;
});