define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	
	var pgeType = false;
	window.testType = -1;

	var Model = function(){
		this.callParent();
//		设置动态数据
		this.doneScore = justep.Bind.observable();
		this.doneType = justep.Bind.observable();
	};

//	页面激活去读取数据
	Model.prototype.enterPage = function(){
//		尝试曲本地读取测评完的成绩
		try{
			console.log(questions);
			console.log(testType);
			this.doneType.set(testType);
			this.doneScore.set(testScore);
			$('.b-assess-oneA[data-type='+testType+']').addClass('finished');
		}catch(e){
			
		}
	}
	
	Model.prototype.goTest = function(evt){
		var target = $(evt.currentTarget), //获取事件目标对象
		type = target.attr('data-type');
		testType = type;
		var params = {kind: parseInt(type)};
		url = "$UI/OTO/pages/userInfo/assess_con.w";
		justep.Shell.showPage(url,params);
	};
	
	Model.prototype.modeLoad = function(){
		var params = {};
		params.eventKind = 48;
		if(pgeType){
			params.vid = Server.setCurUser();
			Server.getAssess(params).then(function(data){
			console.log(data);
		});
		}
	}
	
	Model.prototype.modelParamsReceive = function(event){
		pgeType = event.params.type;
	}
	
	
	return Model;
});