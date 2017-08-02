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
            <div xid="settingListDiv" class="tb-range-no_line list_list_list"
              id="asyncActions"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
                bind-attr="{label: data_controller_name1}" xid="selectCourseButton"
                onClick="controller1Click"> 
                <i xid="i2"/>  
                <span xid="span1" bind-text="data_controller_name1">播放动作</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
                bind-attr="{label: data_controller_name2" xid="selectCourseButton"
                onClick="controller2Click"> 
                <i xid="i2"/>  
                <span xid="span1" bind-text="data_controller_name2">播放动作</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
                bind-attr="{label: data_controller_name3" data-id="1" xid="selectCourseButton"
                onClick="controller3Click"> 
                <i xid="i2"/>  
                <span xid="span1" bind-text="data_controller_name3">播放动作</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
                bind-attr="{label: data_controller_name4" data-id="1" xid="selectCourseButton"
                onClick="controller4Click"> 
                <i xid="i2"/>  
                <span xid="span1" bind-text="data_controller_name4">播放动作</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
                bind-attr="{label: data_controller_name5" data-id="1" xid="selectCourseButton"
                onClick="controller5Click"> 
                <i xid="i2"/>  
                <span xid="span1" bind-text="data_controller_name5">播放动作</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
                bind-attr="{label: data_controller_name6" data-id="1" xid="selectCourseButton"
                onClick="controller6Click"> 
                <i xid="i2"/>  
                <span xid="span1" bind-text="data_controller_name6">播放动作</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
                bind-attr="{label: data_controller_name7" data-id="1" xid="selectCourseButton"
                onClick="controller7Click"> 
                <i xid="i2"/>  
                <span xid="span1" bind-text="data_controller_name7">播放动作</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
                bind-attr="{label: data_controller_name8" data-id="1" xid="selectCourseButton"
                onClick="controller8Click"> 
                <i xid="i2"/>  
                <span xid="span1" bind-text="data_controller_name8">播放动作</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
                bind-attr="{label: data_controller_name9" data-id="1" xid="selectCourseButton"
                onClick="controller9Click"> 
                <i xid="i2"/>  
                <span xid="span1" bind-text="data_controller_name9">播放动作</span> 
              </a> 
            </div>  
            <div id="staticActions" style="position: relative;"> 
              <!-- 考试 -->  
              <div id="examTender"> 
                <div xid="div6" class="title_bar"> 
                  <span xid="span5"><![CDATA[场景转换]]></span> 
                </div>  
                <div xid="settingListDiv" class="tb-range-no_line list_list_list"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="上升" xid="selectCourseButton" onClick="controller1Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">走廊备考</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="下降" xid="selectCourseButton" onClick="controller2Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">进入考场</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="顶层" xid="selectCourseButton" onClick="controller3Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">结束考试</span> 
                  </a> 
                </div>  
                <div xid="div6" class="title_bar"> 
                  <span xid="span5"><![CDATA[干扰动作]]></span> 
                </div>  
                <div xid="settingListDiv" class="tb-range-no_line list_list_list"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="上升" xid="selectCourseButton" onClick="controller4Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">考前对话</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="下降" xid="selectCourseButton" onClick="controller5Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">老师出现</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="顶层" xid="selectCourseButton" onClick="controller6Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">开始考试</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="顶层" xid="selectCourseButton" onClick="controller7Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">老师巡视</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="顶层" xid="selectCourseButton" onClick="controller8Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">老师咳嗽</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="顶层" xid="selectCourseButton" onClick="controller9Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">同学交卷</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="顶层" xid="selectCourseButton" onClick="controller10Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">考后对话</span> 
                  </a> 
                </div> 
              </div>  
              <!-- 恐高症 -->  
              <div id="acrophobia"> 
                <div xid="div6" class="title_bar"> 
                  <span xid="span5"><![CDATA[电梯控制]]></span> 
                </div>  
                <div xid="settingListDiv" class="tb-range-no_line list_list_list"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="上升" xid="selectCourseButton" onClick="controller1Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">上升</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="下降" xid="selectCourseButton" onClick="controller2Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">下降</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="顶层" xid="selectCourseButton" onClick="controller3Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">顶层</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="一层" xid="selectCourseButton" onClick="controller4Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">一层</span> 
                  </a>  
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-success btn-sm btn-only-label center-block item-btn"
                    label="电梯摇晃" xid="selectCourseButton" onClick="controller5Click"> 
                    <i xid="i2"/>  
                    <span xid="span1">电梯摇晃</span> 
                  </a> 
                </div> 
              </div> 
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
        label="结束练习" xid="button1" bind-click="goToSave"> 
        <i xid="i1"/>  
        <span xid="span1">结束练习</span> 
      </a> 
    </div> 
  </div> 
</div>
