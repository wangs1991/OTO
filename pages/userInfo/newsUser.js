define(function(require) {
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	/* 头像上传依赖 */
	require("$UI/system/lib/cordova/cordova");
	require("cordova!cordova-plugin-camera"); // 调用摄像头类
	require("cordova!cordova-plugin-file"); // 调用本地文件上传类
	require("cordova!cordova-plugin-file-transfer"); // 调用文件上传转换类

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
	Model.prototype.uploadImg = function() {
		console.log(11111111);
		// 拍照
		var _this = this;
		document.addEventListener("deviceready", onDeviceReady, false);
		function onDeviceReady() {
			console.log('onDeviceReady');
			navigator.camera.getPicture(onLoadImageSuccess, onLoadImageFail, {
				destinationType : navigator.camera.DestinationType.DATA_URL,// DATA_URL
				quality : 100,
				targetWidth : 200,
				targetHeight : 200,
				saveToPhotoAlbum : true,
				// allowEdit : true,
				sourceType : 1
			// 0、2为从相册文件中选择，1为拍照
			});
			// 拍照成功后回调
			function onLoadImageSuccess(imageData) {// imageURI imageData
				_this.picPath = imageData;
				var smallImage = document.getElementById(_this.getIDByXID('image3'));
				smallImage.src = "data:image/jpeg;base64," + imageData;

				var onepicData = _this.comp("onepicData");
				var bizID = onepicData.getCurrentRowID();
				_this.picName = bizID + "_" + justep.Date.toString(new Date(), 'yyyyMMdd_hhmmss');
				onepicData.setValue("fImageUrl", "upload_files/" + _this.picName + ".jpg", onepicData.getCurrentRow());
			}
			function onLoadImageFail(error) {
				alert(error);
			}
		}
	}

	// 提交新建用户数据
	Model.prototype.createUser = function() {
		var data = $('#newUserSheet').serialize();
		data = decodeURI(data);
		var params = Server.toJson(data);
		params.eventKind = 30;
		params.answer = window.formSheetRes;
		Server.createUser(params).then(function(data) {
			console.log(data);
			justep.Shell.closePage();
		});
	}

	// 日期选择
	Model.prototype.selectDate = function() {
		var comp = this.comp('datePicker');
		comp.set('type', 'date');
		comp.show();
		comp.setValue(new Date(1990, 1, 1));
	}
	Model.prototype.getDate = function(event) {
		var comp = event.source;
		var value = comp.getValue();
		if (value instanceof Date) {
			value = justep.Date.toString(value, "yyyy-MM-dd");
		} else {
			value = "";
		}

		$('#birthday').val(value);
	}
	// 性别选择
	Model.prototype.selectSex = function() {
		var comp = this.comp('sexSelector');
		comp.show();
	}
	Model.prototype.getSex = function(event) {
		var value = this.comp("sexSelector").getInnerPickers()[0].getSelectedItem().val('sex');
		var text = this.comp("sexSelector").getInnerPickers()[0].getSelectedItem().val('text');
		$('#sexTxt').val(text);
		$('#sex').val(value);
	}

	return Model;
});