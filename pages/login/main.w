<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="height:auto;top:351px;left:451px;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card login_panel"
    xid="panel2"> 
    <div class="x-panel-content x-cards container login-bg" xid="content1"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents2"> 
        <div class="x-contents-content login_header" xid="content3">
        	<img src="$UI/OTO/assets/img/login_logo.jpg" alt="" xid="image1" class="image-wall tb-img"/>
        </div>
      </div>
      <div class="loginer"> 
        <div xid="div1" class="list-group login-ctner"> 
          <div class="list-group-item"> 
            <div class="input-group" xid="div7"> 
              <span class="input-group-addon input-icon phone" xid="span2"> 
                <i class="linear linear-phonehandset"/> 
              </span>
              <input component="$UI/system/components/justep/input/input" class="form-control x-inputText tb-range-no-line"
                xid="nameInput" placeHolder="请输入您的手机号"/>  
              <span class="input-group-addon button pull-right" xid="getcodeSpan"
                bind-click="getcodeSpanClick"><![CDATA[获取验证码]]></span> 
            </div> 
          </div>  
          <div class="list-group-item" xid="div6"> 
            <div class="input-group" xid="div8"> 
              <span class="input-group-addon input-icon code" xid="span3"> 
                <i class="linear linear-dinner" xid="i3"/> 
              </span>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-inputText tb-range-no-line"
                xid="passwordInput" placeHolder="获得的验证码"/> 
            </div> 
          </div> 
        </div>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
          style="margin-top: 50px;width:100%;" label="确认" xid="loginBtn" onClick="loginBtnClick"> 
          <i xid="i4"/>  
          <span xid="span4">确认</span> 
        </a> 
      </div> 
    </div> 
  </div> 
</div>
