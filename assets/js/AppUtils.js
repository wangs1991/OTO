var $ = require("jquery");
var justep = require("$UI/system/lib/justep");

var AppUtils = function() {};

/**
 * 得到服务器url地址
 * @param url
 * @returns {String}
 */
AppUtils.getUrl = function(url){
	return "http://"+window.ip+":8801/" + url;
};

/**
 * 创建iframe
 */
AppUtils.createIFrame = function(srcElementId, url, id, xid) {
    var wrapper = $(srcElementId);
    
    if(navigator.userAgent.match(/(iPod|iPhone|iPad)/)) {
        wrapper.addClass('ios');
        var scrolling = 'no';
    } else {
        var scrolling = 'yes';
    }
    
    $('<iframe>', {
        src: url,
        id:  id,
        xid : xid,
        frameborder: 0,
        scrolling: scrolling
    }).appendTo(wrapper);
};

/**
 * 向服务器发送请求
 * @param url
 * @param params
 * @param fun
 */
AppUtils.getAction = function(url, params, fun, async) {
	if (async != undefined && async != null) {
		$.ajaxSettings.async = async;
	} else {
		$.ajaxSettings.async = false;
	}
	
	$.getJSON(url, params, function(data) {
		fun(data);
	});
};

/**
 * 向服务器发送post请求
 * @param url
 * @param params
 * @param fun
 */
AppUtils.postAction = function(url, params, fun, async) {
	if (async != undefined && async != null) {
		$.ajaxSettings.async = async;
	} else {
		$.ajaxSettings.async = false;
	}
	
	$.support.cors = true;
	
	$.ajax({
	    type: "POST",
	    url: url,
	    dataType: "json",
	    crossDomain:true,
        contentType:false,
        processData:false,
        data:params,
	    success: fun
	});
};

/**
 * 检查session是否合法
 * @returns {Boolean}
 */
AppUtils.checkSession = function() {
	//得到存储在本地的用户数据
	window.uid = localStorage.getItem("uid");
	window.session = localStorage.getItem("session");
	
	var url = AppUtils.getUrl("app/order?action=check_session");
	var params = {uid:window.uid, session:window.session};
	
	var isSuccess = false;
	
	$.ajaxSettings.async = false;
	$.getJSON(url, params, function(data) {
		if (data.success == "true") {
			isSuccess = true;
		}
	});
	
	return isSuccess;
};

/**
 * 加载文件
 * @param url
 * @param objData
 * @param operation
 */
AppUtils.loadDataFromFile = function(url,objData,operation) {
	if (operation) { objData.clear();}
	$.ajaxSettings.async = false;
	$.getJSON(url, function(data) {
		objData.loadData(data);
	});
};

AppUtils.getDate = function(datestr) {
	var temp = datestr.split("-");
	var date = new Date(temp[0],temp[1],temp[2]);
	return date;
};

AppUtils.getPassDaysDate = function(startDate, AddDayCount) {   
	var dd = new Date(startDate);  
	dd.setDate(dd.getDate()+AddDayCount);//获取AddDayCount天后的日期  
	var y = dd.getFullYear();   
	var m = (dd.getMonth()+1)<10?"0"+(dd.getMonth()+1):(dd.getMonth()+1);//获取当前月份的日期，不足10补0  
	var d = dd.getDate()<10?"0"+dd.getDate():dd.getDate();//获取当前几号，不足10补0  
	return y+"-"+m+"-"+d;   
};

AppUtils.getWeekByDay = function (dayValue){
	var day = new Date(Date.parse(dayValue.replace(/-/g, '/'))); //将日期值格式化 
	var today = new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六"); //创建星期数组
	return today[day.getDay()];  //返一个星期中的某一天，其中0为星期日 
};

AppUtils.getNowDate = function() {
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate;
    return currentdate;
};

AppUtils.getNowDateTime = function() {
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
            + " " + date.getHours() + seperator2 + date.getMinutes()
            + seperator2 + date.getSeconds();
    return currentdate;
};

/**
 * 比较两个字符串日期的大小，true:第一个大
 */
AppUtils.compareDate = function(date1, date2){
    var oDate1 = new Date(date1);
    var oDate2 = new Date(date2);
    
    //第一个大
    if(oDate1.getTime() > oDate2.getTime()){
    	return true;
    	
    //第二个大
    } else {
       return false;
    }
};
