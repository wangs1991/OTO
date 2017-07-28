define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("../js/loadData");
	var recvID;
	var recvScene;
	var recvCourse;
	var recvGoView;
	
	var Model = function() {
		this.callParent();
	};
	
	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};
	
	// 下划刷新
	Model.prototype.scrollViewPullDown = function(event) {
	};
	
	Model.prototype.contents2ActiveChange = function(event){

	};
	
	Model.prototype.headImageClick = function(event){
		
	};
	
	Model.prototype.topBackBtnClick = function(event){
		justep.Shell.closePage();
	};
	
	Model.prototype.courseDataCustomRefresh = function(event){
		var courseData = this.comp("courseData");
		var self = this;
	};
	
	Model.prototype.modelLoad = function(event){
		window.putView(this);
	};
	
	Model.prototype.modelUnLoad = function(event){
		window.removeView(this);
	};
	
	Model.prototype.backDivClick = function(event){
		this.close();
	};
	
	Model.prototype.startButtonClick = function(event){
		var controlData = this.comp("controlData");
		if (controlData == null) return;
		
		var selectedIDs = "";
		selectedIDs += "{\n\"scenes\":[\n";
		selectedIDs += "{\"ad\":\"" + recvCourse + "\", \"trainScene\":\""+recvScene+"\", \"difficulty\":\"" + recvCourse + "\", \"id\":\""+recvID+"\"}\n";
		selectedIDs += "]\n}";
		
		var params = {device:window.device, eventKind:11, value:selectedIDs, uid:window.uid, session:window.session};
		$.getJSON(AppUtils.getUrl("app/order?action=app_order") , params, function(data){
			//justep.Util.hint("selectedIDs:" + selectedIDs, {"position":"bottom"});
		});
		
		//进入课程场景选择
		var url = "$UI/xlzl/runningView.w";
		var params = {
	        data : {
	            id : recvID,
	            scene : recvScene,
	            course : recvCourse
	        }
	    };
	    
	    justep.Shell.showPage(url, params);
	    
	    this.close();
	};
	
	Model.prototype.modelParamsReceive = function(event){
		if (!event.hasOwnProperty("params")) {
			console.log("no params");
			return;
		}
		if (!event.params.hasOwnProperty("data")) {
			console.log("no data");
			return;
		}
		if (!event.params.data.hasOwnProperty("id")) {
			console.log("no id");
			return;
		}
		
		var params = event.params;
		recvID = params.data.id;
		recvScene = params.data.scene;
		recvCourse = params.data.course;
		recvGoView = params.data.go_view;
	};
	
	Model.prototype.selfSelectLiClick1 = function(event){
		var controlData = this.comp("controlData");
		controlData.setValue("selfSelect1", "已选择");
		controlData.setValue("selfSelect2", "请选择");
		controlData.setValue("selfSelect3", "请选择");
		controlData.setValue("selfSelect4", "请选择");
	};
	
	Model.prototype.selfSelectLiClick2 = function(event){
		var controlData = this.comp("controlData");
		controlData.setValue("selfSelect1", "请选择");
		controlData.setValue("selfSelect2", "已选择");
		controlData.setValue("selfSelect3", "请选择");
		controlData.setValue("selfSelect4", "请选择");
	};
	
	Model.prototype.selfSelectLiClick3 = function(event){
		var controlData = this.comp("controlData");
		controlData.setValue("selfSelect1", "请选择");
		controlData.setValue("selfSelect2", "请选择");
		controlData.setValue("selfSelect3", "已选择");
		controlData.setValue("selfSelect4", "请选择");
	};
	
	Model.prototype.selfSelectLiClick4 = function(event){
		var controlData = this.comp("controlData");
		controlData.setValue("selfSelect1", "请选择");
		controlData.setValue("selfSelect2", "请选择");
		controlData.setValue("selfSelect3", "请选择");
		controlData.setValue("selfSelect4", "已选择");
	};
	
	return Model;
});