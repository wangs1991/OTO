define(function(require){
	require("css!../../assets/style/base").load();
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	
	var pgeType = false;
	window.testType = -1;
	window.formSheetRes = {};

	var Model = function(){
		this.callParent();
	};

//	页面激活去读取数据
	Model.prototype.enterPage = function(){
//		尝试曲本地读取测评完的成绩
		try{
			console.log(window.sheetRec);
			var sheetRec = window.sheetRec,
				resStr = '',
				tar;
			
			window.formSheetRes[testType] = {};
			var jlen = sheetRec.score.length;
			if(jlen<1){ return false; }
			for(var j = 0; j < jlen; j++){
				if(window.sheetTypeDict[sheetRec.type[j]]){
					resStr += '<p>'+window.sheetTypeDict[sheetRec.type[j]]+'： '+sheetRec.score[j]+'</p>';
					window.formSheetRes[testType][sheetRec.type[j]] = sheetRec.score[j];
				}
			}
			
			for(var i =0, len = sheetRec.type.length; i < len; i++){
				tar = $('.zplb_item .zplb_btn[data-type='+sheetRec.type[i]+']').parents('.zplb_item');
				tar.addClass('finished');
			}
			$('.access-result', tar).html(resStr);
			$('.b-assess-oneA[data-type='+testType+']').addClass('finished');
			console.log(window.formSheetRes);
		}catch(e){
			
		}
	}
	
	Model.prototype.goTest = function(evt){
		var target = $(evt.currentTarget), //获取事件目标对象
		type = target.attr('data-type');
		testType = type;
		var params = {kind: parseInt(type)};
		url = "$UI/OTO/pages/userInfo/assess_con.w";
		justep.Shell.showPage(url,params);
	};
	
	Model.prototype.modeLoad = function(){
	}
	
	Model.prototype.modelParamsReceive = function(event){
		pgeType = event.params.from == 'modified'? true: false;
		if(pgeType){
//			去上一页获取用户量表数据;
			var curUser = Server.getCurUser();
			curUser.answer = {
					4: {
						4: 44,
						11: 76
					}
			};
			console.log(curUser.answer);
			
//			解析数据
			window.formSheetRes = curUser.answer;
			var tar,
				resStr = '';
			for(var i in curUser.answer){
				console.log(curUser.answer[i]);
				tar = $('.zplb_item .zplb_btn[data-type='+i+']').parents('.zplb_item');
				tar.addClass('finished');
				for(var j in curUser.answer[i]){
					resStr += '<p>'+window.sheetTypeDict[i]+'： '+curUser.answer[i][j]+'</p>';
				}
				$('.access-result', tar).html(resStr);
			}
		}
	}
	
	
	return Model;
});