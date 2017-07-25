define(function(require) {
	require("css!../../main/css/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var selectID = "0";
	var jiaolvFileKey = "Jiaolv-Course";
	var setSceneKey = "Jiaolv-SetScene";
	var dataOffset = 0;

	var Model = function() {
		this.callParent();
	};
	
	//切换视图的方法
	Model.prototype.selectView = function(evt) {
		var target = $(evt.currentTarget), //获取事件目标对象
		type = target.attr('data-type');
		var url = "$UI/xlzl/v2/setting/" + type + "View.w",
		params = {};
		if(type === 'loginOut'){
			//注销用户
			window.mainView.logout();
		}
		
		if(type === 'courseList'){
			/*进入课程选购页面*/
			url = "$UI/xlzl/v2/psychologyListView.w";
			params = {
				header: true
		    };
		}	
		justep.Shell.showPage(url, params);
	}

	Model.prototype.headImageClick = function(event) {

	};

	Model.prototype.modelLoad = function(event) {
		//window.putView(this);
	};

	Model.prototype.modelUnLoad = function(event) {
		//window.removeView(this);
	};
	
	Model.prototype.goBack = function(event){
		
	};
	return Model;
});