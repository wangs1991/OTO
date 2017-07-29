define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.goTest1 = function(event){
		var params = {kind:"面试"};
		url = "$UI/OTO/pages/userInfo/assess_con1.w";
		justep.Shell.showPage(url,params);
	};

	Model.prototype.goTest2 = function(event){
		var params = {kind:"演讲"};
		url = "$UI/OTO/pages/userInfo/assess_con1.w";
		justep.Shell.showPage(url,params);
	};
	
	Model.prototype.goTest3 = function(event){
		var params = {kind:"工作"};
		url = "$UI/OTO/pages/userInfo/assess_con1.w";
		justep.Shell.showPage(url,params);
	};

	Model.prototype.goTest4 = function(event){
		var params = {kind:"恐高"};
		url = "$UI/OTO/pages/userInfo/assess_con1.w";
		justep.Shell.showPage(url,params);
	};

	Model.prototype.goTest5 = function(event){
		var params = {kind:"考试"};
		url = "$UI/OTO/pages/userInfo/assess_con1.w";
		justep.Shell.showPage(url,params);
	};

	Model.prototype.goTest6 = function(event){
		var params = {kind:"异性"};
		url = "$UI/OTO/pages/userInfo/assess_con1.w";
		justep.Shell.showPage(url,params);
	};

	return Model;
});