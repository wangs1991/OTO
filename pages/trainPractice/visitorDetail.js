define(function(require){
	require("css!../../assets/style/base").load();	
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var userData = null;

	var Model = function(){
		this.callParent();
		this.records = justep.Bind.observableArray([]);
		this.user = justep.Bind.observableArray([]);
	};
	
	Model.prototype.modelLoad = function(event){
		
	}
	
	Model.prototype.loadData = function () {
		var that = this;
		userData = Server.getCurUser();
		this.user.pop();
		this.user.push(userData);
		
		var records = Server.getRecords({
			eventKind: 42,
			vid: 1
		}).then(function(data){
			console.log(data);
			data.dataList.forEach(function(n, i){
				that.records.push(n);
			});
		});
	}
	
	Model.prototype.goToLearn = function(){
		var url = "$UI/OTO/pages/trainPractice/psyShow.w";
		justep.Shell.showPage(url);
	}
	Model.prototype.goUserInfo = function (){
		var url = "$UI/OTO/pages/userInfo/userInfo.w";
		justep.Shell.showPage(url);
	}
	return Model;
});