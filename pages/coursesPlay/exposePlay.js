define(function(require) {
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("../../assets/js/loadData");
	var Server = require('../../assets/server');
	var url;
	window.courseModel = null;
	
	var anisArray = [];
	var anisJson = {};
	var self = null;
	var liveTimer = null;	// 控制图片刷新
	
	var Model = function() {
		this.callParent();
		this.title = justep.Bind.observable('');
		this.button = justep.Bind.observable('');
		
		this.data_controller_name1 = justep.Bind.observable('');
		this.data_controller_name2 = justep.Bind.observable('');
		this.data_controller_name3 = justep.Bind.observable('');
		this.data_controller_name4 = justep.Bind.observable('');
		this.data_controller_name5 = justep.Bind.observable('');
		this.data_controller_name6 = justep.Bind.observable('');
		this.data_controller_name7 = justep.Bind.observable('');
		this.data_controller_name8 = justep.Bind.observable('');
		this.data_controller_name9 = justep.Bind.observable('');
		
		anisJson = {
		c1:this.data_controller_name1, 
		c2:this.data_controller_name2,
		c3:this.data_controller_name3,
		c4:this.data_controller_name4,
		c5:this.data_controller_name5,
		c6:this.data_controller_name6,
		c7:this.data_controller_name7,
		c8:this.data_controller_name8,
		c9:this.data_controller_name9
		};
	};
	
	
	
	Model.prototype.modelLoad = function(event){
		self = this;

		for (var i = 1; i <= 9; i++) {
			this.getElementByXid("c" + i).style.display = "none";
		}
		
		setTimeout(function() {
		
			Server.getActions({
				action: 'get_controller_ani_list'
			}).then(function(data){
				anisArray = data.anis.split(',');

				for (var i = 0; i < anisArray.length; i++) {
					anisJson["c" + (i + 1)].set(anisArray[i]);
					self.getElementByXid("c" + (i + 1)).style.display = "";
				}

				justep.Util.hint("controller anis:" + anisArray.length, {
					"position" : "bottom"
				});
			});
		}, 2000);
		
		var liveImage = self.getElementByXid("liveImage");

		if (liveTimer != null && liveTimer != undefined) {
			clearInterval(liveTimer);
		}

		liveTimer = setInterval(function() {
			if (liveImage.complete == true) {
				liveImage.src = "http://" + window.ip + ":8801/live/get?id="+courseModel.lid+"&time=" + (new Date()).getTime();
			}
		}, 120);
		
	};
	
	Model.prototype.goToSave = function(){
		Server.stopCourse({
				eventKind: 40,
				lid: courseModel.lid
			}).then(function(data){
				url = '$UI/OTO/pages/coursesPlay/courseResult.w';
				justep.Shell.showPage(url, courseModel);
			});
	}
	
	Model.prototype.modelParamsReceive = function(event){
		if (!event.hasOwnProperty("params")) {
			console.log("no params");
			justep.Shell.closePage();
			return;
		}
		
		var params = event.params;
		courseModel = params;
		this.button.set(params.button);
		url = params.next;
	};
	
	// from zhiyong
	
	Model.prototype.startclick = function(event) {

		window.skinFeelStart = true;

	}

	Model.prototype.andclick = function(event) {

		window.skinArraylist = {};
		window.skinFeelStart = true;

	}

	Model.prototype.endclick = function(event) {

		window.skinFeelStart = flase;

	}

	Model.prototype.button3Click = function(event) {

	};

	Model.prototype.openPageClick = function(event) {

	};

	Model.prototype.modelUnLoad = function(event) {
		clearInterval(liveTimer);
	};

	function control(me, index) {
		var val = index + ",0,0,0,0";

		var params = {
			device : window.device,
			eventKind : 22,
			value : val,
			uid : window.uid,
			session : window.session
		};
		$.getJSON(AppUtils.getUrl("app/order?action=app_order"), params, function(data) {
			console.log("control:" + data.msg);
		});
	}
	;

	Model.prototype.controller1Click = function(event) {
		control(this, 1);
	};

	Model.prototype.controller2Click = function(event) {
		control(this, 2);
	};

	Model.prototype.controller3Click = function(event) {
		control(this, 3);
	};

	Model.prototype.controller4Click = function(event) {
		control(this, 4);
	};

	Model.prototype.controller5Click = function(event) {
		control(this, 5);
	};

	Model.prototype.controller6Click = function(event) {
		control(this, 6);
	};

	Model.prototype.controller7Click = function(event) {
		control(this, 7);
	};

	Model.prototype.controller8Click = function(event) {
		control(this, 8);
	};

	Model.prototype.controller9Click = function(event) {
		control(this, 9);
	};
	
	return Model;
});