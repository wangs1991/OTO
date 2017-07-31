<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:280px;left:636px;"
    onLoad="modelLoad" onunLoad="modelUnLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="skinEData" idColumn="id">
      <column label="id" name="id" type="String" xid="xid1"/>  
      <column name="fValue" type="Integer" xid="xid2"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="controlData" idColumn="id">
      <column name="id" type="Integer" xid="xid3"/>  
      <column name="skinValue" type="Integer" xid="xid11"/>  
      <column name="maxSkinValue" type="Integer" xid="xid4"/>  
      <column name="averageSkinValue" type="Integer" xid="xid5"/>  
      <column name="controlCheck1" type="Boolean" xid="xid6"/>  
      <column name="controlCheck2" type="Boolean" xid="xid7"/>  
      <column name="controlCheck3" type="Boolean" xid="xid8"/>  
      <column name="controlCheck4" type="Boolean" xid="xid9"/>  
      <column name="controlCheck5" type="Boolean" xid="xid10"/>  
      <data xid="default1">[{"id":1,"skinValue":0,"maxSkinValue":0,"averageSkinValue":0,"controlCheck1":"","controlCheck2":"","controlCheck3":"","controlCheck4":"","controlCheck5":""}]</data>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="医生控制终端"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left" bind-click="left1Click"> 
          <i class="webapp ic-back" xid="i1"/>
        </div>  
        <div class="x-titlebar-title">医生控制终端</div>  
        <div class="x-titlebar-right reverse"></div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel carousel"
        xid="carousel1" auto="true"> 
        <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents"
          active="0" slidable="true" wrap="true" swipe="true" xid="contentsImg" routable="false"
          style="height:200px;"> 
          <div class="x-contents-content" xid="content2"> 
            <img src="$UI/xlzl/img/VR_BG.jpg" alt="" xid="liveImage" bind-click="openPageClick"
              class="tb-img1" pagename="./detail.w" style="background-color:transparent;width:100%;height:200px;"/>
          </div> 
        </div> 
      </div>
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-card panel panel-default tb-range-no_line"
        xid="controlPanel"> 
        <div xid="settingListDiv" class="tb-range-no_line"> 
          <div class="spacing list-group-item" xid="c1"> 
            <span xid="span14" bind-text="data_controller_name1"><![CDATA[张望]]></span>  
            <div xid="div23" align="right" style="position:relative;right:-5px;top:-11px;"
              class="pull-right"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
                label="播放动作" xid="selectCourseButton" onClick="controller1Click" style="margin-top: -5px;"> 
                <i xid="i2"/>  
                <span xid="span1">播放动作</span>
              </a>
            </div>
          </div>  
          <div class="spacing list-group-item" xid="c2"> 
            <span xid="span15" bind-text="data_controller_name2"><![CDATA[记笔记]]></span>  
            <div xid="div22" align="right" style="position:relative;right:-5px;top:-11px;"
              class="pull-right"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
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
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
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
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
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
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
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
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
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
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
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
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
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
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-sm btn-only-label center-block item-btn"
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
</div>
