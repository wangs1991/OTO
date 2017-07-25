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
      <div class="x-titlebar-title" xid="title1">帮助与反馈</div>  
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
          <div class="section-card mgt-10 content-detail"> 
            <div class="sub-title">请描述具体问题，并留下您的联系方式， 便于我们与您联系。</div>  
            <div class="mgt-10"> 
              <textarea component="$UI/system/components/justep/textarea/textarea"
                class="form-control" xid="textarea1" style="height:122px;" placeholder="请描述具体问题"/> 
            </div>  
            <div class="mgt-10"> 
              <input component="$UI/system/components/justep/input/input" class="form-control"
                xid="input1" placeholder="请输入联系方式"/> 
            </div>  
            <div class="mgt-10"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default button block"
                label="提交" xid="button1"> 
                <i xid="i1"/>  
                <span xid="span1"/> 
              </a> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-bottom" xid="bottom2" height="0"/> 
      </div> 
    </div> 
  </div> 
</div>
