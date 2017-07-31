define(function(require) {
	require("css!../assets/style/base").load();
	
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var Server = require('../assets/server');
	
	require("cordova!com.phonegap.plugins.skin");
	
	window.putView = putView;
	window.goBack = goBack;
	window.uid;
	window.session;
	window.sessionOK;
	window.mainView;
	window.isLogin = false;
	window.skinValue = 0;		//皮肤电设备信息
	window.skinFeelStart = false;
	window.skinArraylist={};
	window.ip = 'test.adai-tech.com';
	window.device = "all";
	
	var Model = function() {
		this.callParent();
		window.mainView = this;
		
		
		//创建Shell实例
		window.shell=new ShellImpl(this, {
			contentsXid : 'pages', //ShellImpl关联的contents, 即page的显示区域
			pageMappings: {
				main: {
					url: require.toUrl("./list/main.w")
				},
				login: {
					url: require.toUrl("./login/main.w")
				},
				
				p2: {
					url: require.toUrl("./interactive/page2.w")
				},
				rules: {
					url: require.toUrl("./rules/index.w")
				},
				newsUser:{
					url : require.toUrl('./userInfo/newsUser.w')
				},
			}
		});
	};
	
	function putView() {
		
	}
	
	function goBack() {
		justep.Shell.closePage();
	}
	
	Model.prototype.loginSuccess = function(){
		justep.Shell.showPage("main");
	}
	
	Model.prototype.logout = function(){
		window.localStorage.removeItem('session');
		window.localStorage.removeItem('uid');
		justep.Shell.showPage("login");
	}
	
	//打开：justep.Shell.showPage(“main”);
	//关闭：this.close();
	//返回上一页：justep.Shell.closePage();
	Model.prototype.modelLoad = function(event) {
		//开始得到皮肤电信息
		if (window.Skin != null && window.Skin != undefined && window.Skin.startRecord != null && window.Skin.startRecord != undefined) {
			window.Skin.startRecord();
		}
		
		setInterval(function() {
			console.log(window.Skin);
			if (window.Skin != null && window.Skin != undefined && window.Skin.getSkinValue != null && window.Skin.getSkinValue != undefined) {
				console.log(window.Skin);
				window.Skin.getSkinValue(function(data){
					justep.Util.hint("skin:" + data.skin, {"position":"bottom"});
					window.skinValue = data.skin;	
					if(window.skinFeelStart == true){
						window.skinArraylist.push(window.skinValue);
					}else{
						window.skinArraylist={};
					}
				});
			}
		}, 200);
		
		//判断是否登录
		//设置显示页面
		window.isLogin = Server.checkState().then(function(){
			justep.Shell.showPage("main");
		}, function(){
			justep.Shell.showPage("login");
		});
	};
	
	Model.prototype.modelUnLoad = function(event){
		if (window.Skin != null && window.Skin != undefined && window.Skin.stopRecord != null && window.Skin.stopRecord != undefined) {
			window.Skin.stopRecord();
		}
	};
	
	Model.prototype.loginSuccess = function(){
		justep.Shell.showPage("main");
	}
	
	return Model;
});