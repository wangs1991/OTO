<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="标题"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">标题</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C79F18A26610000120B4115050501F1E" style="bottom: 0px;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div xid="div7" class="b-psy-one" bind-click="goBindVR">
   <div xid="div8" class="b-psy-oneA">
    <img src="$UI/OTO/assets/img/psy_5.png" alt="" xid="image1"></img>
    <span xid="span3" bind-if="hatState">头盔已连接</span>
    <span xid="span3" bind-if="!hatState">头盔未连接</span></div> </div>
  <div xid="div4" class="b-exam-one">
   <img src="$UI/OTO/assets/img/breath_1.jpg" alt="" xid="image2" class="b-exam-oneB"></img>
   <div xid="div5" class="b-breath-oneA">
    <div xid="div6" class="b-exam-top b-breath-BG">
   <ul xid="ul1" class="clearfix b-breath-two">
    <li xid="li1" class="b-exam-twoA">
     <img src="$UI/OTO/assets/img/breath_2.jpg" alt="" xid="image3"></img><span xid="span5"><![CDATA[放松场景]]></span>
  </li> 
    <li xid="li2">
     <img src="$UI/OTO/assets/img/breath_3.jpg" alt="" xid="image4"></img><span xid="span6"><![CDATA[音乐场景]]></span>
  </li> 
    <li xid="li3">
     <img src="$UI/OTO/assets/img/breath_4.jpg" alt="" xid="image5"></img><span xid="span7"><![CDATA[指导语]]></span>
  </li> 
    <li xid="li4" class="b-breath-twoC">
     <img src="$UI/OTO/assets/img/breath_5.jpg" alt="" xid="image6"></img><span xid="span8"><![CDATA[时长]]></span>
  </li> 
    </ul> 
   <ul xid="ul2" class="b-breath-thr">
    <li xid="li6" class="clearfix">
     
     <div xid="div9" class="fl b-breath-thrA"><img src="$UI/OTO/assets/img/breath_6.jpg" alt="" xid="image7"></img><span xid="span10"><![CDATA[日本和屋]]></span></div><input type="radio" value="" name="" xid="radio1" class="fr b-breath-thrB"></input>
  </li> 
    
  <li xid="li5" class="clearfix">
   <div xid="div10" class="fl b-breath-thrA">
    <img src="$UI/OTO/assets/img/breath_7.jpg" alt="" xid="image8"></img>
    <span xid="span4"><![CDATA[海边沙滩]]></span></div> 
   <input type="radio" value="" name="" xid="radio2" class="fr b-breath-thrB"></input></li>
  <li xid="li7" class="clearfix">
   <div xid="div11" class="fl b-breath-thrA">
    <img src="$UI/OTO/assets/img/breath_8.png" alt="" xid="image9"></img>
    <span xid="span9"><![CDATA[皑皑白雪]]></span></div> 
   <input type="radio" value="" name="" xid="radio3" class="fr b-breath-thrB"></input></li></ul> </div></div> </div>
  <div xid="div13" class="b-exam-five">
   <img src="$UI/OTO/assets/img/exam_3.png" alt="" xid="image10"></img>
   <span xid="span13">请佩戴好生物电设备</span></div>
  <div xid="div14" class="clearfix b-user-thr">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton" label="开始练习" xid="button1" bind-click="assessSelect">
    <i xid="i2"></i>
    <span xid="span14">开始练习</span></a> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
  </div> 
</div>