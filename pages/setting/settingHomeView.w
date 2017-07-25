<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
	<div component="$UI/system/components/justep/model/model" xid="model" onunLoad="modelUnLoad" onLoad="modelLoad" style="height:auto;top:2px;left:488px;"> 
	</div>  
  	<div class="x-panel-content tb-trans" xid="content-main" _xid="C78FAA2F9CA000018BB5F64C1B902F90" style="top: 0px; bottom: 0px;">
    		<div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner" xid="titleBar1">
			   <div class="x-titlebar-left" xid="left1" bind-click="goBack">
				<i class="webapp ic-back" style="display:none"></i>
			   </div>
			   <div class="x-titlebar-title" xid="title1">设置</div>
			   <div class="x-titlebar-right reverse" xid="right1"></div>
		  	</div>
			<div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2"></div>
   <div class="x-panel-content" xid="content3" style="bottom:0px;">
	   <ul component="$UI/system/components/justep/list/list" class="x-list x-list-template app-list" xid="list1">
	   		<li xid="li1" bind-click="selectView" data-type="helpVideo">
		   		<div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2">
   					<div class="col col-xs-1" xid="col4" style="height:100%;">
					   	<i class="webapp ic-video"></i>
					 </div>
					 <div class="col col-xs-9 text-panel" xid="col5">产品使用流程视频</div>
					 <div class="col col-xs-2" xid="col6">
					   	<i class="webapp ic-enter f-fr"></i>
					 </div>
				</div>
		   </li>
		   <li xid="li2" bind-click="selectView" data-type="bindVR">
		   		<div component="$UI/system/components/justep/row/row" class="row" xid="row3">
				   <div class="col col-xs-1" xid="col7">
				   		<i class="webapp ic-vr"></i>
				   </div>
				   <div class="col col-xs-9 text-panel" xid="col8">绑定头盔</div>
				   <div class="col col-xs-2" xid="col9">
				   		<i class="webapp ic-enter f-fr"></i>
				   </div>
				</div>
		   </li>
		   <li xid="li3" bind-click="selectView" data-type="loginOut">
		   		<div component="$UI/system/components/justep/row/row" class="row" xid="row4">
				   <div class="col col-xs-1" xid="col10">
				   		<i class="webapp ic-loginout"></i>
				   </div>
				   <div class="col col-xs-9 text-panel" xid="col11">注销账号</div>
				   <div class="col col-xs-2" xid="col12">
				   		<i class="webapp ic-enter f-fr"></i>
				   </div>
				</div>
		   </li>
		   <li xid="li4" bind-click="selectView" data-type="courseList">
		   		<div component="$UI/system/components/justep/row/row" class="row" xid="row5">
				   <div class="col col-xs-1" xid="col13">
				   		<i class="webapp ic-xinli"></i>
				   </div>
				   <div class="col col-xs-9 text-panel" xid="col14">了解更多心理问题</div>
				   <div class="col col-xs-2" xid="col15">
				   		<i class="webapp ic-enter f-fr"></i>
				   </div>
				</div>
		   </li>
		   <li xid="li5" bind-click="selectView" data-type="help">
		   		<div component="$UI/system/components/justep/row/row" class="row" xid="row6">
				   <div class="col col-xs-1" xid="col16">
				   		<i class="webapp ic-help"></i>
				   </div>
				   <div class="col col-xs-9 text-panel" xid="col17">帮助与反馈</div>
				   <div class="col col-xs-2" xid="col18">
				   		<i class="webapp ic-enter f-fr"></i>
				   </div>
				</div>
		   </li>
	   </ul>
   </div>
   <div class="x-panel-bottom" xid="bottom2" height="0"></div></div></div></div></div>
