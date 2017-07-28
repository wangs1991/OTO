<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="top:31px;left:230px;height:auto;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="标题"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span>关闭</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[ OTO心理治疗模块列表]]></div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div component="$UI/system/components/justep/smartContainer/smartContainer"
      class="x-smartcontainer" xid="smartContainer2" style="position:absolute;top:48px;"> 
      <div xid="div4" class="b-psy-box"> 
        <div xid="div7" class="b-psy-one" bind-click="goBindVR"> 
          <div xid="div8" class="b-psy-oneA"> 
            <img src="$UI/OTO/assets/img/psy_5.png" alt="" xid="image1"/>  
            <span xid="span3" bind-if="hatState"><![CDATA[头盔已连接]]></span>  
            <span xid="span3" bind-if="!hatState"><![CDATA[头盔未连接]]></span> 
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
        <ul xid="ul2" class="b-psy-thr clearfix" bind-click="enterCource(11)"> 
          <li xid="li5" class="clearfix"> 
            <img src="$UI/OTO/assets/img/psy_6.png" alt="" xid="image6"/>  
            <span xid="span11"><![CDATA[肌肉渐进式放松]]></span> 
          </li>  
          <li xid="li6" class="clearfix"> 
            <img src="$UI/OTO/assets/img/psy_6.png" alt="" xid="image7"/>  
            <span xid="span12"><![CDATA[深呼吸放松]]></span> 
          </li> 
        </ul>  
        <ul xid="ul1" class="b-psy-thr clearfix"> 
          <li xid="li2" class="clearfix"> 
            <img src="$UI/OTO/assets/img/psy_6.png" alt="" xid="image8"/>  
            <span xid="span5">肌肉渐进式放松</span> 
          </li>  
          <li xid="li1" class="clearfix"> 
            <img src="$UI/OTO/assets/img/psy_6.png" alt="" xid="image9"/>  
            <span xid="span4">深呼吸放松</span> 
          </li> 
        </ul>  
        <ul xid="ul3" class="b-psy-thr clearfix"> 
          <li xid="li4" class="clearfix"> 
            <img src="$UI/OTO/assets/img/psy_6.png" alt="" xid="image10"/>  
            <span xid="span7">肌肉渐进式放松</span> 
          </li>  
          <li xid="li3" class="clearfix"> 
            <img src="$UI/OTO/assets/img/psy_6.png" alt="" xid="image11"/>  
            <span xid="span6">深呼吸放松</span> 
          </li> 
        </ul> 
      </div> 
    </div> 
  </div> 
</div>
