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
	window.skinArraylist=[];
	window.skinTimeList = [];
	
	window.skinTotalArraylist=[];
	window.skinTotalTimeList = [];
	
	window.ip = 'test.adai-tech.com';
	window.device = "all";
	window.myChartClock;  // 图表
	window.courseStart;	  // 课程开始时间点
	window.courseEnd;	  // 课程结束时间点
	
	window.options = {
	    tooltip : {
            trigger: 'axis'
        },
        legend: {
        	show: false,
            data:[]
        },
        toolbox: {
            show : false
        },
        calculable : true,
        xAxis : [
            {
                type : 'time'
            }
        ],
        yAxis : [
            {
                type : 'value',
                min: 0,
                max: 3
            }
        ],
        series : [
            {
                name:'电波',
                type:'line',
                data: [],
                symbol:'none',  //这句就是去掉点的  
                smooth: false  //这句就是让曲线变平滑的 
            }
        ]
	};		   // 图标配置
	
	window.updateEchart = null;
	
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

	Model.prototype.modelLoad = function(event) {
		//开始得到皮肤电信息
		if (window.Skin != null && window.Skin != undefined && window.Skin.startRecord != null && window.Skin.startRecord != undefined) {
			window.Skin.startRecord();
		}
		
		setInterval(function() {
//			if (window.Skin != null && window.Skin != undefined && window.Skin.getSkinValue != null && window.Skin.getSkinValue != undefined) {
//				console.log(window.Skin);
//				window.Skin.getSkinValue(function(data){
//					justep.Util.hint("skin:" + data.skin, {"position":"bottom"});
//					window.skinValue = data.skin;	
//					if(window.skinFeelStart == true){
//						window.skinArraylist.push(window.skinValue);

						window.skinTotalArraylist.push(Math.random()+1); // 这句话是模拟数据
						window.skinTotalTimeList.push(+new Date());	// 要保留，图标的横坐标【时间点】
						
						window.skinArraylist.push(Math.random()+1); // 这句话是模拟数据
						window.skinTimeList.push(+new Date());	// 要保留，图标的横坐标【时间点】
						window.updateEchart && window.updateEchart(); // 触发图标更新
//					}else{
//						window.skinArraylist=[];
//					}
//				});
//			}

			//防止数组内存溢出
			if (window.skinTotalArraylist.length > 1800) {
				window.skinTotalArraylist.shift();
			}
			if (window.skinTotalTimeList.length > 1800) {
				window.skinTotalTimeList.shift();
			}
			
			var oneMin = 120;
			if (window.skinArraylist.length > oneMin) {
				window.skinArraylist.shift();
			}
			if (window.skinTimeList.length > oneMin) {
				window.skinTimeList.shift();
			}
		}, 500);
		
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