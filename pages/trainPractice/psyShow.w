<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:31px;left:230px;height:auto;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="OTO心理干预模块列表"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            icon="icon-chevron-left" xid="backBtn" bind-click="goBack"> 
            <i class="icon-chevron-left"/>  
            <span>关闭</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[OTO心理治疗模块列表]]></div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div component="$UI/system/components/justep/smartContainer/smartContainer"
      class="x-smartcontainer" xid="smartContainer2" style="position:absolute;top:48px;width:100%;"> 
      <div xid="div4" class="b-psy-box"> 
        <div xid="div7" class="b-psy-one" bind-click="goBindVR"> 
          <div xid="div8" class="b-psy-oneA"> 
            <img src="$UI/OTO/assets/img/psy_5.png" alt="" xid="image1"/>  
            <span xid="span3" bind-if="hatState.lastValue">头盔已连接</span>  
            <span xid="span3" bind-if="!hatState.lastValue">头盔未连接</span> 
          </div> 
        </div>  
        <div xid="div10" class="b-psy-two clearfix"> 
          <div xid="div11" class="b-psy-twoA "> 
            <img src="$UI/OTO/assets/img/psy_1.png" alt="" xid="image2"/> 
          </div>  
          <div xid="div18" class="b-psy-twoA"> 
            <img src="$UI/OTO/assets/img/psy_2.png" alt="" xid="image3"/> 
          </div>  
          <div xid="div19" class="b-psy-twoA"> 
            <img src="$UI/OTO/assets/img/psy_3.png" alt="" xid="image4"/> 
          </div>  
          <div xid="div20" class="b-psy-twoA"> 
            <img src="$UI/OTO/assets/img/psy_4.png" alt="" xid="image5"/> 
          </div> 
        </div>  
        <ul xid="ul2" class="b-psy-thr clearfix"> 
          <li xid="li5" class="type_relax clearfix" data-type="breathing:1" bind-click="enterCources"> 
            <img src="$UI/OTO/assets/img/psy_6.png" alt="" xid="image6"/>  
            <span xid="span11"><![CDATA[肌肉渐进式放松]]></span> 
          </li>  
          <li xid="li6" class="type_relax clearfix" data-type="breathing:2" bind-click="enterCources"> 
            <img src="$UI/OTO/assets/img/psy_7.png" alt="" xid="image7"/>  
            <span xid="span12"><![CDATA[深呼吸放松]]></span> 
          </li> 
        </ul>  
        <ul xid="ul1" class="b-psy-thr clearfix"> 
          <li xid="li2" class="type_relax clearfix" data-type="breathing:3" bind-click="enterCources"> 
            <img src="$UI/OTO/assets/img/psy_8.png" alt="" xid="image8"/>  
            <span xid="span5"><![CDATA[快速放松]]></span> 
          </li>  
          <li xid="li1" class="type_anxious clearfix" data-type="interview:4" bind-click="enterCources"> 
            <img src="$UI/OTO/assets/img/psy_9.png" alt="" xid="image9"/>  
            <span xid="span4"><![CDATA[面试焦虑]]></span> 
          </li> 
        </ul>  
        <ul xid="ul3" class="b-psy-thr clearfix"> 
          <li xid="li4" class="type_anxious clearfix" data-type="speech:5" bind-click="enterCources"> 
            <img src="$UI/OTO/assets/img/psy_10.png" alt="" xid="image10"/>  
            <span xid="span7"><![CDATA[汇报焦虑]]></span> 
          </li>  
          <li xid="li3" class="type_anxious clearfix" data-type="public:6" bind-click="enterCources"> 
            <img src="$UI/OTO/assets/img/psy_11.png" alt="" xid="image11"/>  
            <span xid="span6"><![CDATA[公众演讲焦虑]]></span> 
          </li> 
        </ul>  
        <ul xid="ul4" class="b-psy-thr clearfix"> 
          <li xid="li7" class="type_anxious clearfix" data-type="examTender:7" bind-click="enterCources"> 
            <img src="$UI/OTO/assets/img/psy_12.png" alt="" xid="image13"/>  
            <span xid="span2"><![CDATA[考试焦虑]]></span>
          </li>  
          <li xid="li8" class="type_fear clearfix" data-type="acrophobia:8" bind-click="enterCources">  
            <img src="$UI/OTO/assets/img/psy_13.png" alt="" xid="image12"/>  
            <span xid="span1"><![CDATA[恐高症]]></span>
          </li> 
        </ul>  
        <ul xid="ul5" class="b-psy-thr clearfix"> 
          <li xid="li9" class="type_trauma clearfix"> 
            <img src="$UI/OTO/assets/img/psy_14.png" alt="" xid="image15"/>  
            <span xid="span9"><![CDATA[EMDR]]></span>
          </li> 
        </ul>
      </div> 
    </div> 
  </div> 
</div>
