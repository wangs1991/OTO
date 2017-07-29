define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.assessSelect = function (){
		url = "$UI/OTO/pages/userInfo/assessSelect.w";
		justep.Shell.showPage(url);
	}

	Model.prototype.button1Click = function(event){
		console.log("goToSetting");
		var url = require.toUrl("$UI/OTO/pages/userInfo/assessSelect.w");
		justep.Shell.showPage(url);
	};
	
	Model.prototype.startclick =function(event){
		
		window.skinFeelStart = true;
		
	}
	
	Model.prototype.andclick =function(event){		
	
		var shinArray_1 =	window.skinArraylist;
		window.skinArraylist={};	
		window.skinFeelStart = true;
								
	}
	
	Model.prototype.endclick =function(event){
		
		var shinArray_2 =	window.skinArraylist;
		window.skinFeelStart = flase;
		
				
	}

	Model.prototype.button3Click = function(event){

	};
	
	
	
	
	return Model;
});