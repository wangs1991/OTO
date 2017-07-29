<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="考试焦虑"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">考试焦虑</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C79F107516500001B3921C75C29F97C0"
      style="bottom: 0px;"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-scroll-content" xid="div2"> 
          <div xid="div7" class="b-psy-one" bind-click="goBindVR"> 
            <div xid="div8" class="b-psy-oneA"> 
              <img src="$UI/OTO/assets/img/psy_5.png" alt="" xid="image1"/>  
              <span xid="span3" bind-if="hatState.lastValue">头盔已连接</span>  
              <span xid="span3" bind-if="!hatState.lastValue">头盔未连接</span> 
            </div> 
          </div>  
          <div xid="div4" class="b-exam-one"> 
            <img src="$UI/OTO/assets/img/exam_1.jpg" alt="" xid="image2" class="b-exam-oneB"/>  
            <div xid="div5" class="b-exam-oneA"> 
              <span xid="span4"><![CDATA[选择体验者年级数]]></span>  
              <img src="$UI/OTO/assets/img/exam_2.jpg" alt="" xid="image3"/> 
            </div> 
          </div>  
          <div component="$UI/system/components/bootstrap/tabs/tabs" class="b-exam-top b-breath-BG"
            xid="tabs1"> 
            <ul class="nav nav-tabs clearfix b-breath-two b-exam-two" xid="ul3"> 
              <li xid="li1" class="active"> 
                <a class="tab-btn" content="tabContent1" xid="tabItem1"> 
                  <span xid="span5"><![CDATA[考场氛围]]></span> 
                </a> 
              </li>  
              <li class="" xid="li8"> 
                <a class="tab-btn" content="tabContent1" xid="tabItem1"> 
                  <span xid="span5"><![CDATA[考场人数]]></span> 
                </a> 
              </li>  
              <li role="presentation" xid="li9"> 
                <a class="tab-btn" content="tabContent1" xid="tabItem1"> 
                  <span xid="span5"><![CDATA[考试时间]]></span> 
                </a> 
              </li>  
              <li role="presentation" xid="li9"> 
                <a class="tab-btn" content="tabContent1" xid="tabItem1"> 
                  <span xid="span5"><![CDATA[考试科目]]></span> 
                </a> 
              </li>  
              <li role="presentation" xid="li9"> 
                <a class="tab-btn" content="tabContent1" xid="tabItem1"> 
                  <span xid="span5"><![CDATA[考题数目]]></span> 
                </a> 
              </li>
            </ul>  
            <div class="tab-content" xid="div1"> 
              <div class="tab-pane active" xid="tabContent1"> 
                <ul xid="ul2" class="b-breath-thr"> 
                  <li xid="li6" class="clearfix"> 
                    <div xid="div9" class="fl b-breath-thrA"> 
                      <img src="$UI/OTO/assets/img/breath_6.jpg" alt="" xid="image7"/>  
                      <span xid="span10"><![CDATA[日本和屋]]></span> 
                    </div>  
                    <input type="radio" value="" name="" xid="radio1" class="fr b-breath-thrB"/> 
                  </li>  
                  <li xid="li5" class="clearfix"> 
                    <div xid="div10" class="fl b-breath-thrA"> 
                      <img src="$UI/OTO/assets/img/breath_7.jpg" alt="" xid="image8"/>  
                      <span xid="span4"><![CDATA[海边沙滩]]></span> 
                    </div>  
                    <input type="radio" value="" name="" xid="radio2" class="fr b-breath-thrB"/> 
                  </li>  
                  <li xid="li7" class="clearfix"> 
                    <div xid="div11" class="fl b-breath-thrA"> 
                      <img src="$UI/OTO/assets/img/breath_8.png" alt="" xid="image9"/>  
                      <span xid="span9"><![CDATA[皑皑白雪]]></span> 
                    </div>  
                    <input type="radio" value="" name="" xid="radio3" class="fr b-breath-thrB"/> 
                  </li> 
                </ul> 
              </div>  
              <div class="tab-pane" xid="tabContent2"> 
                <ul xid="ul2" class="b-breath-thr"> 
                  <li xid="li6" class="clearfix"> 
                    <div xid="div9" class="fl b-breath-thrA"> 
                      <img src="$UI/OTO/assets/img/breath_6.jpg" alt="" xid="image7"/>  
                      <span xid="span10"><![CDATA[歌曲一]]></span> 
                    </div>  
                    <input type="radio" value="" name="" xid="radio1" class="fr b-breath-thrB"/> 
                  </li>  
                  <li xid="li5" class="clearfix"> 
                    <div xid="div10" class="fl b-breath-thrA"> 
                      <img src="$UI/OTO/assets/img/breath_7.jpg" alt="" xid="image8"/>  
                      <span xid="span4"><![CDATA[歌曲二]]></span> 
                    </div>  
                    <input type="radio" value="" name="" xid="radio2" class="fr b-breath-thrB"/> 
                  </li>  
                  <li xid="li7" class="clearfix"> 
                    <div xid="div11" class="fl b-breath-thrA"> 
                      <img src="$UI/OTO/assets/img/breath_8.png" alt="" xid="image9"/>  
                      <span xid="span9"><![CDATA[歌曲三]]></span> 
                    </div>  
                    <input type="radio" value="" name="" xid="radio3" class="fr b-breath-thrB"/> 
                  </li> 
                </ul> 
              </div>  
              <div class="tab-pane" xid="tabContent3"> 
                <ul xid="ul2" class="b-breath-thr"> 
                  <li xid="li6" class="clearfix"> 
                    <div xid="div9" class="fl b-breath-thrA"> 
                      <img src="$UI/OTO/assets/img/breath_6.jpg" alt="" xid="image7"/>  
                      <span xid="span10"><![CDATA[打开指导语]]></span> 
                    </div>  
                    <input type="radio" value="" name="" xid="radio1" class="fr b-breath-thrB"/> 
                  </li>  
                  <li xid="li5" class="clearfix"> 
                    <div xid="div10" class="fl b-breath-thrA"> 
                      <img src="$UI/OTO/assets/img/breath_7.jpg" alt="" xid="image8"/>  
                      <span xid="span4"><![CDATA[关闭指导语]]></span> 
                    </div>  
                    <input type="radio" value="" name="" xid="radio2" class="fr b-breath-thrB"/> 
                  </li> 
                </ul> 
              </div>  
              <div class="tab-pane" xid="tabContent4"> 
                <ul xid="ul2" class="b-breath-thr"> 
                  <li xid="li6" class="clearfix"> 
                    <div xid="div9" class="fl b-breath-thrA"> 
                      <img src="$UI/OTO/assets/img/breath_6.jpg" alt="" xid="image7"/>  
                      <span xid="span10"><![CDATA[三分钟]]></span> 
                    </div>  
                    <input type="radio" value="" name="" xid="radio1" class="fr b-breath-thrB"/> 
                  </li>  
                  <li xid="li5" class="clearfix"> 
                    <div xid="div10" class="fl b-breath-thrA"> 
                      <img src="$UI/OTO/assets/img/breath_7.jpg" alt="" xid="image8"/>  
                      <span xid="span4"><![CDATA[五分钟]]></span> 
                    </div>  
                    <input type="radio" value="" name="" xid="radio2" class="fr b-breath-thrB"/> 
                  </li>  
                  <li xid="li7" class="clearfix"> 
                    <div xid="div11" class="fl b-breath-thrA"> 
                      <img src="$UI/OTO/assets/img/breath_8.png" alt="" xid="image9"/>  
                      <span xid="span9"><![CDATA[十分钟]]></span> 
                    </div>  
                    <input type="radio" value="" name="" xid="radio3" class="fr b-breath-thrB"/> 
                  </li> 
                </ul> 
              </div> 
            </div> 
          </div>  
          <div xid="div10"> 
            <div xid="div12" class="b-exam-four clearfix"> 
              <div xid="div11" class="b-exam-fourA fl"> 
                <span xid="span12"><![CDATA[放松练习场景选择]]></span>  
                <img src="$UI/OTO/assets/img/exam_2.jpg" alt="" xid="image4"/> 
              </div>  
              <div xid="div19" class="fr checkboxTwo"> 
                <input type="checkbox" value="" name="" xid="checkbox2" id="checkboxTwoInput"/>  
                <label xid="label1" for="checkboxTwoInput"><![CDATA[]]></label> 
              </div> 
            </div> 
          </div>  
          <div xid="div13" class="b-exam-five"> 
            <img src="$UI/OTO/assets/img/exam_3.png" alt="" xid="image6"/>  
            <span xid="span13"><![CDATA[请佩戴好生物电设备]]></span> 
          </div>  
          <div xid="div14" class="clearfix b-user-thr"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
              label="开始练习" xid="button1" bind-click="assessSelect"> 
              <i xid="i2"/>  
              <span xid="span14">开始练习</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
