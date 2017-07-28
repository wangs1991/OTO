define(function(require) {
	require("../../assets/js/AppUtils");
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var allData;
	
	var recvID;
	var recvScene;
	var recvCourse;
	
	var audioPlayer = null;
	var audioPlayerRowID = null;
	
	var Model = function() {
		this.callParent();
		this.goodsID="";
		this.shopID="";
	};
	
	// 图片路径转换
	Model.prototype.toUrl = function(url) {
		return url ? require.toUrl(url) : "";
	};
	
	//接收
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
		
		//创建audioplayer
		this.createAudioElement();
	};	
	
	Model.prototype.createAudioElement = function(){
		audioPlayer = document.createElement("audio");
	};
	
	//获取商品信息
	Model.prototype.fangsongMusicDataCustomRefresh = function(event){
		var url = require.toUrl("./main/json/fangsongMusicData.json");
//		allData.loadDataFromFile(url,event.source,true);
	};
	
	Model.prototype.gobuttonClick = function(event){
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
	    
		justep.Shell.closePage();
	};
	
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};
	
	Model.prototype.listClick = function(event){
		
	};
	
	Model.prototype.modelLoad = function(event){
		window.putView(this);
	};
	
	Model.prototype.modelUnLoad = function(event){
		window.removeView(this);
		this.stopMusic();
	};
	
	Model.prototype.radio1Click = function(event){
		var fangsongMusicData = this.comp("fangsongMusicData");
		
		var row = event.bindingContext.$object;
		if (row == null) return;
		var rowID = row.getID();
		
		var url = fangsongMusicData.getValueByID("fMusicUrl", rowID);
		this.playMusic(url);
	};
	
	Model.prototype.playMusic = function(url) {
		if (audioPlayer != null) {
			audioPlayer.currentTime = 0;
			audioPlayer.pause();
		}
		
		var url = require.toUrl(url);
		audioPlayer.src = url;
		audioPlayer.play();
	};
	
	Model.prototype.stopMusic = function() {
		if (audioPlayer != null && audioPlayer != undefined) {
			audioPlayer.currentTime = 0;
			audioPlayer.pause();
		}
	};
	
	return Model;
});