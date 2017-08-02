<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="修改密码"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[修改密码]]></div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div xid="div1" style="text-align:center;padding-top:20px;"> 
        <div xid="div2" class="clearfix b-modify-one" style="margin-top:20px;display:inline-block;"> 
          <input component="$UI/system/components/justep/input/input" class="form-control pull-left" xid="oldPwd" 
          	placeHolder="旧密码" type="password"/>
        </div>  
        <div xid="div3" class="clearfix b-modify-one" style="margin-top:20px;display:inline-block;"> 
          <input component="$UI/system/components/justep/input/input" class="form-control pull-left" xid="newPwd" 
          placeHolder="新密码" type="password"/>
        </div>  
        <div xid="div5" class="clearfix b-modify-one" style="margin-top:20px;display:inline-block;"> 
          <input component="$UI/system/components/justep/input/input" class="form-control pull-left" xid="newPwdRe" 
          placeHolder="确认新密码" type="password"/>
        </div> 
      </div>  
      
      <div xid="div6" style="text-align:center;margin-top:35px;" class="clearfix b-user-thr"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
          label="确定" xid="button1" bind-click="uploadPwd"> 
          <i xid="i1"/>  
          <span xid="span5">确定</span> 
        </a> 
      </div> 
    </div> 
  </div> 
</div>
