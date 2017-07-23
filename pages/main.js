define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../assets/server');
	

	
	var Model = function(){
		this.callParent();
	};

	
	Model.prototype.modelLoad = function(event){
		var indicators = $('[xid="carousel"]>.carousel-indicators>li'),
			m = this;
		indicators.click(function(){
			var index = parseInt($(this).attr("index"));
			m.comp('carousel').to(index);
		});
		Server.test('../mock/test.json').then(function(data){
			console.log(data);
		}, function(){});
	};
	
	return Model;
});