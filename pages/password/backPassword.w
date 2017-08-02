<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="找回密码"
        class="x-titlebar  app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[找回密码]]></div>  
        <div class="x-titlebar-right reverse"></div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div xid="div1" style="text-align:center; padding: 50px 0;"> 
        <h3 class="main-title" id="msgCtner">新密码已发送，请注意查收</h3>
      </div>  
      <div xid="div6" class="b-back-btn clearfix b-user-thr"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
          label="确定" xid="button1" bind-click="confirm"> 
          <i xid="i1"/>  
          <span xid="span5">确定</span>
        </a> 
      </div>
    </div> 
  </div> 
</div>
