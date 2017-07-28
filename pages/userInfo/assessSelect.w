<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="自评量表选择"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[自评量表选择]]></div>  
        <div class="x-titlebar-right reverse"></div> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content1" _xid="C79E1CFC497000011AE5500068D1B200"
      style="bottom: 0px; background-size: cover; background-image: url(http://localhost:41778/x5/UI2/v_/OTO/pages/userInfo/none);">
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-content-center x-pull-down container" xid="div1"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"/>  
          <span class="x-pull-down-label" xid="span1">下拉刷新...</span>
        </div>  
        <div class="x-scroll-content" xid="div2"> 
          <div xid="div5" style="text-align:center;">
            <div xid="div4" style="width:70%;display:inline-block;margin-top:35px;">
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                label="社交焦虑" xid="button1" style="width:40%;margin:0 2.5%;background-color:#999;border:2px solid #666;" bind-click="goTest(1)"> 
                <i xid="i2"/>  
                <span xid="span3">社交焦虑</span>
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                label="抑郁" xid="button2" style="width:40%;margin:0 2.5%;background-color:#999;border:2px solid #666;"> 
                <i xid="i3"/>  
                <span xid="span4">抑郁</span>
              </a>
            </div>  
            <div xid="div6" style="width:70%;display:inline-block;margin-top:35px;"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                label="社交焦虑" xid="button4" style="width:40%;margin:0 2.5%;background-color:#999;border:2px solid #666;"> 
                <i xid="i4"/>  
                <span xid="span5">社交焦虑</span>
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                label="抑郁" xid="button3" style="width:40%;margin:0 2.5%;background-color:#999;border:2px solid #666;"> 
                <i xid="i5"/>  
                <span xid="span6">抑郁</span>
              </a> 
            </div>
          </div>
        </div>  
        <div class="x-content-center x-pull-up" xid="div3"> 
          <span class="x-pull-up-label" xid="span2">加载更多...</span>
        </div> 
      </div>
    </div> 
  </div> 
</div>
