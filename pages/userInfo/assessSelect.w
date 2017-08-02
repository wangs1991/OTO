<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div xid="div10"/>  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"
    onLoad="modeLoad" onParamsReceive="modelParamsReceive" onActive="enterPage"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="自评量表选择"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[自评量表选择]]></div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1" _xid="C79E1CFC497000011AE5500068D1B200"
      style="bottom: 0px;"> 
      <div class="x-scroll-content" xid="div27"> 
        <div xid="div25" style="text-align:center;margin-top:35px;"> 
          <div xid="div26" style="width:90%;display:inline-block;margin-bottom:15px;"
            class="clearfix b-assess-one"> 
            <div class="zplb_ctner"> 
              <!-- <div class="zplb_item finished">  -->  
              <div class="zplb_item"> 
                <span xid="span27" class="b-access-number"><![CDATA[2]]></span>  
                <div xid="div9" class="zplb_btn b-assess-oneA" data-type="5" bind-click="goTest"> 
                  <span xid="span9"><![CDATA[会议发言自评表]]></span> 
                </div>  
                <div class="access-result">
                  <!-- <p>社会焦虑自评: 32 </p>
                	<p>社会焦虑自评: 32 </p> --> 
                </div> 
              </div>  
              <div class="zplb_item"> 
                <span xid="span27" class="b-access-number b-hide b-show access-result-num"><![CDATA[2]]></span>  
                <div xid="div9" class="zplb_btn b-assess-oneA" data-type="4" bind-click="goTest"> 
                  <span xid="span9"><![CDATA[面试焦虑自评表]]></span> 
                </div>  
                <div class="access-result"/> 
              </div>  
              <div class="zplb_item"> 
                <span xid="span27" class="b-access-number b-hide b-show"><![CDATA[1]]></span>  
                <div xid="div11" class="zplb_btn b-assess-oneA" data-type="8" bind-click="goTest"> 
                  <span xid="span11"><![CDATA[恐高症自评表]]></span> 
                </div>  
                <div class="access-result"/> 
              </div>  
              <div class="zplb_item"> 
                <span xid="span27" class="b-access-number b-hide b-show"><![CDATA[1]]></span>  
                <div xid="div20" class="zplb_btn b-assess-oneA" data-type="7" bind-click="goTest"> 
                  <span xid="span10">考试焦虑自评表</span> 
                </div>  
                <div class="access-result"/> 
              </div>  
              <div class="zplb_item"> 
                <span xid="span27" class="b-access-number b-hide b-show"><![CDATA[2]]></span>  
                <div xid="div21" class="zplb_btn b-assess-oneA" data-type="6" bind-click="goTest"> 
                  <span xid="span7"><![CDATA[公众演讲自评量表]]></span> 
                </div>  
                <div class="access-result"/> 
              </div>  
            </div> 
          </div>   
        </div> 
      </div> 
    </div> 
  </div> 
</div>
