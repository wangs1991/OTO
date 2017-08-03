define(function(require) {
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var userData = null;
	var recordItem;
	var id = 0; // 分页用

	var Model = function() {
		this.callParent();
		var that = this;
		this.records = justep.Bind.observableArray([]);
		this.user = justep.Bind.observableArray([]);
		this.sexType = function() {
			return 1;
		}
		this.gotDetail = function() {
			recordItem = this;
			that.recordDetail()
		}
	};

	Model.prototype.modelLoad = function(event) {

	}
	// 进入页面刷新数据
	Model.prototype.enterPage = function() {
		this.records.splice(0, this.records.length);
		id = 0;
		this.loadData();
		
//		刷新用户数据
		userData = Server.getCurUser();
		this.user.pop();
		this.user.push(userData);
		console.log(userData);
	};

	// 加载数据
	Model.prototype.loadData = function() {
		var that = this;
		userData = Server.getCurUser();
		this.user.pop();
		this.user.push(userData);
		var curUser = Server.getCurUser();
		var records = Server.getRecords({
			eventKind : 42,
			vid : curUser.id,
			id : id
		}).then(function(data) {
			data.dataList.forEach(function(n, i) {
				that.records.push(n);
			});
			var len = data.dataList.length;
			if (len > 0) {
				id = data.dataList[len - 1].id;
			}
		});
	}

	// 开始练习
	Model.prototype.goToLearn = function() {
		var url = "$UI/OTO/pages/trainPractice/psyShow.w";
		justep.Shell.showPage(url);
	}
	// 获取当前用户数据
	Model.prototype.goUserInfo = function() {
		var url = "$UI/OTO/pages/userInfo/userInfo.w";
		justep.Shell.showPage(url);
	};
	// 去列表详情
	Model.prototype.recordDetail = function(evt) {
		var url = "$UI/OTO/pages/trainPractice/relaxFeedback.w";
		justep.Shell.showPage(url, recordItem);
	}
	return Model;
});