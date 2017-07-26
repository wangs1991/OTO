define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');

	var Model = function(){
		this.callParent();
		this.hatState = justep.Bind.observable();
	};
	
	Model.prototype.modelLoad = function(){
		var that = this;
		Server.checkHat().then(function(data){
			console.log(data);
			that.hatState.set(data.ret);
		});
	}

	return Model;
});