<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model"
    onLoad="modelLoad" style="height:auto;top:2px;left:488px;"/>  
  <div class="x-panel-content tb-trans" xid="content-main" _xid="C78FAA2F9CA000018BB5F64C1B902F90"
    style="top: 0px; bottom: 0px;"> 
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
      xid="titleBar1"> 
      <div class="x-titlebar-left" xid="left1" bind-click="goBack"> 
        <i class="webapp ic-back"/> 
      </div>  
      <div class="x-titlebar-title" xid="title1">绑定头盔</div>  
      <div class="x-titlebar-right reverse" xid="right1"/> 
    </div>  
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
      active="0" xid="contents1"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2"/>  
        <div class="x-panel-content" xid="content3" style="bottom:0px;"> 
          <div component="$UI/system/components/justep/smartContainer/smartContainer"
            class="x-smartcontainer" xid="smartContainer1"><div class="section-card content-detail input-card"> 
            <!-- <div class="sub-title tac">输入头盔序列号绑定头盔</div>   -->  
            <div class="mgt-20"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="deviceIdGroup"> 
                <label class="x-label" xid="label1">设备编码</label>  
                <div class="x-edit" xid="div1"> 
                  <input component="$UI/system/components/justep/input/input" class="form-control" xid="deviceId" /> 
                </div> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="devicePwdGroup"> 
                <label class="x-label" xid="label2">绑定密码</label>  
                <div class="x-edit" xid="div2"> 
                  <input component="$UI/system/components/justep/input/input" class="form-control" xid="devicePwd" /> 
                </div> 
              </div>  
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label31" xid="findPwd">?找回密码</div>  
              <div class="mgt-20"> 
                <a component="$UI/system/components/justep/button/button" class="btn btn-default button block" label="绑定设备" xid="bindButton" bind-click="bindVR"> 
                  <i xid="i1" />  
                  <span xid="span1" /> 
                </a> 
              </div>
              <div class="flex-layout mgt-20">
              	<a component="$UI/system/components/justep/button/button" class="btn btn-default button block mgr-20" label="解除绑定" xid="unBindBtn" onClick="unbindVR"> 
                    <i xid="i1" />  
                    <span xid="span1" />
                  </a>
                  
                  <a component="$UI/system/components/justep/button/button" class="btn btn-default button block" label="修改密码" xid="pwdBtn" onClick="bindButtonClick"> 
                    <i xid="i1" />  
                    <span xid="span1" /> 
                  </a> 
              </div>
             
            </div> 
          </div></div>  
           
        </div>  
        </div> 
    </div> 
  </div> 
</div>
