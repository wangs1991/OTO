<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad"></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="放松训练反馈"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" bind-click="goBack"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[放松训练反馈]]></div>  
        <div class="x-titlebar-right reverse"></div> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content1" _xid="C79E5912BD4000011A295AE07D72182D"
      style="bottom: 0px;">
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1" style="background-color:transparent;"> 
        <div class="x-scroll-content" xid="div2"> 
          <div xid="div7" class="b-relax-box">
            <div xid="div4" class="w-relax-one clearfix"> 
              <div xid="div5" class="b-relax-oneL fl"> 
                <img src="$UI/OTO/assets/img/relax_1.jpg" alt="" xid="image1"/> 
              </div>  
              <ul xid="ul1" class="b-relax-oneR fr" bind-foreach="{ data: user, as: 'user' }"> 
                <li xid="li1" bind-text="user.name"/>  
                <li xid="li2" bind-text="user.sexTxt">男</li>  
                <li xid="li3" bind-text="user.age+'岁'"/>  
                <li/> 
              </ul> 
            </div>
            <ul xid="ul2" class="b-relax-two clearfix">
              <li xid="li4"><![CDATA[20170403]]></li>  
              <li xid="li5"><![CDATA[ 深呼吸放松练习 ]]></li>  
              <li xid="li6"><![CDATA[5分钟]]></li>
            </ul>  
            <ul xid="ul3" class="b-relax-thr"> 
              <div component="$UI/system/components/bootstrap/accordion/accordion" xid="accordion1">
   <div component="$UI/system/components/bootstrap/panel/panel" xid="panel2" class="panel panel-default">
    <div xid="heading1" style="background-color:transparent;" class="panel-heading">
     <li xid="li8" class="clearfix"> 
                 
              <div xid="div13" class="pull-left b-relax-thrA"> 
                  <img src="$UI/OTO/assets/img/relax_2.jpg" alt="" xid="image3" />  
                  <span xid="span3"><![CDATA[皮肤电数据]]></span>
                </div></li></div> 
    <div class="panel-collapse collapse in" xid="div1">
     <div class="panel-body" xid="div3"><div xid="div6"><span xid="span1"><![CDATA[22222222222]]></span></div>
  </div></div> </div> </div>  
              <div component="$UI/system/components/bootstrap/accordion/accordion" class="panel-group" xid="accordion2">
   <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3">
    <div class="panel-heading" xid="heading2">
     
  <li xid="li7" class="clearfix">
   <div xid="div10" class="pull-left b-relax-thrA">
    <img src="$UI/OTO/assets/img/relax_2.jpg" alt="" xid="image2"></img>
    <span xid="span4"><![CDATA[诊疗记录]]></span></div> </li></div> 
    <div class="panel-collapse collapse in" xid="div8">
     <div class="panel-body" xid="div9"><span xid="span2"><![CDATA[1]]></span></div></div> </div> </div><div component="$UI/system/components/bootstrap/accordion/accordion" class="panel-group" xid="accordion3">
   <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel4">
    <div class="panel-heading" xid="heading3">
     
  <li xid="li9" class="clearfix">
   <div xid="div14" class="pull-left b-relax-thrA">
    <img src="$UI/OTO/assets/img/relax_2.jpg" alt="" xid="image4"></img>
    <span xid="span6"><![CDATA[自评量表]]></span></div> </li></div> 
    <div class="panel-collapse collapse in" xid="div11">
     <div class="panel-body" xid="div12"><span xid="span5"><![CDATA[3333333333333]]></span></div></div> </div> </div></ul>
          </div> 
        </div>  
        </div>
    </div> 
  </div> 
</div>
