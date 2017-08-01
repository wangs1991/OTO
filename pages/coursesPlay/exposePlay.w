<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:241px;left:673px;"
    onLoad="modelLoad" onParamsReceive="modelParamsReceive" onunLoad="modelUnLoad"/>  
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
            <img src="$UI/xlzl/img/VR_BG.jpg" alt="" xid="liveImage" bind-click="openPageClick"
              class="tb-img1" pagename="./detail.w" style="background-color:transparent;width:100%;height:200px;"/> 
          </div> 
        </div>  
        <div class="main_padding"> 
          <div class="inner-content main_padding"> 
            <div xid="div1" style="height:300px;" class="center-block"> 
              <div xid="skinInfoDiv" align="left" style="position:relative;left:5px;top:-5px;height:30px;"> 
                <span xid="skinInfoSpan" class="text-black" bind-text="skinInfo"/> 
              </div>  
              <div xid="nullAlertDiv2" style="display:none;position:relative;height:0px;width:100%;top:100px;"
                class="text-alert-null">没有数据信息，请正确佩戴皮肤电心率设备</div>  
              <div xid="wave2" id="echartExpose" style="width:100%;height:300px;position: static;"
                class="main"/> 
            </div>  
            <div xid="settingListDiv" class="tb-range-no_line list_list_list"> 
              <div class="spacing list-group-item" xid="c1" style="position: relative; z-index: 100;"> 
                <span xid="span14" bind-text="data_controller_name1"><![CDATA[张望]]></span>  
                <div xid="div23" align="right" style="position:relative;right:-5px;top:-11px;"
                  class="pull-right"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="播放动作" xid="selectCourseButton" onClick="controller1Click"
                    style="margin-top: -5px;"> 
                    <i xid="i2"/>  
                    <span xid="span1">播放动作</span> 
                  </a> 
                </div> 
              </div>  
              <div class="spacing list-group-item" xid="c2"> 
                <span xid="span15" bind-text="data_controller_name2"><![CDATA[记笔记]]></span>  
                <div xid="div22" align="right" style="position:relative;right:-5px;top:-11px;"
                  class="pull-right"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="播放动作" xid="button1" onClick="controller2Click" style="margin-top: -5px;"> 
                    <i xid="i3"/>  
                    <span xid="span2">播放动作</span> 
                  </a> 
                </div> 
              </div>  
              <div class="spacing list-group-item" xid="c3"> 
                <span xid="span17" bind-text="data_controller_name3"><![CDATA[托腮听讲]]></span>  
                <div xid="div25" align="right" style="position:relative;right:-5px;top:-11px;"
                  class="pull-right"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="播放动作" xid="button2" onClick="controller3Click" style="margin-top: -5px;"> 
                    <i xid="i4"/>  
                    <span xid="span3">播放动作</span> 
                  </a> 
                </div> 
              </div>  
              <div class="spacing list-group-item" xid="c4"> 
                <span xid="span18" bind-text="data_controller_name4"><![CDATA[看表]]></span>  
                <div xid="div26" align="right" style="position:relative;right:-5px;top:-11px;"
                  class="pull-right"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="播放动作" xid="button3" onClick="controller4Click" style="margin-top: -5px;"> 
                    <i xid="i5"/>  
                    <span xid="span4">播放动作</span> 
                  </a> 
                </div> 
              </div>  
              <div class="spacing list-group-item" xid="c5"> 
                <span xid="span6" bind-text="data_controller_name5">看表</span>  
                <div xid="div3" align="right" style="position:relative;right:-5px;top:-11px;"
                  class="pull-right"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="播放动作" xid="button4" onClick="controller5Click" style="margin-top: -5px;"> 
                    <i xid="i6"/>  
                    <span xid="span5">播放动作</span> 
                  </a> 
                </div> 
              </div>  
              <div class="spacing list-group-item" xid="c6"> 
                <span xid="span8" bind-text="data_controller_name6">看表</span>  
                <div xid="div5" align="right" style="position:relative;right:-5px;top:-11px;"
                  class="pull-right"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="播放动作" xid="button5" onClick="controller6Click" style="margin-top: -5px;"> 
                    <i xid="i7"/>  
                    <span xid="span7">播放动作</span> 
                  </a> 
                </div> 
              </div>  
              <div class="spacing list-group-item" xid="c7"> 
                <span xid="span10" bind-text="data_controller_name7">看表</span>  
                <div xid="div7" align="right" style="position:relative;right:-5px;top:-11px;"
                  class="pull-right"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="播放动作" xid="button6" onClick="controller7Click" style="margin-top: -5px;"> 
                    <i xid="i8"/>  
                    <span xid="span9">播放动作</span> 
                  </a> 
                </div> 
              </div>  
              <div class="spacing list-group-item" xid="c8"> 
                <span xid="span12" bind-text="data_controller_name8">看表</span>  
                <div xid="div9" align="right" style="position:relative;right:-5px;top:-11px;"
                  class="pull-right"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="播放动作" xid="button7" onClick="controller8Click" style="margin-top: -5px;"> 
                    <i xid="i9"/>  
                    <span xid="span11">播放动作</span> 
                  </a> 
                </div> 
              </div>  
              <div class="spacing list-group-item" xid="c9"> 
                <span xid="span16" bind-text="data_controller_name9">看表</span>  
                <div xid="div11" align="right" style="position:relative;right:-5px;top:-11px;"
                  class="pull-right"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="播放动作" xid="button8" onClick="controller9Click" style="margin-top: -5px;"> 
                    <i xid="i10"/>  
                    <span xid="span13">播放动作</span> 
                  </a> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default button block"
        label="结束练习" xid="button1" bind-click="goToSave"> 
        <i xid="i1"/>  
        <span xid="span1">结束练习</span> 
      </a> 
    </div> 
  </div> 
</div>
