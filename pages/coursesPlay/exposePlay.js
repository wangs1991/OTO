define(function(require) {
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("../../assets/js/loadData");
	var url;
	
	var Model = function() {
		this.callParent();
		this.title = justep.Bind.observable('');
		this.button = justep.Bind.observable('');
	};
	
	
	
	Model.prototype.modelLoad = function(event){
		window.putView(this);
	};
	
	Model.prototype.goToSave = function(){
		url = '$UI/OTO/pages/coursesPlay/courseResult.w';
		justep.Shell.showPage(url);
	}
	
	Model.prototype.modelParamsReceive = function(event){
		if (!event.hasOwnProperty("params")) {
			console.log("no params");
			justep.Shell.closePage();
			return;
		}
		
		var params = event.params;
		this.title.set(params.title);
		this.button.set(params.button);
		url = params.next;
	};
	
	return Model;
});