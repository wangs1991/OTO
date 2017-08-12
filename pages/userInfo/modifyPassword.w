<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="标题"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn" bind-click="backBtnClick"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title"><![CDATA[修改密码]]></div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1">
  <div xid="div1" style="text-align:center;padding-top:20px;"><div xid="div2" class="clearfix b-modify-one" bind-text="密码"><input type="text" value="" xid="input1" class="pull-left" bind-value="旧密码" placeHolder="旧密码"></input>
  </div>
  <div xid="div3" class="clearfix b-modify-one">
   <input type="text" value="" xid="input2" class="pull-left" placeHolder="新密码"></input></div>
  <div xid="div5" class="clearfix b-modify-one">
   <input type="text" value="" xid="input4" class="pull-left" placeHolder="确认新密码"></input></div></div>
  <div xid="div14" class="clearfix b-user-thr">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton" label="确定" xid="button1" bind-click="beginStudy">
    <i xid="i2"></i>
    <span xid="span14">确定</span></a> </div></div>
  </div> 
</div>