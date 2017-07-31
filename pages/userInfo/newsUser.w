<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:-7px;left:83px;height:auto;" onActive="enterPage"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1" style="width:100%;font-size:14px;"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="新建来访者档案"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[新建来访者档案]]></div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content1" _xid="C79E07F045D00001EBCAF9768A7099E0"
      style="bottom: 0px;"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <form name="newUser" id="newUserSheet"> 
          <div class="x-scroll-content" xid="div2"> 
            <div xid="div13" class="b-user-topBox"> 
              <div xid="div4" class="clearfix b-user-one"> 
                <div xid="div8" class="fl b-user-oneA"> 
                  <img src="$UI/OTO/assets/img/user_1.png" alt="" xid="image1"/> 
                </div>  
                <div xid="div4" class="fl b-user-two"> 
                  <div xid="div9" class="clearfix b-user-twoA"> 
                    <img src="$UI/OTO/assets/img/user_2.png" alt="" xid="image2"
                      class="fl"/>  
                    <span xid="span3" class="fl">姓名</span>  
                    <input type="text" name="name" xid="input2" class="fl"/>  
                    <img src="$UI/OTO/assets/img/user_3.png" alt="" xid="image3"
                      class="fl"/>  
                    <span xid="span4" class="fl">性别</span>  
                    <input type="text" name="sex" xid="input3" class="fl b-user-twoInput"/> 
                  </div>  
                  <div xid="div5" class="clearfix b-user-twoA b-user-twoB"> 
                    <img src="$UI/OTO/assets/img/user_4.png" alt="" xid="image6"
                      class="fl"/>  
                    <span xid="span5" class="fl">出生年月</span>  
                    <input type="text" name="birthday" xid="input4" class="fl"/> 
                  </div> 
                </div> 
              </div>  
              <div xid="div17" style="margin:10px;"> 
                <div xid="div10" class="clearfix b-user-twoA b-user-twoC"> 
                  <img src="$UI/OTO/assets/img/user_5.png" alt="" xid="image8"
                    class="fl"/>  
                  <span xid="span11" class="fl">手机号</span>  
                  <input type="text" name="phone" xid="input6" class="fl"/> 
                </div>  
                <div xid="div11" class="clearfix b-user-twoA b-user-twoC"> 
                  <img src="$UI/OTO/assets/img/user_6.png" alt="" xid="image9"
                    class="fl"/>  
                  <span xid="span13" class="fl">身份证</span>  
                  <input type="text" name="idCard" xid="input7" class="fl"/> 
                </div>  
                <div xid="div12" class="clearfix b-user-twoA b-user-twoC"> 
                  <img src="$UI/OTO/assets/img/user_7.png" alt="" xid="image10"
                    class="fl"/>  
                  <span xid="span14" class="fl">职业</span>  
                  <input type="text" name="vocation" xid="input8" class="fl"/> 
                </div> 
              </div> 
            </div>  
            <div xid="div6" class="clearfix b-user-thr"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
                label="社交量表  38分" xid="button1" bind-click="assessSelect"> 
                <i xid="i2"/>  
                <span xid="span3">社交量表</span> 
              </a> 
              <input name="questType" type="text" id="questType" class="hide"/>	
              <input type="text" name="answer" id="answer" xid="input8" class="hide"/> 
            </div>  
            <div xid="div7" style="margin:10px;" class="b-user-four"> 
              <div xid="div14" class="b-user-fourA clearfix"> 
                <span xid="span15" class="fl"/>  
                <h3 xid="h31" class="fl">诊疗分析记录</h3> 
              </div>  
              <textarea cols="5" name="diagnose" rows="5" xid="textarea2" class="b-user-fourB"/> 
            </div>  
            <div xid="div15" class="clearfix b-user-thr"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
                label="创建用户" xid="button3" bind-click="createUser"> 
                <i xid="i3"/>  
                <span xid="span16">创建用户</span> 
              </a> 
            </div> 
          </div> 
        </form> 
      </div> 
    </div> 
  </div> 
</div>
