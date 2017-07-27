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
          <div class="x-titlebar-title"><![CDATA[用户信息]]></div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-scroll-view" xid="content1" _xid="C79E19CDB1500001231014A6A2A06F20" style="bottom: 0px; background-size: cover; background-image: url(http://localhost:42303/x5/UI2/v_/OTO/pages/userInfo/none);"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div xid="div13" class="b-user-topBox"><div xid="div4" class="clearfix b-user-one">
   <div xid="div8" class="fl b-user-oneA">
    <img src="$UI/OTO/assets/img/user_1.png" alt="" xid="image1"></img></div> 
   <div xid="div4" class="fl b-user-two">
    <div xid="div9" class="clearfix b-user-twoA">
     <img src="$UI/OTO/assets/img/user_2.png" alt="" xid="image2" class="fl"></img><span xid="span3" class="fl">姓名
  </span>
     <input type="text" value="" xid="input2" class="fl"></input><img src="$UI/OTO/assets/img/user_3.png" alt="" xid="image3" class="fl"></img><span xid="span4" class="fl">性别</span><input type="text" value="" xid="input3" class="fl b-user-twoInput"></input>
  </div> 
    <div xid="div5" class="clearfix b-user-twoA b-user-twoB">
   <img src="$UI/OTO/assets/img/user_4.png" alt="" xid="image6" class="fl"></img>
   <span xid="span5" class="fl"><![CDATA[出生年月]]></span>
   <input type="text" value="" xid="input4" class="fl"></input>
   </div></div> </div><div xid="div17" style="margin:10px;">
   <div xid="div10" class="clearfix b-user-twoA b-user-twoC">
   <img src="$UI/OTO/assets/img/user_5.png" alt="" xid="image8" class="fl"></img>
   <span xid="span11" class="fl"><![CDATA[手机号]]></span>
   <input type="text" value="" xid="input6" class="fl"></input>
   </div>
  <div xid="div11" class="clearfix b-user-twoA b-user-twoC">
   <img src="$UI/OTO/assets/img/user_6.png" alt="" xid="image9" class="fl"></img>
   <span xid="span13" class="fl"><![CDATA[身份证]]></span>
   <input type="text" value="" xid="input7" class="fl"></input></div>
  <div xid="div12" class="clearfix b-user-twoA b-user-twoC">
   <img src="$UI/OTO/assets/img/user_7.png" alt="" xid="image10" class="fl"></img>
   <span xid="span14" class="fl"><![CDATA[职业]]></span>
   <input type="text" value="" xid="input8" class="fl"></input></div></div></div>
  
  <div xid="div6" class="clearfix b-user-thr">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton" label="社交量表  38分" xid="button1">
    <i xid="i2"></i>
    <span xid="span3">社交量表  38分</span></a> </div>
  <div xid="div7" style="margin:10px;" class="b-user-four">
   <div xid="div14" class="b-user-fourA clearfix"><span xid="span15" class="fl"></span><h3 xid="h31" class="fl">诊疗分析记录
  </h3></div>
   <textarea cols="5" rows="5" xid="textarea2" class="b-user-fourB"></textarea></div>
  <div xid="div15" class="clearfix b-user-thr">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton" label="创建用户" xid="button3">
    <i xid="i3"></i>
    <span xid="span16">创建用户</span></a> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
  </div> 
</div>