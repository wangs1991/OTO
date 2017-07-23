<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    onModelConstruct="modelModelConstruct"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="windowPanel"> 
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents1"> 
        <!-- 心理问题面板 -->  
        <div class="x-contents-content" xid="mainContent"  style="background: #fff!important;"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer1" src="$UI/xlzl/v2/psychologyListView.w"/> 
        </div>  
        <!-- 课程面板 -->  
        <div class="x-contents-content" xid="courseContent"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="courseContainer" src="$UI/xlzl/v2/course/courseListView.w"
            autoLoad="true"/> 
        </div>  
        <div class="x-contents-content" xid="medicalContent"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer3" src="$UI/xlzl/controllerView.w"/> 
        </div>  
        <!-- 反馈记录面板 -->  
        <div class="x-contents-content" xid="reportContent"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer9" src="$UI/xlzl/v2/feedback/homeView.w"/> 
        </div>  
        <div class="x-contents-content" xid="settingContent"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer10" src="$UI/xlzl/v2/setting/settingHomeView.w"/> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1" height="55" style="z-index: 100;"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified app-son"
        tabbed="true" xid="btmButtonGroup"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          xid="mainButton" target="mainContent" label="心理问题" icon="webapp nav-xinli"> 
          <i xid="i1" class="webapp nav-xinli"/>  
          <span xid="span1">心理问题</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top active"
          xid="courseButton" target="courseContent" label="课程" icon="webapp nav-course"> 
          <i xid="i2" class="webapp nav-course"/>  
          <span xid="span2">课程</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          xid="reportButton" label="反馈记录" icon="webapp nav-record" bind-click="goToSpeech" target="reportContent"> 
          <i xid="i4" class="webapp nav-record"/>  
          <span xid="span4">反馈记录</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          label="设置" xid="settingButton" icon="webapp nav-setting" bind-click="goToSetting" target="settingContent"> 
          <i xid="i9" class="webapp nav-setting"/>  
          <span xid="span9">设置</span> 
        </a> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="loginPanel" style="display:none"> 
    <div class="x-panel-content" xid="content6"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents2"> 
        <div class="x-contents-content" xid="content7"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer5" src="$UI/xlzl/login.w"/> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
