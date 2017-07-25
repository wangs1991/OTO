<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window portal-main" component="$UI/system/components/justep/window/window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:350px;top:66px;"
    onLoad="modelLoad">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data1" confirmRefresh="false"/>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
        xid="titleBar1"> 
        <div class="x-titlebar-left" xid="left1" bind-click="goBack"> 
          <i class="webapp ic-back"/> 
        </div>  
        <div class="x-titlebar-title" xid="title1"><![CDATA[nininininininininininini----wushijie]]></div>  
        <div class="x-titlebar-right reverse" xid="right1"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1" style="bottom: 0px; height: 100%; background-size: cover; background-image: url(http://localhost:42303/x5/UI2/v_/OTO/pages/none);"
      _xid="C79D82AEB1900001F9E5123057971270"> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="新建用户" xid="button1" url="./userInfo/newsInfo.w" bind-click="newsUserClick">
   <i xid="i2"></i>
   <span xid="span3">新建用户</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="用户信息" xid="button2" url="./userInfo/newsInfo.w" bind-click="userInfoClick">
   <i xid="i1"></i>
   <span xid="span1">用户信息</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="修改密码" xid="button3" url="./userInfo/newsInfo.w" bind-click="modifyPasswordClick">
   <i xid="i3"></i>
   <span xid="span2">修改密码</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="找回密码" xid="button4" url="./userInfo/newsInfo.w" bind-click="backPasswordClick">
   <i xid="i4"></i>
   <span xid="span4">找回密码</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="自评量表选择" xid="button5" url="./userInfo/newsInfo.w" bind-click="assessSelectClick">
   <i xid="i5"></i>
   <span xid="span5">自评量表选择</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="设置" xid="button6" url="./userInfo/newsInfo.w" bind-click="setUpClick">
   <i xid="i6"></i>
   <span xid="span6">设置</span></a></div> 
  </div> 
</div>
