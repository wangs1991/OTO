<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" onParamsReceive="modelParamsReceive"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="公众演讲焦虑"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            icon="icon-chevron-left" xid="backBtn" bind-click="goBack"> 
            <i class="icon-chevron-left"/>  
            <span>关闭</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[公众演讲焦虑]]></div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C79F18A26610000120B4115050501F1E"
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
            <img src="$UI/OTO/assets/img/breath_1.jpg" alt="" xid="image2"
              class="b-exam-oneB"/>  
            <form name="courseOpt" id="courseOpt"> 
              <div xid="div5" class="b-breath-oneA"> 
                <div component="$UI/system/components/bootstrap/tabs/tabs"
                  class="b-exam-top b-breath-BG" xid="tabs1"> 
                  <ul class="nav nav-tabs clearfix b-breath-two tab-title-three"
                    xid="ul3"> 
                    <li class="active" xid="li8"> 
                      <a class="tab-btn" content="tabContent1" xid="tabItem1"> 
                        <img src="$UI/OTO/assets/img/breath_2.jpg" alt="" xid="image3"/>  
                        <span xid="span5"><![CDATA[场景难度]]></span> 
                      </a> 
                    </li>  
                    <li role="presentation" xid="li9"> 
                      <a class="tab-btn" content="tabContent2" xid="tabItem2"> 
                        <img src="$UI/OTO/assets/img/breath_3.jpg" alt="" xid="image4"/>  
                        <span xid="span6"><![CDATA[练习时长]]></span> 
                      </a> 
                    </li>  
                    <li role="presentation" xid="li9"> 
                      <a class="tab-btn" content="tabContent3" xid="tabItem3"> 
                        <img src="$UI/OTO/assets/img/breath_4.jpg" alt="" xid="image5"/>  
                        <span xid="span7"><![CDATA[场景人数]]></span> 
                      </a> 
                    </li> 
                  </ul>  
                  <div class="tab-content" xid="div1"> 
                    <div class="tab-pane active" xid="tabContent1"> 
                      <ul xid="ul2" class="b-breath-thr"> 
                        <li xid="li6" class="clearfix"> 
                          <div xid="div9" class="fl b-breath-thrA"> 
                            <img src="$UI/OTO/assets/img/breath_6.jpg" alt=""
                              xid="image7"/>  
                            <span xid="span10"><![CDATA[简单]]></span> 
                          </div>  
                          <input type="radio" value="1" name="difficulty" checked="checked"
                            xid="radio1" class="fr b-breath-thrB"/> 
                        </li>  
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <img src="$UI/OTO/assets/img/breath_7.jpg" alt=""
                              xid="image8"/>  
                            <span xid="span4"><![CDATA[困难]]></span> 
                          </div>  
                          <input type="radio" value="2" name="difficulty" xid="radio2"
                            class="fr b-breath-thrB"/> 
                        </li> 
                      </ul> 
                    </div>  
                    <div class="tab-pane" xid="tabContent2"> 
                      <ul xid="ul2" class="b-breath-thr"> 
                        <li xid="li6" class="clearfix"> 
                          <div xid="div9" class="fl b-breath-thrA"> 
                            <img src="$UI/OTO/assets/img/breath_6.jpg" alt=""
                              xid="image7"/>  
                            <span xid="span10"><![CDATA[1分钟]]></span> 
                          </div>  
                          <input type="radio" value="1" name="duration" checked="checked"
                            xid="radio1" class="fr b-breath-thrB"/> 
                        </li>  
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <img src="$UI/OTO/assets/img/breath_7.jpg" alt=""
                              xid="image8"/>  
                            <span xid="span4"><![CDATA[3分钟]]></span> 
                          </div>  
                          <input type="radio" value="2" name="duration" xid="radio2"
                            class="fr b-breath-thrB"/> 
                        </li>  
                        <li xid="li7" class="clearfix"> 
                          <div xid="div11" class="fl b-breath-thrA"> 
                            <img src="$UI/OTO/assets/img/breath_8.png" alt=""
                              xid="image9"/>  
                            <span xid="span9"><![CDATA[5分钟]]></span> 
                          </div>  
                          <input type="radio" value="3" name="duration" xid="radio3"
                            class="fr b-breath-thrB"/> 
                        </li>  
                        <li xid="li7" class="clearfix"> 
                          <div xid="div11" class="fl b-breath-thrA"> 
                            <img src="$UI/OTO/assets/img/breath_8.png" alt=""
                              xid="image9"/>  
                            <span xid="span9"><![CDATA[10分钟]]></span> 
                          </div>  
                          <input type="radio" value="4" name="duration" xid="radio3"
                            class="fr b-breath-thrB"/> 
                        </li> 
                      </ul> 
                    </div>  
                    <div class="tab-pane" xid="tabContent3"> 
                      <ul xid="ul2" class="b-breath-thr"> 
                        <li xid="li6" class="clearfix"> 
                          <div xid="div9" class="fl b-breath-thrA"> 
                            <img src="$UI/OTO/assets/img/breath_6.jpg" alt=""
                              xid="image7"/>  
                            <span xid="span10"><![CDATA[0人]]></span> 
                          </div>  
                          <input type="radio" value="1" name="number" checked="checked"
                            xid="radio1" class="fr b-breath-thrB"/> 
                        </li>  
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <img src="$UI/OTO/assets/img/breath_7.jpg" alt=""
                              xid="image8"/>  
                            <span xid="span4"><![CDATA[20人]]></span> 
                          </div>  
                          <input type="radio" value="2" name="number" xid="radio2"
                            class="fr b-breath-thrB"/> 
                        </li>
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <img src="$UI/OTO/assets/img/breath_7.jpg" alt=""
                              xid="image8"/>  
                            <span xid="span4"><![CDATA[40人]]></span> 
                          </div>  
                          <input type="radio" value="3" name="number" xid="radio2"
                            class="fr b-breath-thrB"/> 
                        </li>
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <img src="$UI/OTO/assets/img/breath_7.jpg" alt=""
                              xid="image8"/>  
                            <span xid="span4"><![CDATA[60人]]></span> 
                          </div>  
                          <input type="radio" value="4" name="number" xid="radio2"
                            class="fr b-breath-thrB"/> 
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
          </div>  
          <div xid="div13" class="b-exam-five"> 
            <img src="$UI/OTO/assets/img/exam_3.png" alt="" xid="image10"/>  
            <span xid="span13">请佩戴好生物电设备</span> 
          </div>  
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
