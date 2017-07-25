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

	Model.prototype.headImageClick = function(event){
		
	};
	
	
	Model.prototype.modelLoad = function(event){
		window.putView(this);
	};
	
	Model.prototype.modelUnLoad = function(event){
		window.removeView(this);
	};
	return Model;
});