define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var user = null;
	

	
	var Model = function(){
		this.callParent();
		var that = this;
//		绑定数组进去
		this.userDetail = justep.Bind.observable(user);	
	};
	
	Model.prototype.modelParamsReceive = function(event){
		console.log(111111111111111);
	    var context = this.getContext();
	    
	    //获取URL中的参数
	    var p1 = context.getRequestParameter("p1");
	    var p2 = context.getRequestParameter("p2");
	    var buf = "来自url的参数: p1=" + p1 + ", p2=" + p2 + "\n";
	 
	    //获取简单参数
	    buf += "简单参数：params.a1=" + event.params.a1 + ", params.a2=" + event.params.a2 + "\n";
	 
	    //获取复杂参数
	    buf += "复杂参数：\n"
	    if (event.params.data){
	        buf += "    params.data.fn=" + event.params.data.fn + "\n";
	        this.comp("dlgData").loadData([event.params.data.data1]);
	        this.comp("dlgData").first();
	    }
	    alert(buf);
	};
	
	Model.prototype.modelLoad = function(event){
		var that = this;
		user = this.getContext().getRequestParameter('user');
		console.log(user);
	};
	

	
	return Model;
});