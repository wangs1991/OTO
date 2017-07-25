<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onunLoad="modelUnLoad"
    onLoad="modelLoad" style="height:auto;top:2px;left:488px;"></div>  
  <div class="x-panel-content tb-trans" xid="content-main" _xid="C78FAA2F9CA000018BB5F64C1B902F90"
    style="top: 0px; bottom: 0px;"> 
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
      xid="titleBar1"> 
      <div class="x-titlebar-left" xid="left1" bind-click="goBack"> 
        <i class="webapp ic-back"/> 
      </div>  
      <div class="x-titlebar-title" xid="title1">产品使用流程视频</div>  
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
            <div class="section-card">
            	<!-- <video src="http://app-wh.oss-cn-qingdao.aliyuncs.com/video/movie.ogg" controls="controls" preload="true" autoplay="true"></video> -->
            	<video id="player"  class="player" controls="controls"  preload="auto" loop="loop" autoplay="true"
  					src="http://app-wh.oss-cn-qingdao.aliyuncs.com/video/movie.ogg" type='video/ogg'>
  				</video>
            </div>
            <div class="section-card mgt-10 content-detail">
            	<div class="main-title">VR心理学操作视频演示</div>
            	<div class="sub-title">通过此演示视频，让您更直观的了解整个操作</div>
            </div>	
        </div>  
        <div class="x-panel-bottom" xid="bottom2" height="0"/>
      </div>
    </div>
  </div>
</div>
