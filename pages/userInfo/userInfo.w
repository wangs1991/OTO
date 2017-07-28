<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="用户信息"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[用户信息]]></div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content1" _xid="C79E19CDB1500001231014A6A2A06F20"
      style="bottom: 0px; background-size: cover; background-image: url(http://localhost:42303/x5/UI2/v_/OTO/pages/userInfo/none);"> 
      <div component="$UI/system/components/justep/smartContainer/smartContainer"
        class="x-smartcontainer" xid="smartContainer1" bind-foreach="{data: user, as: 'user'}"> 
        <div xid="div13" class="b-user-topBox" > 
          <div xid="div4" class="clearfix b-user-one"> 
            <div xid="div8" class="fl b-user-oneA"> 
              <img src="$UI/OTO/assets/img/user_1.png" alt="" xid="image1"/> 
            </div>  
            <div xid="div4" class="fl b-user-two"> 
              <div xid="div9" class="clearfix b-user-twoA"> 
                <img src="$UI/OTO/assets/img/user_2.png" alt="" xid="image2"
                  class="fl"/>  
                <span xid="span3" class="fl">姓名</span>  
                <input type="text" bind-value="user.name" xid="input2" class="fl"/>  
                <img src="$UI/OTO/assets/img/user_3.png" alt="" xid="image3"
                  class="fl"/>  
                <span xid="span4" class="fl">性别</span>  
                <input type="text" bind-value="user.sexTxt" xid="input3" class="fl b-user-twoInput"/> 
              </div>  
              <div xid="div5" class="clearfix b-user-twoA b-user-twoB"> 
                <img src="$UI/OTO/assets/img/user_4.png" alt="" xid="image6"
                  class="fl"/>  
                <span xid="span5" class="fl"><![CDATA[出生年月]]></span>  
                <input type="text" bind-value="user.birthday" xid="input4" class="fl"/> 
              </div> 
            </div> 
          </div>  
          <div xid="div17" style="margin:10px;"> 
            <div xid="div10" class="clearfix b-user-twoA b-user-twoC"> 
              <img src="$UI/OTO/assets/img/user_5.png" alt="" xid="image8"
                class="fl"/>  
              <span xid="span11" class="fl"><![CDATA[手机号]]></span>  
              <input type="text" bind-value="user.phone" xid="input6" class="fl"/> 
            </div>  
            <div xid="div11" class="clearfix b-user-twoA b-user-twoC"> 
              <img src="$UI/OTO/assets/img/user_6.png" alt="" xid="image9"
                class="fl"/>  
              <span xid="span13" class="fl"><![CDATA[身份证]]></span>  
              <input type="text" bind-value="user.idCard" xid="input7" class="fl"/> 
            </div>  
            <div xid="div12" class="clearfix b-user-twoA b-user-twoC"> 
              <img src="$UI/OTO/assets/img/user_7.png" alt="" xid="image10"
                class="fl"/>  
              <span xid="span14" class="fl"><![CDATA[职业]]></span>  
              <input type="text" bind-value="user.vocation" xid="input8" class="fl"/> 
            </div> 
          </div> 
        </div>  
        <div xid="div6" class="clearfix b-user-thr"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
            label="社交量表  38分" xid="button1" bind-click="assessSelect"> 
            <i xid="i2"/>  
            <span xid="span3">社交量表 38分</span> 
          </a> 
        </div>  
        <div xid="div7" style="margin:10px;" class="b-user-four"> 
          <div xid="div14" class="b-user-fourA clearfix"> 
            <span xid="span15" class="fl"/>  
            <h3 xid="h31" class="fl">诊疗分析记录</h3> 
          </div>  
          <textarea cols="5" rows="5" xid="textarea2" bind-value="user.diagnose" class="b-user-fourB"/> 
        </div>  
        <div xid="div15" class="clearfix b-user-thr"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
            label="保存" xid="button3"> 
            <i xid="i3"/>
            <span xid="span16">保存</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
