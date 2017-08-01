define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	
	/*头像上传依赖*/
	require("$UI/system/lib/cordova/cordova");  
    require("cordova!cordova-plugin-camera");   //调用摄像头类  
    require("cordova!cordova-plugin-file"); //调用本地文件上传类  
    require("cordova!cordova-plugin-file-transfer");    //调用文件上传转换类
	
	var Model = function(){
		this.callParent();
		
		this.picName = "";  //图片名称  
        this.picPath = "";  //图片路径
        
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
		try{
			console.log(testType);
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
//	进入测评模块选择
	Model.prototype.button1Click = function(event){
		console.log("goToSetting");
		var url = require.toUrl("$UI/OTO/pages/userInfo/assessSelect.w");
		justep.Shell.showPage(url);
	};
	
//	上传头像
	Model.prototype.uploadImg = function(){
		
	}
	
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
	
//	日期选择
	Model.prototype.selectDate = function(){
		var comp = this.comp('datePicker');
		comp.set('type', 'date');
		comp.show();
		comp.setValue(new Date(1990,1,1));
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