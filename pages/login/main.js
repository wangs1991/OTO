define(function(require) {
	
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var model = null;
	var getCodeClick = false;
	var timer = null;
	var delayIndex = 0;
	
	var Model = function() {
		this.callParent();
		model = this;
	};
	
	//图片路径转换
	Model.prototype.toUrl = function(url){
		return url ? require.toUrl(url) : "";
	};
	
	Model.prototype.modelLoad = function(){
		window.loginView = this;
//		this.welcome();
	};
	
	Model.prototype.getcodeSpanClick = function(event){
		model = this;
		
		var phone = this.comp("nameInput").val();
		if (phone.length != 11) {
			justep.Util.hint("号码格式错误", {"position":"bottom"});
			return;
		}
		
		if (getCodeClick == true) {
			return;
		}
		getCodeClick = true;
		
		delayIndex = 0;
		startTimer();
		
		Server.getCode({
			action: 'get_phone_code',
			phone: phone
		}).then(function(data){
			console.log(data);
			if(data.success != 'true'){
				justep.Util.hint("服务错误稍后重试");
			}
		});
		
	};
	
	Model.prototype.welcome = function(){
		/*判断是不是第一次进入*/
		var visited = localStorage.getItem('visited');
		if(visited == undefined || !visited){
			var url = "$UI/xlzl/v2/welcome/welcomeView.w";
			justep.Shell.showPage(url);
			localStorage.setItem('visited', true);
		}
		
		stopTimer();
		this.comp("nameInput").val("");
		this.comp("passwordInput").val("");
	}
	
	//开始计时器
	function startTimer() {
		if (timer != null) return;
		
		timer = setInterval(function() {
			delayIndex++;
			
			var max = 60;
			if (max <= delayIndex) {
				stopTimer();
				return;
			}
			
			$(model.getElementByXid('getcodeSpan')).text("剩余" + (max - delayIndex) + "秒");
		}, 1000);
	}
	
	//停止计时器
	function stopTimer() {
		//alert("stop timer");
		if (timer != null && timer != undefined) {
			timer = window.clearInterval(timer);
		}
		
		$(model.getElementByXid('getcodeSpan')).text("获取验证码");
		delayIndex = 0;
		getCodeClick = false;
	}
	
	
	//登录按钮按下
	Model.prototype.loginBtnClick = function(event){
		var phone = this.comp("nameInput").val();
		if (phone.length != 11) {
			justep.Util.hint("请填写正确的号码", {"position":"bottom"});
			return;
		}
		
		var code = this.comp("passwordInput").val();
		if (code.length < 4) {
			justep.Util.hint("请填写正确的验证码", {"position":"bottom"});
			return;
		}
		
		if (getCodeClick == false) {
			justep.Util.hint("请点击获取验证码", {"position":"bottom"});
			return;
		}
		
		Server.getCode({
			action: 'login',
			phone: phone,
			code: code
		}).then(function(data){
			if(data.success == 'true'){
				window.uid = data.uid;
				window.session = data.session;
				window.sessionOK = true;
				//存储个人信息到本地
				localStorage.setItem("uid",uid);
				localStorage.setItem("session",session);
				window.mainView.loginSuccess();
			}else{				
				justep.Util.hint("服务错误稍后重试");
			}
		});
	};
	
	return Model;
});