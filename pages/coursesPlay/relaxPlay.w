<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:241px;left:673px;"
    onLoad="modelLoad" onParamsReceive="modelParamsReceive"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" bind-attr="{title: title}"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            icon="icon-chevron-left" xid="backBtn" bind-click="goBack"> 
            <i class="icon-chevron-left"/>  
            <span>返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" bind-text="title"/>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content2"> 
      <div component="$UI/system/components/justep/smartContainer/smartContainer"
        class="x-smartcontainer" xid="smartContainer1"> 
        <div class="ratio-section"> 
          <div class="inner-content">
          	<video src="http://www.w3school.com.cn/i/movie.ogg"></video>
          </div> 
        </div>  
        <div class="ratio-section main_padding"> 
          <div class="inner-content main_padding">asdfa</div> 
        </div> 
      </div>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default button block"
        label="button" xid="button1" bind-click="goToSave"> 
        <i xid="i1"/>
        <span xid="span1" bind-text="button"></span>
      </a>
    </div> 
  </div> 
</div>
