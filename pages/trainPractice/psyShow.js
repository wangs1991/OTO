define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	
	var courseOpts = {
		breathing: [{
			title: '肌肉渐进式放松',
		},{
			title: '深呼吸放松',
		},{
			title: '快速放松',
		}],
		examTender: [{
			title: '考试焦虑'
		}],
		interview: [{
			title: '面试焦虑'
		}],
		acrophobia:[{
			title: '恐高症'
		}]
	};

	var Model = function(){
		this.callParent();
		this.hatState = justep.Bind.observable(false);
	};
	
	Model.prototype.modelLoad = function(){
		var that = this;
//		验证头盔绑定状态
		Server.checkHat({
			eventKind: 33
		}).then(function(data){
			that.hatState.set(true);
			console.log(data);
			Server.deviceId(data.deviceId);
		}, function(data){
			that.hatState.set(false);
		});
	}
	
	Model.prototype.enterCources = function(evt){
		var target = $(evt.currentTarget), //获取事件目标对象
			data = target.attr('data-type');
		if(!data){
			return false;
		}
		var page = data.split(':')[0],
			type = data.split(':')[1],
		    url = "$UI/OTO/pages/coursesOptions/"+page+".w",
		    params = courseOpts[page][type-1];
		    params.type = type;
		    params.page = page;
		justep.Shell.showPage(url, params); 
	};
	
	Model.prototype.goBindVR = function(){
		var url = "$UI/OTO/pages/setting/bindVRView.w";
		justep.Shell.showPage(url);
	}

	return Model;
});