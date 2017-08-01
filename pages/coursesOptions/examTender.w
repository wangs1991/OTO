<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="考试焦虑"
        class="x-titlebar app-title-ctner"> 
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
        <form name="courseOpt" id="courseOpt"> 
          <div class="x-scroll-content" xid="div2"> 
            <div xid="div7" class="b-psy-one" bind-click="goBindVR"> 
              <div xid="div8" class="b-psy-oneA"> 
                <img src="$UI/OTO/assets/img/psy_5.png" alt="" xid="image1"/>  
                <span xid="span3" bind-if="hatState.lastValue">头盔已连接</span>  
                <span xid="span3" bind-if="!hatState.lastValue">头盔未连接</span> 
              </div> 
            </div>  
            <div xid="div4" class="b-exam-one"> 
              <img src="$UI/OTO/assets/img/exam_1.jpg" alt="" xid="image2"
                class="b-exam-oneB"/>  
              <div xid="div5" class="b-exam-oneA"> 
                <!-- <span xid="span4"><![CDATA[选择体验者年级数]]></span>  
              <img src="$UI/OTO/assets/img/exam_2.jpg" alt="" xid="image3"/> -->  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control" xid="select1" name="grade"> 
                  <option value="-1">选择体验者年级数</option>  
                  <option value="1">初一</option>  
                  <option value="2">初二</option>  
                  <option value="3">初三</option>  
                  <option value="4">高一</option>  
                  <option value="5">高二</option>  
                  <option value="6">高三</option> 
                </select> 
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
                  <a class="tab-btn" content="tabContent2" xid="tabItem1"> 
                    <span xid="span5"><![CDATA[考场人数]]></span> 
                  </a> 
                </li> 
                <li role="presentation" xid="li9"> 
                  <a class="tab-btn" content="tabContent3" xid="tabItem1"> 
                    <span xid="span5"><![CDATA[考试科目]]></span> 
                  </a> 
                </li>  
                <li role="presentation" xid="li9"> 
                  <a class="tab-btn" content="tabContent4" xid="tabItem1"> 
                    <span xid="span5"><![CDATA[考题数目]]></span> 
                  </a> 
                </li> 
              </ul>  
              <div class="tab-content" xid="div1"> 
                <div class="tab-pane active" xid="tabContent1"> 
                  <ul xid="ul2" class="b-breath-thr"> 
                    <li xid="li6" class="clearfix"> 
                      <div xid="div9" class="fl b-breath-thrA"> 
                        <span xid="span10"><![CDATA[轻松]]></span> 
                      </div>  
                      <input type="radio" value="0" name="difficulty" checked="checked" xid="radio1" class="fr b-breath-thrB"></input>
  </li>  
                    <li xid="li5" class="clearfix"> 
                      <div xid="div10" class="fl b-breath-thrA"> 
                        <span xid="span4"><![CDATA[紧张]]></span> 
                      </div>  
                       
                    <input type="radio" value="1" name="difficulty" xid="radio2" class="fr b-breath-thrB"></input></li> 
                  </ul> 
                </div>  
                <div class="tab-pane" xid="tabContent2"> 
                  <ul xid="ul2" class="b-breath-thr"> 
                    <li xid="li6" class="clearfix"> 
                      <div xid="div9" class="fl b-breath-thrA"> 
                        <span xid="span10"><![CDATA[3人]]></span> 
                      </div>  
                      <input type="radio" value="3" name="number" checked="checked"
                        xid="radio1" class="fr b-breath-thrB"/> 
                    </li>  
                    <li xid="li5" class="clearfix"> 
                      <div xid="div10" class="fl b-breath-thrA"> 
                        <span xid="span4"><![CDATA[5人]]></span> 
                      </div>  
                      <input type="radio" value="5" name="number" xid="radio2"
                        class="fr b-breath-thrB"/> 
                    </li>  
                    <li xid="li7" class="clearfix"> 
                      <div xid="div11" class="fl b-breath-thrA"> 
                        <span xid="span9"><![CDATA[10人]]></span> 
                      </div>  
                      <input type="radio" value="10" name="number" xid="radio3"
                        class="fr b-breath-thrB"/> 
                    </li> 
                  </ul> 
                </div>    
                <div class="tab-pane" xid="tabContent3"> 
                  <ul xid="ul2" class="b-breath-thr"> 
                    <li xid="li6" class="clearfix"> 
                      <div xid="div9" class="fl b-breath-thrA"> 
                        <span xid="span10"><![CDATA[语文]]></span> 
                      </div>  
                      <input type="radio" value="1" name="subject" checked="checked"
                        xid="radio1" class="fr b-breath-thrB"/> 
                    </li>  
                    <li xid="li5" class="clearfix"> 
                      <div xid="div10" class="fl b-breath-thrA"> 
                        <span xid="span4"><![CDATA[数学]]></span> 
                      </div>  
                      <input type="radio" value="2" name="subject" xid="radio2"
                        class="fr b-breath-thrB"/> 
                    </li>  
                    <li xid="li5" class="clearfix"> 
                      <div xid="div10" class="fl b-breath-thrA"> 
                        <span xid="span4"><![CDATA[英语]]></span> 
                      </div>  
                      <input type="radio" value="3" name="subject" xid="radio2"
                        class="fr b-breath-thrB"/> 
                    </li> 
                  </ul> 
                </div>  
                <div class="tab-pane" xid="tabContent4"> 
                  <ul xid="ul2" class="b-breath-thr"> 
                    <li xid="li6" class="clearfix"> 
                      <div xid="div9" class="fl b-breath-thrA"> 
                        <span xid="span10"><![CDATA[10题]]></span> 
                      </div>  
                      <input type="radio" value="1" name="questNum" checked="checked"
                        xid="radio1" class="fr b-breath-thrB"/> 
                    </li>  
                    <li xid="li5" class="clearfix"> 
                      <div xid="div10" class="fl b-breath-thrA"> 
                        <span xid="span4"><![CDATA[20题]]></span> 
                      </div>  
                      <input type="radio" value="2" name="" xid="radio2" class="fr b-breath-thrB"/> 
                    </li>  
                    <li xid="li7" class="clearfix"> 
                      <div xid="div11" class="fl b-breath-thrA"> 
                        <span xid="span9"><![CDATA[30题]]></span> 
                      </div>  
                      <input type="radio" value="3" name="" xid="radio3" class="fr b-breath-thrB"/> 
                    </li> 
                  </ul> 
                </div> 
              </div> 
            </div>  
            <div xid="div10"> 
              <div xid="div12" class="b-exam-four clearfix"> 
                <div xid="div11" class="b-exam-fourA fl"> 
                  <select component="$UI/system/components/justep/select/select"
                    class="form-control" xid="select2" name="sceneId" id="senceOption"> 
                    <option value="1" selected="true">日本和屋</option>  
                    <option value="2">海边沙滩</option>  
                    <option value="3">皑皑雪山</option> 
                  </select> 
                </div> 
              <div xid="div19" class="fr checkboxTwo"> 
                <input type="checkbox" value="1" name="isOpen" xid="checkbox2" checked="checked" bind-click="switchSence" id="checkboxTwoInput" />  
                <label xid="label1" for="checkboxTwoInput"><![CDATA[]]></label> 
              </div></div>  
               
            </div> 
          </div> 
        </form>  
        <div xid="div13" class="b-exam-five"> 
          <img src="$UI/OTO/assets/img/exam_3.png" alt="" xid="image6"/>  
          <span xid="span13"><![CDATA[请佩戴好生物电设备]]></span>  
          <div xid="div14" class="clearfix b-user-thr"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
              label="开始练习" xid="button1" bind-click="beginStudy"> 
              <i xid="i2"/>  
              <span xid="span14">开始练习</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
