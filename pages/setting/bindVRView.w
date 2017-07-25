<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onunLoad="modelUnLoad"
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
            class="x-smartcontainer" xid="smartContainer1"/>  
          <div class="section-card content-detail input-card"> 
            <div class="sub-title tac">输入头盔序列号绑定头盔</div>  
            <div class="mgt-20"> 
              <div component="$UI/system/components/justep/labelEdit/labelEdit"
                class="x-label-edit x-label30" xid="labelEdit1"> 
                <label class="x-label" xid="label1">头盔序列号</label>  
                <div class="x-edit" xid="div1"> 
                  <input component="$UI/system/components/justep/input/input"
                    class="form-control" xid="deviceInput"/> 
                </div> 
              </div>  
              <div class="mgt-20"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default button block" label="绑定" xid="bindButton" onClick="bindButtonClick"> 
                  <i xid="i1"/>  
                  <span xid="span1"/> 
                </a> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-bottom" xid="bottom2" height="0"/> 
      </div> 
    </div> 
  </div> 
</div>
