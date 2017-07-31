define(function(require) {
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("../../assets/js/loadData");
	require("../../assets/js/AppUtils");
	var Server = require('../../assets/server');
	
	var recvID;
	var recvScene;
	var recvCourse;
	var recvKind;
	
	var self;
	var curID = 1;
	var totalCount = 0;
	var testDataJson = null;
	var selectJson = [];
	var totalScore = 0;
	
	var Model = function() {
		this.callParent();
	};
	$(".title_on").html("自我测评")
	//图片路径转换
	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};
	
	//进入home界面
	Model.prototype.bottomDivClick = function(event){
		//alert("click");
		
		//设置课程完毕
		if (window.courseListView != null) {
			window.courseListView.setCourseComplete(recvID);
		}
		
		window.closeAllView();
	};
	
	Model.prototype.modelParamsReceive = function(event){
		if (!event.hasOwnProperty("params")) {
			console.log("no params");
			return;
		}
		if (!event.params.hasOwnProperty("data")) {
			//console.log("no data");
			//return;
		}
		if (!event.params.hasOwnProperty("kind")) {
			console.log("no kind");
			
			return;
		}
		var params = event.params;
		recvKind = params.kind;
		
//		this.getElementByXid('panel1').style.display="";
//		this.getElementByXid('panel2').style.display="none";
		this.getElementByXid('panel3').style.display="none";
		
		var firstTest = localStorage.getItem("firstTest");
		if (firstTest == null || firstTest == undefined) {
			localStorage.setItem("firstTest", "1");
			this.getElementByXid('testCompleteInfoDiv1').style.display="none";
			this.getElementByXid('testCompleteInfoDiv2').style.display="";
		} else {
			this.getElementByXid('testCompleteInfoDiv1').style.display="";
			this.getElementByXid('testCompleteInfoDiv2').style.display="none";
		}
		
		totalScore = 0;
		
		self.refreshData();
	};
	
	Model.prototype.modelLoad = function(event){
		//window.putView(this);
	};
	
	Model.prototype.modelUnLoad = function(event){
		//window.removeView(this);
	};
	
	Model.prototype.goTestButtonClick = function(event){
//		this.getElementByXid('panel1').style.display="none";
		this.getElementByXid('panel2').style.display="";
		this.getElementByXid('panel3').style.display="none";
	};
	
	Model.prototype.testDataCustomRefresh = function(event){
		self = this;
		self.refreshData();
	};
	
	Model.prototype.refreshData = function() {
		var url = "";
		
		console.log(recvKind);
		//根据上个页面的点击内容加载不同的JSON文件
		switch(recvKind)
		{
			case "面试":
				url = require.toUrl("../../mock/test_mianshi.json");
				$(".scotxt").eq(0).html("社交焦虑自评");
				$(".scotxt").eq(1).html("面试焦虑自评");
				break;		
			case "演讲":
				url = require.toUrl("../../mock/test_yanjiang.json");
				$(".scotxt").eq(0).html("社交焦虑自评");
				$(".scotxt").eq(1).html("公众演讲自评");
				break;
			case "工作":
				url = require.toUrl("../../mock/test_SJgongzuohuibao.json");
				$(".scotxt").eq(0).html("社交焦虑自评");
				$(".scotxt").eq(1).html("会议发言自评");
				break;
			case "异性":
				url = require.toUrl("../../mock/test_SJyixingxiangchu.json");
				$(".scotxt").eq(0).html("社交焦虑自评");
				$(".scotxt").eq(1).html("异性相处自评");
				break;
			
			case "恐高":
				url = require.toUrl("../../mock/test_konggao.json");
				$(".scotxt").eq(0).html("恐高自评");
				$(".scotxt").eq(1).html("");
				$(".list-group li").eq(4).hide();
				$(".score-big").eq(1).hide();
				break;
			case "考试":			
				url = require.toUrl("../../mock/test_kaoshijiaolv.json");
				$(".scotxt").eq(0).html("考试焦虑自评");
				$(".scotxt").eq(1).html("");
				$(".list-group li").eq(4).hide();
				$(".score-big").eq(1).hide();
				break;
		}
		
		var testData = self.comp("testData");
		testData.clear();
		
		self.getElementByXid('applyButton').style.display="none";
		self.getElementByXid('preButton').style.display="";
		self.getElementByXid('nextButton').style.display="";
		
		var controlData = self.comp("controlData");
		controlData.clear();
		
		self.comp("controlData").newData({
			defaultValues:[{
			id:"1",
			title:"t1",
			question1:"q1",
			question2:"q2",
			question3:"q3",
			question4:"q4",
			question5:"q5",
			question1_score:"1",
			question2_score:"2",
			question3_score:"3",
			question4_score:"4",
			question4_score:"5",
			select1:false,
			select2:false,
			select3:false,
			select4:false,
			select5:false,
			progress:"0",
			total: 0,
			score:0
			}]
		});
		
		//var url = require.toUrl("../../mock/test_mianshi.json");
		console.log(url);
		AppUtils.getAction(url, null, function(data) {
			console.log(data)
			testDataJson = data;
			
			
			testData.loadData(data);
			
			controlData.setValueByID("title", data[0].title, "1");
			controlData.setValueByID("question1", data[0].question1, "1");
			controlData.setValueByID("question2", data[0].question2, "1");
			controlData.setValueByID("question3", data[0].question3, "1");
			controlData.setValueByID("question4", data[0].question4, "1");
			controlData.setValueByID("question5", data[0].question5, "1");
			
			totalCount = data.length;
			curID = 1;
			
			controlData.setValueByID("progress", curID, "1");
			controlData.setValueByID("total", totalCount);
		});
	};
	
	Model.prototype.radio1Click = function(event){
		this.radioClick("1");
	};
	
	Model.prototype.radio2Click = function(event){
		this.radioClick("2");
	};
	
	Model.prototype.radio3Click = function(event){
		this.radioClick("3");
	};
	
	Model.prototype.radio4Click = function(event){
		this.radioClick("4");
	};
	
	Model.prototype.radio5Click = function(event){
		this.radioClick("5");
	};
	
	Model.prototype.radioClick = function(selectIndex){
		var controlData = self.comp("controlData");
		
		controlData.setValueByID("select1", false, "1");
		controlData.setValueByID("select2", false, "1");
		controlData.setValueByID("select3", false, "1");
		controlData.setValueByID("select4", false, "1");
		controlData.setValueByID("select5", false, "1");
	
		if (selectIndex == 0 || selectIndex == undefined) return;
		
		controlData.setValueByID("select" + selectIndex, true, "1");
		
		//设置选的的第几个
		testDataJson[curID - 1].select = parseInt(selectIndex);
	};
	
	Model.prototype.nextButtonClick = function(event){
		if(testDataJson[curID - 1].select == 0) {
			justep.Util.hint("请正确选择", {"position":"bottom"});
			return;
		}
		
		curID++;
		if (curID >= totalCount) {
			curID = totalCount;
		}
		
		var controlData = this.comp("controlData");
		
		controlData.setValueByID("select1", false, "1");
		controlData.setValueByID("select2", false, "1");
		controlData.setValueByID("select3", false, "1");
		controlData.setValueByID("select4", false, "1");
		controlData.setValueByID("select5", false, "1");
		
		controlData.setValueByID("title", testDataJson[curID - 1].title, "1");
		controlData.setValueByID("question1", testDataJson[curID - 1].question1, "1");
		controlData.setValueByID("question2", testDataJson[curID - 1].question2, "1");
		controlData.setValueByID("question3", testDataJson[curID - 1].question3, "1");
		controlData.setValueByID("question4", testDataJson[curID - 1].question4, "1");
		controlData.setValueByID("question5", testDataJson[curID - 1].question5, "1");
		controlData.setValueByID("progress", curID, "1");
		
		this.radioClick(testDataJson[curID - 1].select);
		
		if (curID >= totalCount) {
			this.getElementByXid('applyButton').style.display="";
			this.getElementByXid('preButton').style.display="";
			this.getElementByXid('nextButton').style.display="none";
		}
		//this.getElementByXid('applyButton').style.display="";
	};
	
	Model.prototype.preButtonClick = function(event){
		if(testDataJson[curID - 1].select == 0) {
			//justep.Util.hint("请正确选择", {"position":"bottom"});
			//return;
		}
		
		curID--;
		if (curID <= 1) {
			curID = 1;
		}
		
		var controlData = this.comp("controlData");
		
		controlData.setValueByID("select1", false, "1");
		controlData.setValueByID("select2", false, "1");
		controlData.setValueByID("select3", false, "1");
		controlData.setValueByID("select4", false, "1");
		controlData.setValueByID("select5", false, "1");
		
		controlData.setValueByID("title", testDataJson[curID - 1].title, "1");
		controlData.setValueByID("question1", testDataJson[curID - 1].question1, "1");
		controlData.setValueByID("question2", testDataJson[curID - 1].question2, "1");
		controlData.setValueByID("question3", testDataJson[curID - 1].question3, "1");
		controlData.setValueByID("question4", testDataJson[curID - 1].question4, "1");
		controlData.setValueByID("question5", testDataJson[curID - 1].question4, "1");
		controlData.setValueByID("progress", curID, "1");
		
		this.radioClick(testDataJson[curID - 1].select);
		
		if (curID < totalCount) {
			this.getElementByXid('applyButton').style.display="none";
			this.getElementByXid('preButton').style.display="";
			this.getElementByXid('nextButton').style.display="";
		}
	};
	
	Model.prototype.applyButtonClick = function(event){
		if(testDataJson[curID - 1].select == 0) {
			justep.Util.hint("请正确选择", {"position":"bottom"});
			return;
		}
		
		var count = testDataJson.length;
		var score = 0;
		var score_f=18;
		
		var questions = [];
		for (var i = 0; i < count; i++) {
			var json = testDataJson[i];
			console.log(json);
			console.log(i + "-" + json.type);
			questions.push({
				id: json.id,
				score: json['question'+json.select+'_score']
			});
			if (json.type == "one") {
				if (json == null || json.select <= 0) continue;
				if (json.select == 1) {
					score += parseInt(json.question1_score);
				} else if (json.select == 2) {
					score += parseInt(json.question2_score);
				} else if (json.select == 3) {
					score += parseInt(json.question3_score);
				} else if (json.select == 4) {
					score += parseInt(json.question4_score);
				} else if (json.select == 5) {
					score += parseInt(json.question5_score);
				}
			} else {
				if (json == null || json.select <= 0) continue;
				if (json.select == 1) {
					score_f += parseInt(json.question1_score);
				} else if (json.select == 2) {
					score_f += parseInt(json.question2_score);
				} else if (json.select == 3) {
					score_f += parseInt(json.question3_score);
				} else if (json.select == 4) {
					score_f += parseInt(json.question4_score);
				} else if (json.select == 5) {
					score_f += parseInt(json.question5_score);
				}
			}
		}					
		
		totalScore = score;
		
//		this.getElementByXid('panel1').style.display="none";
		this.getElementByXid('panel2').style.display="none";
		this.getElementByXid('panel3').style.display="";
		
		var controlData = this.comp("controlData");
		controlData.setValueByID("score", totalScore, "1");
		controlData.setValueByID("score_f", score_f, "1");
		
		window.testScore = totalScore;
		window.questions = questions;
		
	};
	
	Model.prototype.closeButtonClick = function(event){
		justep.Shell.closePage();
		/*var selectedIDs = "";
		selectedIDs += "{\n\"scenes\":[\n";
		selectedIDs += "{\"ad\":\"" + recvCourse + "\", \"trainScene\":\""+recvScene+"\", \"score\":\"" + window.testScore + "\", \"id\":\""+recvID+"\"}\n";
		selectedIDs += "]\n}";
		
		var params = {device:window.device, eventKind:16, value:selectedIDs, uid:window.uid, session:window.session};
		$.getJSON(AppUtils.getUrl("app/order?action=app_order") , params, function(data){
			//justep.Util.hint("selectedIDs:" + selectedIDs, {"position":"bottom"});
		});
		
		//alert(recvID);
		
		if (parseInt(recvID) > 5) {
			var params = {
		        data : {
		        	id : recvID,
		        	scene : recvScene,
		        	course : recvCourse
		        }
		    };
		    justep.Shell.showPage("levelCo mpleteReportView.w", params);
		} else {
			window.closeAllView();
		}*/
	};
	
	Model.prototype.goBack = function(event){
		this.close();
	};
	
	return Model;
});