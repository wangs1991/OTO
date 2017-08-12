define(function(require){
	require("css!../../assets/style/base").load();
	require("../../assets/echart/dist/echarts-all");
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	require("../../assets/js/AppUtils");
	var courseModel;
	var detailEcharOpt = {};

	var Model = function(){
		this.callParent();
		this.user = justep.Bind.observableArray([]);
		
//		详情标题
		this.type = justep.Bind.observable();
		this.date = justep.Bind.observable();
		this.duration = justep.Bind.observable();
		
//		区块展示相关 考试相关
		this.subject = justep.Bind.observable();
		this.score = justep.Bind.observable();
		this.totalScore = justep.Bind.observable();
		this.answerList = justep.Bind.observableArray();
		
		this.zpSheet = justep.Bind.observableArray();
	};
	
	Model.prototype.modelLoad = function(){
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
		
//		读取概述信息
		var that = this;
		Server.getPecDetail({
			eventKind: 43,
			lid: data.lid
		}).then(function(data){
			that.contentShow();
//			根据返回数据取初始化select
			that.initSelect(data.dataList);
		});
	}
	
//	下拉选
	Model.prototype.initSelect = function(data){
		var str = '',
			len = data.length;
		if(len < 1){
			$('#duibi').hide();
			return false;
		}
		str += '<option value="-1" selected>请选择对比数据</option>';
		for(var i = 0; i < len; i++){
			str += '<option value="'+data[i].lid+'">'+data[i].time+'</option>';
		}
		$('#duibi').append(str);
		
		$('#duibi').on('change', function(){
//			获取数据
			var lid = $(this).val();
			Server.fetchMod({
				eventKind: 51,
				lid: lid
			}).then(function(data){
				var time = 0,
					displayData = [],
					skin = data.skin.split(',');
				for(var i =0, len = skin.length; i < len; i++){
					displayData.push([time+200*i, skin[i]]);
				}
	            detailEcharOpt.series[1] = {
	                name:'电波',
	                type:'line',
	                data: displayData,
	                symbol:'none',
	                smooth: false,
	                itemStyle: {
	                	normal: {
	                		color: '#0bef51'
	                	}
	                }
	            };
				try{
					window.myChartClock = echarts.init($('#echartDetail')[0]);
					window.myChartClock.setOption(detailEcharOpt, true);
				}catch(e){
				}
			});
			console.log(lid);
//			添加数据
			
		});
	}
	//	获取当前用户数据
	Model.prototype.goUserInfo = function (){
		var url = "$UI/OTO/pages/userInfo/userInfo.w";
		justep.Shell.showPage(url);
	};
	
//	控制界面展示
	Model.prototype.contentShow = function(){
		detailEcharOpt = $.extend(window.options, detailEcharOpt);
		var that = this;
		/*获取页面的下拉组件*/
		that.skinData = $("#skinData");
		that.skinData.hide();
		that.consult = $("#consult");
		that.consult.hide();
		that.exam = $("#exam");
		that.exam.hide();
		that.voice = $("#voice");
		that.voice.hide();
		that.sheet = $("#sheet");
		that.sheet.hide();
		
//		根据课程类型的不同，区别添加不同的展示模块
		switch (courseModel.loosenType){
//			放松类
			case 1:
			case 2:
			case 3:
				that.skinData.show();
				that.consult.show();
				break;
//			case 'interview':
			case 4:
			case 5:
			case 6:
				that.skinData.show();
				that.voice.show();
				that.consult.show();
				that.sheet.show();
				break;
//			case 'examTender': 
			case 7:
				that.skinData.show();
				that.exam.show();
				that.consult.show();
				that.sheet.show();
				break;
//			case 'acrophobia':
			case 8:
				that.skinData.show();
				that.consult.show();
				that.sheet.show();
				break;
		}
		
		
	}


//  初始化详细的区块
	Model.prototype.fetchSkinData = (function(){
		var times = 0,
			lid = 0;
		return function(){
			if(lid != courseModel.lid || times%2 == 0 ){
				Server.fetchMod({
					eventKind: 51,
					lid: courseModel.lid
				}).then(function(data){
					var time = 0,
						displayData = [],
						skin = data.skin.split(',');
					for(var i =0, len = skin.length; i < len; i++){
						displayData.push([time+200*i, skin[i]]);
					}
					detailEcharOpt.series.length = 1;	// 去除旧数据
					detailEcharOpt.series[0].data = displayData;
					try{
						window.myChartClock = echarts.init($('#echartDetail')[0]);
						if(courseModel.loosenType <= 3){
							detailEcharOpt.yAxis[0].max = 10;
						}else{
							detailEcharOpt.yAxis[0].max = 2;
						}
						window.myChartClock.setOption(detailEcharOpt, true);
					}catch(e){
					}
				});
			}
			lid = courseModel.lid;
			times++;
		}
	})();
	
	Model.prototype.fetchConsult = (function(){
		var times = 0,
			lid = 0;
		return function(){
			console.log(times%2);
			if(lid != courseModel.lid || times%2 == 0){
				Server.fetchMod({
					eventKind: 54,
					lid: courseModel.lid
				}).then(function(data){
					$('#diagnose').val(data.diagnose);
				});
			}
			lid = courseModel.lid;
			times++;
		}
	})();
	
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
					$('#voice').val(data.speech);
				});
			}
			lid = courseModel.lid;
			times++;
		}
	})();
	
	Model.prototype.fetchSheet = (function(){
		var times = 0,
			lid = 0;
		return function(){
			if(lid != courseModel.lid || times%2 == 0){
				var that = this; 
				Server.fetchMod({
					eventKind: 53,
					lid: courseModel.lid
				}).then(function(data){
					console.log(data);
					if(!data.answer){
						return false;
					}
					var tar,
						resStr = '',
						answer = JSON.parse(data.answer);
					for(var i in answer){
						tar = $('.zplb_item .zplb_btn[data-type='+i+']').parents('.zplb_item');
						tar.addClass('finished');
						for(var j in answer[i]){
							resStr += '<p>'+window.sheetTypeDict[j]+'： '+answer[i][j]+'</p>';
						}
						$('#zplb').html(resStr);
					}
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
			console.log(e, 'jieguowenti');
			return false;
		}
	}
	
	
	Model.prototype.goBack = function(event){
		this.close();
	};
	
	return Model;
});