define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.assessSelect = function (){
		url = "$UI/OTO/pages/userInfo/assessSelect.w";
		var params = {
			type: 'new'
		};
		justep.Shell.showPage(url, params);
	}
	
//	页面激活去读取数据[用户量表分数]
	Model.prototype.enterPage = function(){
		console.log(testType);
		$('#questType').val(testType);
		var questions = window.questions,
			textScore = [];
		for(var i=0, len=questions.length; i<len; i++){
			textScore.push(questions[i].id+':'+questions[i].score);
		}
		console.log(textScore.join(','));
		$('#answer').val(textScore.join(','));
	}
//	进入测评模块选择
	Model.prototype.button1Click = function(event){
		console.log("goToSetting");
		var url = require.toUrl("$UI/OTO/pages/userInfo/assessSelect.w");
		justep.Shell.showPage(url);
	};
	
//	提交新建用户数据
	Model.prototype.createUser = function(){
		var data = $('#newUserSheet').serialize();
		data = decodeURI(data);
		var params = Server.toJson(data);
		params.eventKind = 30;
		Server.createUser(params).then(function(data){
			console.log(data);
			justep.Shell.closePage();
		});
	}
	
	
	
	return Model;
});