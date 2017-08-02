define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Server = require('../../assets/server');
	var user = null;
	var vid = 0;
	var name = '';
	

	
	var Model = function(){
		this.callParent();
		var that = this;
//		绑定数组进去
		this.userList = justep.Bind.observableArray([]); // 列表数据
		this.selectState = false; // 搜索状态
		this.gotDetail = function(){
			user = this;
			that.goDetail()
		}
	};
	
//	去设置
	Model.prototype.goToSetting = function(){
		url = "$UI/OTO/pages/setting/settingHomeView.w";
		justep.Shell.showPage(url);
	}
//	去详情页面
	Model.prototype.goDetail = function(evt){
		Server.setCurUser(user);
		console.log(user);
		url = "$UI/OTO/pages/trainPractice/visitorDetail.w";
		justep.Shell.showPage(url);
	}
//	搜索动作
	Model.prototype.goSearch = function(e){
//		读取到数据
		name = $.trim(this.comp("userIpt").val());
		if(name.length > 0){
			this.selectState = true;
			$('.visitor-add').addClass('rotate');
			console.log(111111111);
		}else{
			this.selectState = false;
			$('.visitor-add').removeClass('rotate');
		}
		if(e.keyCode == 13){
//			回车搜索
			if(name.length > 0){				
				this.userList.set([]);
				vid = 0;
				this.comp('userList')._pullUp();
			}
		}
	}
	
//	进入页面刷新数据
	Model.prototype.enterPage = function(){
		window.location.reload();
	};
	
	Model.prototype.modelLoad = function(event){
		
	};
//	列表数据恢复方法
	Model.prototype.resetData = function(){
		vid = 0;
		name = '';
		this.selectState = false;
		$('.visitor-add').removeClass('rotate');
		this.comp("userIpt").val('')
		this.userList.splice(0, this.userList.length);
		this.comp('userList')._pullUp();
	};
//	列表数据加载方法
	Model.prototype.loadList = function(){
		var that = this,
			date = new Date(),
			cy = date.getFullYear();
//		获取数据，并格式化
		Server.getVisitors({
			vid: vid,
			eventKind: 32,
			name: name
		}).then(function(data){
			data.dataList.forEach(function(n, i){
//				格式化数据
				if(n.sex == 0){
					n.sexTxt= '女';
				}else{
					n.sexTxt = '男';
				}
//				年龄
				n.age = cy - n.birthday.split('-')[0];
				that.userList.push(n);
			});
			var len = data.dataList.length;
			if(len > 0){
				vid = data.dataList[len-1].id;
			}	
		}, function(){});
	}
//	新建用户 && 取消搜索
	Model.prototype.addVisitor = function(){
		console.log(this.selectState);
		if(this.selectState){  // 取消搜索
			this.resetData();
		}else{	// 添加用户
			url = "$UI/OTO/pages/userInfo/newsUser.w";
			justep.Shell.showPage(url);
		}		
	}
	
	
	
	Model.prototype.goBack = function(event){
		justep.Shell.showLeft();
	};
	
	Model.prototype.userInfoClick = function(event){
		url = "$UI/OTO/pages/userInfo/userInfo.w";
		justep.Shell.showPage(url);
	};
	Model.prototype.modifyPasswordClick = function(event){
		url = "$UI/OTO/pages/userInfo/modifyPassword.w";
		justep.Shell.showPage(url);
	};
	
	Model.prototype.assessSelectClick = function(event){
		url = "$UI/OTO/pages/userInfo/assessSelect.w";
		justep.Shell.showPage(url);
	};
	

	
	Model.prototype.setUpClick = function(event){
		url = "$UI/OTO/pages/userInfo/setUp.w";
		justep.Shell.showPage(url);
	};
	

	
	Model.prototype.relaxFeedbackClick = function(event){
		url = "$UI/OTO/pages/userInfo/relaxFeedback.w";
		justep.Shell.showPage(url);
	};
	

	
	Model.prototype.psyShowClick = function(event){
		url = "$UI/OTO/pages/userInfo/psyShow.w";
		justep.Shell.showPage(url);
	};
	

	
	return Model;
});