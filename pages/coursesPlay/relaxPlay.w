<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:241px;left:673px;"
    onLoad="modelLoad" onParamsReceive="modelParamsReceive" onunLoad="modelUnLoad" onActive="modelLoad" onInactive="modelUnLoad"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="放松训练"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            icon="icon-chevron-left" xid="backBtn" bind-click="goBack"> 
            <i class="icon-chevron-left"/>  
            <span>返回</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title">放松训练</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="ratio-section" style="top: 48px;"> 
      <div class="inner-content"> 
        <img src="$UI/xlzl/img/VR_BG.jpg" alt="" xid="liveImage" bind-click="openPageClick"
          class="tb-img1" pagename="./detail.w" style="background-color:transparent;width:100%;height:200px;"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content2" style="top: 235px;"> 
      <div component="$UI/system/components/justep/smartContainer/smartContainer"
        class="x-smartcontainer" xid="smartContainer1" style="height: 100%;"> 
        <div class="main_padding"> 
          <div class="inner-content main_padding"> 
            <div xid="div1" style="height:300px;" class="center-block"> 
              <div xid="skinInfoDiv" align="left" style="position:relative;left:5px;top:-5px;height:30px;"> 
                <span xid="skinInfoSpan" class="text-black" bind-text="skinInfo"/> 
              </div>  
              <div xid="nullAlertDiv2" style="display:none;position:relative;height:0px;width:100%;"
                class="text-alert-null">没有数据信息，请正确佩戴皮肤电心率设备</div>  
              <div xid="wave2" id="echartRelax" style="width:100%;height:360px;position: static;"
                class="main"/>
            </div> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom btn-card c3ieMNr" xid="bottom1" style="height: 70px; background-color: rgb(255, 255, 255);"
      component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}"
      data-config="{&quot;height&quot;:70}" __cid="c3ieMNr" _xid="C7A06705EEA000019134970023F0CC90"
      id="C7A06705E7A00001F9E82A50172FB580_bottom1"> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-default button block"
        label="button" xid="button1" bind-click="goToNext"> 
        <i xid="i1"/>  
        <span xid="span1" bind-text="button"/> 
      </a> 
    </div> 
  </div> 
</div>
