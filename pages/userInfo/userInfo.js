define(function(require){
	require("css!../../assets/style/base").load();	
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	var Model = function(){
		this.callParent();
		this.user = justep.Bind.observableArray();
	};
	
	Model.prototype.modelLoad = function(){
		var that = this;
		userData = Server.getCurUser();
		this.user.pop();
		this.user.push(userData);
		console.log(userData);
	}
	
	//	页面激活去读取数据[用户量表分数]
	Model.prototype.enterPage = function(){
		try{
			$('#questType').val(testType);
			var questions = window.questions,
				textScore = [];
			for(var i=0, len=questions.length; i<len; i++){
				textScore.push(questions[i].id+':'+questions[i].score);
			}
			console.log(textScore.join(','));
			$('#answer').val(textScore.join(','));
		}catch(e){}
	}
	
	//	去填自评量表
	Model.prototype.assessSelect = function (){
		url = "$UI/OTO/pages/userInfo/assessSelect.w";
		justep.Shell.showPage(url, {
			from: 'modified'
		});
	}
	//	提交用户数据
	Model.prototype.saveModify = function(){
		var data = $('#userInfo').serialize();
		data = decodeURI(data);
		var params = Server.toJson(data);
		params.eventKind = 31;
		params.vid = Server.getCurUser().id;
		params.answer = JSON.stringify(window.formSheetRes);
		Server.createUser(params).then(function(data){
			console.log(data);
			Server.setCurUser(params);
			justep.Shell.closePage();
		});
	}
	
//	日期选择
	Model.prototype.selectDate = function(){
		var comp = this.comp('datePicker');
		comp.set('type', 'date');
		var cur = $('#birthday').val();
		comp.show();
		comp.setValue(new Date(cur));
	}
	Model.prototype.getDate = function(event){
		var comp = event.source;
		var value = comp.getValue();
		if(value instanceof Date){
			value= justep.Date.toString(value, "yyyy-MM-dd");
		} else {
			value = "";
		}
		$('#birthday').val(value);
	}
	
//	性别选择
	Model.prototype.selectSex = function(){
		var comp = this.comp('sexSelector');
		comp.show();
	}
	Model.prototype.getSex = function(event){
		var value = this.comp("sexSelector").getInnerPickers()[0].getSelectedItem().val('sex');
		var text = this.comp("sexSelector").getInnerPickers()[0].getSelectedItem().val('text');
		$('#sexTxt').val(text);
		$('#sex').val(value);
	}

	return Model;
});