<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="考试焦虑"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">考试焦虑</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C79F107516500001B3921C75C29F97C0" style="bottom: 0px;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div xid="div7" class="b-psy-one" bind-click="goBindVR">
   <div xid="div8" class="b-psy-oneA">
    <img src="$UI/OTO/assets/img/psy_5.png" alt="" xid="image1"></img>
    <span xid="span3" bind-if="hatState">头盔已连接</span>
    <span xid="span3" bind-if="!hatState">头盔未连接</span></div> </div><div xid="div4" class="b-exam-one"><img src="$UI/OTO/assets/img/exam_1.jpg" alt="" xid="image2" class="b-exam-oneB"></img>
  <div xid="div5" class="b-exam-oneA"><span xid="span4"><![CDATA[选择体验者年级数]]></span>
  <img src="$UI/OTO/assets/img/exam_2.jpg" alt="" xid="image3"></img></div></div>
  <div xid="div6" class="b-exam-top b-exam-BG"><ul xid="ul1" class="clearfix b-exam-two"><li xid="li1" class="b-exam-twoA"><span xid="span5"><![CDATA[考场氛围]]></span></li>
  <li xid="li2"><span xid="span6"><![CDATA[考场人数]]></span></li>
  <li xid="li3"><span xid="span7"><![CDATA[考试时间]]></span></li>
  <li xid="li4"><span xid="span8"><![CDATA[考试科目]]></span></li>
  <li xid="li5" class="b-exam-twoC"><span xid="span9"><![CDATA[考题数目]]></span></li></ul><ul xid="ul2" class="b-exam-thr"><li xid="li6" class="clearfix"><span xid="span10" class="fl"><![CDATA[简单]]></span>
  <input type="radio" value="" name="" xid="radio5" class="fr b-exam-thrB"></input></li>
  <li xid="li7" class="clearfix b-exam-thrA"><span xid="span11" class="fl"><![CDATA[困难]]></span>
  <input type="radio" value="" name="" xid="radio6" class="fr b-exam-thrB"></input>
  </li></ul></div><div xid="div10"><div xid="div12" class="b-exam-four clearfix"><div xid="div11" class="b-exam-fourA fl">
   <span xid="span12"><![CDATA[放松练习场景选择]]></span>
   <img src="$UI/OTO/assets/img/exam_2.jpg" alt="" xid="image4"></img>
  </div>
  <div xid="div19" class="fr checkboxTwo"><input type="checkbox" value="" name="" xid="checkbox2" id="checkboxTwoInput"></input>
  <label xid="label1" for="checkboxTwoInput"><![CDATA[]]></label></div></div></div><div xid="div13" class="b-exam-five"><img src="$UI/OTO/assets/img/exam_3.png" alt="" xid="image6"></img><span xid="span13"><![CDATA[请佩戴好生物电设备]]></span></div>
  <div xid="div14" class="clearfix b-user-thr">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton" label="开始练习" xid="button1" bind-click="assessSelect">
    <i xid="i2"></i>
    <span xid="span14">开始练习</span></a> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span>
  </div> 
  </div></div>
  </div> 
</div>