define(function(require) {
	require("css!../assets/style/base").load();
	
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var Server = require('../assets/server');
	
	require("cordova!com.phonegap.plugins.skin");
//	全局配置
//	版本号
	window.version = '1.0.1';
//	头像接口
	window.face = 'http://pic.adai-tech.com/img/';
//	图片流地址
	window.picture = 'http://push.adai-tech.com';
//	接口地址
	window.api = 'http://test.adai-tech.com:8801';   // 192.168.1.127  

//	全局变量
	window.putView = putView;
	window.goBack = goBack;
	window.uid;
	window.session;
	window.sessionOK;
	window.mainView;
	window.isLogin = false;
	window.skinValue = 0;		//皮肤电设备信息
	window.skinArraylist=[];
	window.skinTimeList = [];
	window.skinController = {};
	window.device = "all";
	window.myChartClock;  // 图表
	window.courseStart;	  // 课程开始时间点
	window.courseEnd;	  // 课程结束时间点
	window.sheetRec = {}; // 自评表得分缓存
//	自评量表对应关系
	window.sheetTypeDict = {
			11: '社交焦虑自评',
			4: '面试焦虑自评',
			6: '公众演讲自评',
			5: '会议发言自评',
			8: '恐高自评',
			7: '考试焦虑自评'
	};
//	图标配置
	window.options = {
	    tooltip : {
            show: false
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
                type : 'time',
                axisLabel: {
                	show: true,
                	rotate: 45
                }
            }
        ],
        yAxis : [
            {
                type : 'value'
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
				rules: {
					url: require.toUrl("./rules/index.w")
				},
				bindVR:{
					url : require.toUrl('./rules/bindVRView.w')
				}				
			}
		});
//		justep.Shell.setIsSinglePage(true);
	};
	
	function putView() {
		
	}
	
	function goBack() {
		window.history.back(-1);
	}
	
	Model.prototype.logout = function(){
		window.localStorage.removeItem('session');
		window.localStorage.removeItem('uid');
		justep.Shell.showPage("login");
	}

	Model.prototype.modelLoad = function(event) {
		//判断是否登录
		//设置显示页面
		var that = this;
		window.isLogin = Server.checkState().then(function(){
			that.checkRules();
		}, function(){
			justep.Shell.showPage("login");
		});
	};
	
	window.skinController = {
		idx: 0,
		timer: null,
		startSkinGather: function() {
			//开始得到皮肤电信息
			if (window.Skin != null && window.Skin != undefined && window.Skin.startRecord != null && window.Skin.startRecord != undefined) {
				window.Skin.startRecord();
//				每次开始重置数据数组
				window.skinArraylist = [];
				window.skinTimeList = [];
				window.skinController.idx = 0;
				window.skinController.timer = setInterval(function() {
					if (window.Skin != null && window.Skin != undefined && window.Skin.getSkinValue != null && window.Skin.getSkinValue != undefined) {
						window.Skin.getSkinValue(function(data){
							window.skinValue = data.skin;
							//justep.Util.hint("skin:" + data.skin, {"position":"bottom"});
							if(window.skinFeelStart == true){
								window.skinArraylist.push(window.skinValue);
								window.skinTimeList.push(+new Date());	// 要保留，图标的横坐标【时间点】
								if(window.skinController.idx<=0){
									window.updateEchart && window.updateEchart(true); // 触发图标更新
								}else{
									window.updateEchart && window.updateEchart(); // 触发图标更新
								}
								window.skinController.idx++;
							}else{
								window.skinArraylist=[];
							}
						});
					}
		
					//防止数组内存溢出
					var oneMin = 500;
					if (window.skinArraylist.length > oneMin) {
						window.skinArraylist.shift();
					}
					if (window.skinTimeList.length > oneMin) {
						window.skinTimeList.shift();
					}
				}, 500);
			}
			
			//开始得到皮肤电信息
			/*console.log('开始获取数据');
			window.skinArraylist = [];
			window.skinTimeList = [];
			window.skinController.idx = 0;
			window.skinController.timer = setInterval(function() {
				
						if(window.skinFeelStart == true){
							var data = Math.random()*9+1;
							window.skinArraylist.push(data); // 这句话是模拟数据
							window.skinValue = data;
							window.skinTimeList.push(+new Date());	// 要保留，图标的横坐标【时间点】
							justep.Util.hint("skin:" + data, {"position":"bottom"});
							
							if(window.skinController.idx<=0){
								window.updateEchart && window.updateEchart(true); // 触发图标更新
							}else{
								window.updateEchart && window.updateEchart(); // 触发图标更新
							}
							window.skinController.idx++;
						}else{
							window.skinArraylist=[];
						}
	
				//防止数组内存溢出
				var oneMin = 500;
				if (window.skinArraylist.length > oneMin) {
					window.skinArraylist.shift();
				}
				if (window.skinTimeList.length > oneMin) {
					window.skinTimeList.shift();
				}
			}, 500);*/
		},
		stopSkinGather: function(){
			if (window.Skin != null && window.Skin != undefined && window.Skin.stopRecord != null && window.Skin.stopRecord != undefined) {
				window.Skin.stopRecord();
				clearInterval(window.skinController.timer);
				return window.skinTimeList;
			}
		}
	};
	
	Model.prototype.loginSuccess = function(){
		this.checkRules();
	}
	
//	检查头盔
	Model.prototype.checkBindVR = function(){
		//		验证是否有设备绑定
		var that = this;
		Server.checkHat({
			eventKind: 33
		}).then(function(data){
//			绑定成功
			justep.Shell.showPage('main');
		}, function(data){
//			绑定失败
			if(data.ret && data.ret.retCode == 2){
				justep.Shell.showPage("bindVR");
			}else{
				justep.Shell.showPage('main');
			}
			return false;
		});
//		justep.Shell.showPage('main');  // 一定要注释掉
	}
//	检查用户合约
	Model.prototype.checkRules = function(){
		//		检验是否同意规章制度
		var isagreed = Server.ruleState();
		if(isagreed <= 0){
			justep.Shell.showPage('rules');
			return false;
		}else{
			this.checkBindVR();
		}
	}
	
	
	return Model;
});