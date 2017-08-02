<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    onParamsReceive="modelParamsReceive" style="top:12px;left:193px;height:auto;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" bind-attr="{title: title}"
        class="x-titlebar app-title-ctner"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            icon="icon-chevron-left" xid="backBtn" bind-click="goBack"> 
            <i class="icon-chevron-left"/>  
            <span>关闭</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" bind-text="title"/>
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C79F18A26610000120B4115050501F1E"
      style="bottom: 0px;"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-scroll-content" xid="div2"> 
          <form name="courseOpt" id="courseOpt"> 
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
              <div xid="div5" class="b-breath-oneA"> 
                <div component="$UI/system/components/bootstrap/tabs/tabs"
                  class="b-exam-top b-breath-BG" xid="tabs1"> 
                  <ul class="nav nav-tabs clearfix b-breath-two" xid="ul3"> 
                    <li class="active" xid="li8"> 
                      <a class="tab-btn" content="tabContent1" xid="tabItem1"> 
                        <span xid="span5"><![CDATA[放松场景]]></span> 
                      </a> 
                    </li>  
                    <li role="presentation" xid="li9"> 
                      <a class="tab-btn" content="tabContent2" xid="tabItem2"> 
                        <span xid="span6"><![CDATA[音乐场景]]></span> 
                      </a> 
                    </li>  
                    <li role="presentation" xid="li9"> 
                      <a class="tab-btn" content="tabContent3" xid="tabItem3"> 
                        <span xid="span7"><![CDATA[指导语]]></span> 
                      </a> 
                    </li>  
                    <li role="presentation" xid="li9"> 
                      <a class="tab-btn" content="tabContent4" xid="tabItem4"> 
                        <span xid="span8"><![CDATA[时长]]></span> 
                      </a> 
                    </li> 
                  </ul>  
                  <div class="tab-content" xid="div1"> 
                    <div class="tab-pane active" xid="tabContent1"> 
                      <ul xid="ul2" class="b-breath-thr"> 
                        <li xid="li6" class="clearfix"> 
                          <div xid="div9" class="fl b-breath-thrA"> 
                            <span xid="span10"><![CDATA[日本和屋]]></span> 
                          </div>  
                          <label xid="label6" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="1" name="sceneId" xid="radio6"
                              class="b-demo-radio" checked="checked"/>  
                            <span xid="span11" class="b-demo-radioInput"/>
                          </label>
                        </li>  
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <span xid="span4"><![CDATA[奇妙世界]]></span> 
                          </div>  
                          <label xid="label1" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="2" name="sceneId" xid="radio4"
                              class="b-demo-radio"/>  
                            <span xid="span1" class="b-demo-radioInput"/>
                          </label>
                        </li>  
                        <li xid="li7" class="clearfix"> 
                          <div xid="div11" class="fl b-breath-thrA"> 
                            <span xid="span9"><![CDATA[皑皑白雪]]></span> 
                          </div>  
                          <label xid="label2" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="3" name="sceneId" xid="radio5"
                              class="b-demo-radio"/>  
                            <span xid="span2" class="b-demo-radioInput"/>
                          </label>
                        </li> 
                      </ul> 
                    </div>  
                    <div class="tab-pane" xid="tabContent2"> 
                      <ul xid="ul2" class="b-breath-thr"> 
                        <li xid="li6" class="clearfix"> 
                          <div xid="div9" class="fl b-breath-thrA"> 
                            <span xid="span10"><![CDATA[歌曲一]]></span> 
                          </div>  
                          <label xid="label3" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="1" name="music" xid="radio7"
                              class="b-demo-radio" checked="checked"/>  
                            <span xid="span12" class="b-demo-radioInput"/>
                          </label>
                        </li>  
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <span xid="span4"><![CDATA[歌曲二]]></span> 
                          </div>  
                          <label xid="label4" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="2" name="music" xid="radio8"
                              class="b-demo-radio"/>  
                            <span xid="span15" class="b-demo-radioInput"/>
                          </label>
                        </li>  
                        <li xid="li7" class="clearfix"> 
                          <div xid="div11" class="fl b-breath-thrA"> 
                            <span xid="span9"><![CDATA[歌曲三]]></span> 
                          </div>  
                          <label xid="label5" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="3" name="music" xid="radio9"
                              class="b-demo-radio"/>  
                            <span xid="span16" class="b-demo-radioInput"/>
                          </label>
                        </li>
                        <li xid="li7" class="clearfix"> 
                          <div xid="div11" class="fl b-breath-thrA"> 
                            <span xid="span9"><![CDATA[歌曲四]]></span> 
                          </div>  
                          <label xid="label4" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="4" name="music" xid="radio8"
                              class="b-demo-radio"/>  
                            <span xid="span15" class="b-demo-radioInput"/>
                          </label>
                        </li>
                        <li xid="li7" class="clearfix"> 
                          <div xid="div11" class="fl b-breath-thrA"> 
                            <span xid="span9"><![CDATA[歌曲五]]></span> 
                          </div>  
                          <label xid="label4" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="5" name="music" xid="radio8"
                              class="b-demo-radio"/>  
                            <span xid="span15" class="b-demo-radioInput"/>
                          </label>
                        </li>
                      </ul> 
                    </div>  
                    <div class="tab-pane" xid="tabContent3"> 
                      <ul xid="ul2" class="b-breath-thr"> 
                        <li xid="li6" class="clearfix"> 
                          <div xid="div9" class="fl b-breath-thrA"> 
                            <span xid="span10"><![CDATA[打开指导语]]></span> 
                          </div>  
                          <label xid="label7" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="1" name="switch" xid="radio10"
                              class="b-demo-radio" checked="checked"/>  
                            <span xid="span17" class="b-demo-radioInput"/>
                          </label>
                        </li>  
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <span xid="span4"><![CDATA[关闭指导语]]></span> 
                          </div>  
                          <label xid="label8" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="0" name="switch" xid="radio11"
                              class="b-demo-radio"/>  
                            <span xid="span18" class="b-demo-radioInput"/>
                          </label>
                        </li> 
                      </ul> 
                    </div>  
                    <div class="tab-pane" xid="tabContent4"> 
                      <ul xid="ul2" class="b-breath-thr"> 
                        <li xid="li6" class="clearfix"> 
                          <div xid="div9" class="fl b-breath-thrA"> 
                            <span xid="span10"><![CDATA[三分钟]]></span> 
                          </div>  
                          <label xid="label9" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="1" name="duration" xid="radio12"
                              class="b-demo-radio" checked="checked"/>  
                            <span xid="span19" class="b-demo-radioInput"/>
                          </label>
                        </li>  
                        <li xid="li5" class="clearfix"> 
                          <div xid="div10" class="fl b-breath-thrA"> 
                            <span xid="span4"><![CDATA[五分钟]]></span> 
                          </div>  
                          <label xid="label10" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="2" name="duration" xid="radio13"
                              class="b-demo-radio"/>  
                            <span xid="span20" class="b-demo-radioInput"/>
                          </label>
                        </li>  
                        <li xid="li7" class="clearfix"> 
                          <div xid="div11" class="fl b-breath-thrA"> 
                            <span xid="span9"><![CDATA[十分钟]]></span> 
                          </div>  
                          <label xid="label11" class="fr b-breath-thrB b-demo-label"> 
                            <input type="radio" value="3" name="duration" xid="radio14"
                              class="b-demo-radio"/>  
                            <span xid="span21" class="b-demo-radioInput"/>
                          </label>
                        </li> 
                      </ul> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </form>  
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
