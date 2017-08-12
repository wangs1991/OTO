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
	}
	
	//	页面激活去读取数据[用户量表分数]
	Model.prototype.enterPage = function(){
		try{
			$('#userInfo #questType').val(testType);
			var questions = window.questions,
				textScore = [];
			for(var i=0, len=questions.length; i<len; i++){
				textScore.push(questions[i].id+':'+questions[i].score);
			}
			console.log(textScore.join(','));
			$('#userInfo #answer').val(textScore.join(','));
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
			params.id = params.vid; 
			params.face = window.face + decodeURIComponent(params.face);
			Server.setCurUser(params);
			window.questions = {};
			justep.Shell.closePage();
		});
	}
	
	// 上传头像
	Model.prototype.uploadImg = function(event) {
		if (!navigator.camera) {
			return;
		}
		var self = this;
		navigator.camera.getPicture(onLoadImageSuccess, onLoadImageFail, {
			destinationType : navigator.camera.DestinationType.DATA_URL,
			allowEdit : true,
			quality : 80,
			targetWidth : 100,
			targetHeight : 100,
			saveToPhotoAlbum : true,
			sourceType: 1   // 1 相机，2 相册
		});

		// 拍照成功后回调
		function onLoadImageSuccess(imageData) {
			localStorage.setItem("imageData", "data:image/jpeg;base64," + imageData);
			// 显示图像
			$('#avator_img2').attr({src: "data:image/jpeg;base64," + imageData});
			// 图片上传
			self.uploadPic("data:image/jpeg;base64," + imageData);
		}

		function onLoadImageFail(error) {
			alert(error);
		}

	};

	Model.prototype.uploadPic = function(imageData) {
		var that = this;
		Server.transferImg({
			isHead: 1,
			face: imageData
		}).then(function(data){
			$('#userInfo #face_srcM').val(data.face);
		}, function(){
			justep.Util.hint('图片上传失败，请稍后重试！');
		});
		
	};
	
//	日期选择
	Model.prototype.selectDate = function(){
		var comp = this.comp('datePicker');
		comp.set('type', 'date');
		var cur = $('#birthday').val();
		comp.show();
		comp.setValue(new Date(cur));
		return false;
	}
	Model.prototype.getDate = function(event){
		var comp = event.source;
		var value = comp.getValue();
		if(value instanceof Date){
			value= justep.Date.toString(value, "yyyy-MM-dd");
		} else {
			value = "";
		}
		$('#userInfo #birthday').val(value);
		$('#userInfo #birthdayTxt').html(value);
	}
	
//	性别选择
	Model.prototype.selectSex = function(){
		var comp = this.comp('sexSelector');
		comp.show();
		return false;
	}
	Model.prototype.getSex = function(event){
		var value = this.comp("sexSelector").getInnerPickers()[0].getSelectedItem().val('sex');
		var text = this.comp("sexSelector").getInnerPickers()[0].getSelectedItem().val('text');
		$('#userInfo #sexTxt').text(text);
		$('#userInfo #sex').val(value);
	}

	Model.prototype.goBack = function(event){
		this.close();
	};
	
	return Model;
});