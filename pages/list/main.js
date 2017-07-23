define(function(require) {
	require("./js/AppUtils");

	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var deviceID = "all";
	var jiaolvFileKey = "Jiaolv-Course-Flg";
	var setSceneKey = "Jiaolv-SetScene";
	var WindowContainer = require("$UI/system/components/justep/windowContainer/windowContainer");
	var self = null;
	
	var Model = function() {
		this.callParent();
	};
	// 定义模块跳转事件
	// by ws
	Model.prototype.goToSpeech = function() {
		//var url = "$UI/xlzl/v2/feedback/homeView.w";
		//justep.Shell.showPage(url);
	}
	Model.prototype.goToSetting = function() {
		//var url = "$UI/xlzl/v2/setting/settingHomeView.w";
		//justep.Shell.showPage(url);
	}
	
	Model.prototype.logout = function() {
		/*退出登录*/
		localStorage.clear();
		window.sessionOK = false;
		window.uid = "";
		window.session = "";
		
		window.closeAllView();
		
		window.loginView.welcome();
		
		this.getElementByXid('windowPanel').style.display = "none";
		this.getElementByXid('loginPanel').style.display = "";
		
		var contents1 = self.comp("contents1");
		if (contents1 !== null) {
			contents1.to(0);
		}
	};

	Model.prototype.modelLoad = function(event) {
		window.mainView = this;
		self = this;
		var me = this;
		setInterval(function() {
			$.ajaxSettings.async = true;
			// $.ajaxSettings.timeout = 100;
			
			var params = {
				device : deviceID,
				eventKind : 12,
				value : "",
				uid : window.uid,
				session : window.session
			};
			$.getJSON(AppUtils.getUrl("app/order?action=app_order"), params, function(data) {
				console.log(data);
				window.MaxSkinValue = data.max;
				window.AverageSkinValue = data.average;
				window.SkinValue = data.value;

				// 截取部分数组
				if (data.all == null) {
					data.all = "";
				}
				var array = data.all.split(",", 2000);
				var start, end, max;
				start = end = 0;
				max = 100;

				if (array.length > max) {
					start = array.length - max;
					end = array.length;
				} else {
					start = 0;
					end = array.length;
				}
				window.curSkinAll = array.slice(start, end);

				setCurSkinEchartAll();
				// justep.Util.hint("curSkinAll1:" + window.curSkinAll.length,
				// {"position":"bottom"});
			});
		}, 1000 * 5);

		// justep.Util.hint("curSkinAll2:" + window.curSkinAll.length,
		// {"position":"bottom"});
	};

	function setCurSkinEchartAll() {
		var skinAllArray = window.curSkinAll;
		var skinEchartArray = window.curSkinEchartAll;
		var bottomArray = [];

		if (skinAllArray == null || skinAllArray.length == 0) {
			window.curSkinAll = [];
			window.curSkinEchartAll = [];
		}

		var array = [];
		for (var i = 0; i < skinAllArray.length; i += 3) {
			array[array.length] = skinAllArray[i];
		}
		skinAllArray = array;
		window.curSkinAll = array;

		var average, count, total, min;

		min = Number(skinAllArray[0]);
		count = skinAllArray.length;
		for (var i = 0; i < skinAllArray.length; i++) {
			total += Number(skinAllArray[i]);

			if (Number(skinAllArray[i]) < min) {
				min = Number(skinAllArray[i]);
			}

			bottomArray[i] = i + "";
		}
		average = total / count;
		window.curSkinAll = bottomArray;

		window.curSkinEchartAll = [];
		for (var i = 0; i < skinAllArray.length; i++) {
			window.curSkinEchartAll[i] = skinAllArray[i];// (Number(skinAllArray[i])
															// - average) * 10;
		}
	}

	Model.prototype.loginSuccess = function() {
		// justep.Util.hint("main view loginSuccess", {"position":"bottom"});

		/* 判断是否点击过使用说明 */
		var agreed = localStorage.getItem('agreed');
		if (!agreed) {
			var url = "$UI/xlzl/v2/agreement/agreementView.w";
			justep.Shell.showPage(url);
		} else {
			this.getElementByXid('windowPanel').style.display = "";
			this.getElementByXid('loginPanel').style.display = "none";

			// 刷新课程是否显示
			this.refreshSelectCourse();
			localStorage.setItem(jiaolvFileKey, "Y");
		}
	};

	Model.prototype.agreeIt = function() {
		this.getElementByXid('windowPanel').style.display = "";
		this.getElementByXid('loginPanel').style.display = "none";

		// 刷新课程是否显示
		this.refreshSelectCourse();
		localStorage.setItem(jiaolvFileKey, "Y");
	}

	Model.prototype.modelModelConstruct = function(event) {
		// 得到存储在本地的用户数据
		window.uid = localStorage.getItem("uid");
		window.session = localStorage.getItem("session");

		// session验证通过
		if (AppUtils.checkSession() == true) {
			this.getElementByXid('windowPanel').style.display = "";
			this.getElementByXid('loginPanel').style.display = "none";
			window.sessionOK = true;

			var agreed = localStorage.getItem('agreed');
			if (!agreed) {
				var url = "$UI/xlzl/v2/agreement/agreementView.w";
				justep.Shell.showPage(url);
			}

			// session验证没有通过
		} else {
			this.getElementByXid('windowPanel').style.display = "none";
			this.getElementByXid('loginPanel').style.display = "";
			window.sessionOK = false;
		}

		if (window.sessionOK == false) {
			localStorage.removeItem(jiaolvFileKey);
			localStorage.removeItem(setSceneKey);
		}

		// 刷新课程是否显示
		this.refreshSelectCourse();
	};

	Model.prototype.refreshSelectCourse = function() {
		var strJson = localStorage.getItem(jiaolvFileKey);

		// alert(strJson + " " + localStorage.getItem(setSceneKey));

		/* 控制底部icon显示和顶部显示的视图 */
		if (strJson === "" || strJson == undefined) {
			this.getElementByXid('mainContent').style.display = "";
			this.getElementByXid('mainButton').style.display = "";
			this.getElementByXid('courseButton').style.display = "none";

		} else {
			this.getElementByXid('mainContent').style.display = "none";
			this.getElementByXid('mainButton').style.display = "none";
			this.getElementByXid('courseButton').style.display = "";

			var contents1 = this.comp("contents1");
			if (contents1 != null) {
				contents1.to(1);
			}
		}
	};

	return Model;
});