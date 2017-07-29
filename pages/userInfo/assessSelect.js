define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};


	Model.prototype.goTest = function(evt){
		var target = $(evt.currentTarget), //获取事件目标对象
		type = target.attr('data-type');
		var title = {
				1: '演讲',
				2: '工作',
				3: '恐高',
				4: '考试',
				5: '异性'
		};
		var params = {kind: title[type]};
		url = "$UI/OTO/pages/userInfo/assess_con1.w";
		justep.Shell.showPage(url,params);
	};
	
	return Model;
});