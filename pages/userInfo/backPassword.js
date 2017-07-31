define(function(require){
    require("css!../../assets/style/base").load();	
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	return Model;
});