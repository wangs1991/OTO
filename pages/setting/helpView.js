define(function(require) {
	require("css!../../main/css/base").load();
	//require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	
	var selectID = "0";
	var jiaolvFileKey = "Jiaolv-Course";
	var setSceneKey = "Jiaolv-SetScene";
	var dataOffset = 0;
	
	var Model = function() {
		this.callParent();
	};
	Model.prototype.headImageClick = function(event){
		
	};
	
	Model.prototype.modelLoad = function(event){
		window.putView(this);
	};
	
	Model.prototype.modelUnLoad = function(event){
		//window.removeView(this);
	};
	
	Model.prototype.uploadOpn = function(){
		var description = this.comp('description').val();
		var contact = this.comp('contact').val();
		if(description.length < 1){
			justep.Util.hint("请输入问题描述");
			return  false;
		}
		if(contact.length < 1){
			justep.Util.hint("请输入联系方式");
			return  false;
		}
		Server.uploadOption({
			eventKind: 48,
			title: contact,
			content: description
		}).then(function(){
			justep.Util.hint("提交成功");
		});
	}
	
	return Model;
});