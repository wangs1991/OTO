define(function(require) {
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	/* 头像上传依赖 */
	require("$UI/system/lib/cordova/cordova");
	require("cordova!cordova-plugin-camera"); // 调用摄像头类

	var Model = function() {
		this.callParent();

		this.picName = ""; // 图片名称
		this.picPath = ""; // 图片路径

	};

	Model.prototype.assessSelect = function() {
		url = "$UI/OTO/pages/userInfo/assessSelect.w";
		var params = {
			from: 'new'
		};
		justep.Shell.showPage(url, params);
	}

	// 页面激活去读取数据[用户量表分数]
	Model.prototype.enterPage = function() {
		try{
			console.log(window.formSheetRes);
		}catch(e){
			
		}
	}
	// 进入测评模块选择
	Model.prototype.button1Click = function(event) {
		console.log("goToSetting");
		var url = require.toUrl("$UI/OTO/pages/userInfo/assessSelect.w");
		justep.Shell.showPage(url);
	};

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
			$('#avator_img').attr({src: "data:image/jpeg;base64," + imageData});
			// 图片上传
			self.uploadPic("data:image/jpeg;base64," + imageData);
		}

		function onLoadImageFail(error) {
			alert(error);
		}

	};

	Model.prototype.uploadPic = function(imageData) {
		Server.transferImg({
			isHead: 1,
			face: imageData
		}).then(function(data){
			$('#face_src').val(data.face);
		}, function(){
			justep.Util.hint('图片上传失败，请稍后重试！');
		});
	};

	// 提交新建用户数据
	Model.prototype.createUser = function() {
		var data = $('#newUserSheet').serialize();
		data = decodeURI(data);
		var params = Server.toJson(data);
		params.eventKind = 30;
		params.answer = JSON.stringify(window.formSheetRes);
		Server.createUser(params).then(function(data) {
			window.questions = {};
			justep.Shell.closePage();
		});
	}

	// 日期选择
	Model.prototype.selectDate = function() {
		var comp = this.comp('datePicker');
		comp.set('type', 'date');
		comp.show();
		comp.setValue(new Date(1990, 1, 1));
		return false;
	}
	Model.prototype.getDate = function(event) {
		var comp = event.source;
		var value = comp.getValue();
		if (value instanceof Date) {
			value = justep.Date.toString(value, "yyyy-MM-dd");
		} else {
			value = "";
		}
		$('#newUserSheet #birthdayTxtNew').html(value);
		$('#newUserSheet #birthdayNew').val(value);
	}
	// 性别选择
	Model.prototype.selectSex = function() {
		var comp = this.comp('sexSelector');
		comp.show();
		return false;
	}
	Model.prototype.getSex = function(event) {
		var value = this.comp("sexSelector").getInnerPickers()[0].getSelectedItem().val('sex');
		var text = this.comp("sexSelector").getInnerPickers()[0].getSelectedItem().val('text');
		$('#newUserSheet #sexTxtNew').html(text);
		$('#newUserSheet #sexNew').val(value);
	}

	Model.prototype.backBtnClick = function(event){
		this.close();
	};

	return Model;
});