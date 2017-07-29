<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:241px;left:673px;"
    onunLoad="modelUnLoad" onLoad="modelLoad" onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="courseData" idColumn="id" limit="10" onCustomRefresh="courseDataCustomRefresh" confirmRefresh="false"> 
      <column label="用户id" name="uid" type="Integer" xid="column1"/>  
      <column label="id" name="id" type="String" xid="xid1"/>  
      <column label="id" name="id" type="String" xid="column1"/>  
      <column label="课程" name="course" type="String" xid="column2"/>  
      <column label="标题" name="title" type="Integer" xid="xid1"/>  
      <column label="需要完成日期" name="date" type="String" xid="xid2"/>  
      <column name="scene" type="String" xid="xid3"/>  
      <column label="是否完成课程" name="complete" type="String" xid="xid5"/> 
    <master xid="default2" data="controlData"></master></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="controlData" idColumn="id"> 
      <column label="id" name="id" type="Integer" xid="xid4"/>  
      <column label="自命题演讲1" name="selfSelect1" type="String" xid="xid6"/>  
      <column label="自命题演讲2" name="selfSelect2" type="String" xid="xid7"/>  
      <column label="自命题演讲3" name="selfSelect3" type="String" xid="xid8"/>  
      <column label="自命题演讲4" name="selfSelect4" type="String" xid="xid9"/>  
      <data xid="default1">[{"id":1,"selfSelect1":"请选择","selfSelect2":"请选择","selfSelect3":"请选择","selfSelect4":"请选择"}]</data> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    style="background-color:#FFFFFF;" xid="panel2"> 
    <div class="x-panel-content tb-trans" xid="content1"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents2" swipe="false" wrap="false" slidable="false" onActiveChange="contents2ActiveChange"
        style="background-color:white;"> 
        <div class="x-contents-content x-cards" xid="homeContent"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-has-iosstatusbar"
            xid="panel3"> 
            <div class="x-panel-top" xid="top1" height="48"> 
              <div component="$UI/system/components/justep/titleBar/titleBar"
                class="x-titlebar app-title-ctner" xid="titleBar1"> 
                <div class="x-titlebar-left" xid="left1" bind-click="goBack"> 
                  <i class="webapp ic-back"/> 
                </div>  
                <div class="x-titlebar-title" xid="div20" bind-click="searchBtnClick"> 
                  <div xid="searchBoxDiv"> <![CDATA[演讲主题选择]]> </div> 
                </div>  
                <div class="x-titlebar-right reverse" xid="div3"> 
                  <span class="pull-right text-small-danger"><![CDATA[ ]]></span> 
                </div> 
              </div> 
            </div>  
            <div class="x-panel-content  x-scroll-view" xid="content3" style="bottom: 70px; top: 48px;"
              _xid="C77FE8165900000191B1AC01284C1DAF"> 
              <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                xid="scrollView1"> 
                <div class="x-scroll-content" xid="div4"> 
                  <div class="section-card content-detail main-title x-scroll-view">我们为你准备了三种演讲模式，你可以选择命题演讲；也可以阅读故事后，复述故事内容；如果你已经准备好了演讲内容，你可以选择自命题演讲。点击开始进入暴露练习。</div>  
                  <div component="$UI/system/components/justep/button/buttonGroup"
                    class="btn-group btn-group-justified mgt-10 content-btn-group"
                    tabbed="true" xid="buttonGroup3"> 
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-link btn-icon-top active" label="命题演讲" xid="jiaolvButton"
                      target="jiaolvContent"> 
                      <span xid="span38">命题演讲</span> 
                    </a>  
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-link btn-icon-top" label="故事复述" xid="yiyuButton"
                      target="yiyuContent"> 
                      <span xid="span39">故事复述</span> 
                    </a>  
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-link btn-icon-top" label="自命题演讲" xid="kongbuButton"
                      target="kongbuContent"> 
                      <span xid="span5">自命题演讲</span> 
                    </a> 
                  </div>  
                  <div component="$UI/system/components/justep/panel/panel"
                    class="panel x-card tb-range-no-line" xid="panel1" style="padding-bottom: 20px;"> 
                    <div component="$UI/system/components/justep/contents/contents"
                      class="x-contents tb-range-no-line" active="0" swipe="false"
                      wrap="false" xid="contents1"> 
                      <div class="x-contents-content x-cards section-card"
                        xid="jiaolvContent"> 
                        <ul class="app-list" xid="ul3"> 
                          <li class="list-group-item text-white" xid="yanjiangLi"
                            bind-click="selfSelectLiClick1"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row1"> 
                              <div class="col col-xs-9" xid="col1"> 
                                <div class="sub-title"><![CDATA[1、你认为儿童的素质教育包括哪些方面？]]></div> 
                              </div>  
                              <div class="col col-xs-3" xid="col3"> 
                                <span component="$UI/system/components/justep/button/radio"
                                  class="x-radio pull-right" xid="radio1" name="options"
                                  bind-val="$model.controlData.ref(&quot;selfSelect1&quot;)"/>  
                                <!-- <span class="lab-title f-fr" xid="span48" bind-text="$model.controlData.ref(&quot;selfSelect1&quot;)"><![CDATA[点击选择
        ]]></span>  --> 
                              </div> 
                            </div> 
                          </li>  
                          <li class="list-group-item text-white" xid="kaoshiLi"
                            bind-click="selfSelectLiClick2"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row2"> 
                              <div class="col col-xs-9" xid="col4"> 
                                <div class="sub-title"><![CDATA[2、节日的庆祝方式有很多，不过绝大多数中国人还是选择和亲朋好友聚餐，你有什么合理建议吗？]]></div> 
                              </div>  
                              <div class="col col-xs-3" xid="col5"> 
                                <span component="$UI/system/components/justep/button/radio"
                                  class="x-radio pull-right" xid="radio2" name="options"
                                  bind-val="$model.controlData.ref(&quot;selfSelect2&quot;)"/>  
                                <!-- <span class="lab-title f-fr" xid="span50" bind-text="$model.controlData.ref(&quot;selfSelect2&quot;)"><![CDATA[点击选择
        ]]></span>  --> 
                              </div> 
                            </div> 
                          </li>  
                          <li class="list-group-item text-white" xid="quanweiLi"
                            bind-click="selfSelectLiClick3"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row3"> 
                              <div class="col col-xs-9" xid="col7"> 
                                <div class="sub-title"><![CDATA[3、你怎么看待“X二代”现象？]]></div> 
                              </div>  
                              <div class="col col-xs-3" xid="col8"> 
                                <span component="$UI/system/components/justep/button/radio"
                                  class="x-radio pull-right" xid="radio3" name="options"
                                  bind-val="$model.controlData.ref(&quot;selfSelect3&quot;)"/>  
                                <!-- <span class="lab-title f-fr" xid="span45" bind-text="$model.controlData.ref(&quot;selfSelect3&quot;)"><![CDATA[点击选择
        ]]></span>  --> 
                              </div> 
                            </div> 
                          </li>  
                          <li class="list-group-item text-white" xid="li1"
                            bind-click="selfSelectLiClick4"> 
                            <div component="$UI/system/components/bootstrap/row/row"
                              class="row" xid="row4"> 
                              <div class="col col-xs-9" xid="col10"> 
                                <div class="sub-title"><![CDATA[4、你怎么认识“不要让孩子输在起跑线上”这样的看法？]]></div> 
                              </div>  
                              <div class="col col-xs-3" xid="col11"> 
                                <span component="$UI/system/components/justep/button/radio"
                                  class="x-radio pull-right" xid="radio4" name="options"
                                  bind-val="$model.controlData.ref(&quot;selfSelect4&quot;)"/>  
                                <!-- <span class="lab-title f-fr" xid="span9" bind-text="$model.controlData.ref(&quot;selfSelect4&quot;)"><![CDATA[点击选择
    ]]></span>  --> 
                              </div> 
                            </div> 
                          </li> 
                        </ul> 
                      </div>  
                      <div class="x-contents-content  content-detail" xid="yiyuContent">　　 　　 　　 
                        <h2 xid="div6" class="main-title" style="text-align: center;">买椟还珠</h2>  
                        <div xid="div2" class="sub-title" style="position:relative;background-color:#FFFFFF;">一个楚国人，他有一颗漂亮的珍珠，他打算把这颗珍珠卖出去。为了卖个好价钱，他便动脑筋要将珍珠好好包装一下，他觉得有了高贵的包装，那么珍珠的“身份”就自然会高起来。</div>  
                        <div xid="div2" class="sub-title" style="position:relative;background-color:#FFFFFF;">这个楚国人找来名贵的木兰，又请来手艺高超的匠人，为珍珠做了一个盒子（即椟），用桂椒香料把盒子熏得香气扑鼻。然后，在盒子的外面精雕细刻了许多好看的花纹，还镶上漂亮的金属花边，看上去，闪闪发亮，实在是一件精致美观的工艺品。  这样，楚人将珍珠小心翼翼地放进盒子里，拿到市场上去卖。</div>  
                        <div xid="div2" class="sub-title" style="position:relative;background-color:#FFFFFF;">到市场上不久，很多人都围上来欣赏楚人的盒子。一个郑国人将盒子拿在手里看了半天，爱不释手，终于出高价将楚人的盒子买了下来。郑人交过钱后，便拿着盒子往回走。可是没走几步他又回来了。楚人以为郑人后悔了要退货，没等楚人想完，郑人已走到楚人跟前。只见郑人将打开的盒子里的珍珠取出来交给楚人说：“先生，您将一颗珍珠忘放在盒子里了，我特意回来还珠子的。”于是郑人将珍珠交给了楚人，然后低着头一边欣赏着木盒子，一边往回走去。</div>  
                        <div xid="div2" class="sub-title" style="position:relative;background-color:#FFFFFF;">楚人拿着被退回的珍珠，十分尴尬地站在那里。他原本以为别人会欣赏他的珍珠，可是没想到精美的外包装超过了包装盒内的价值，以致于“喧宾夺主”，令楚人哭笑不得。</div> 
                      </div>  
                      <div class="x-contents-content content-detail" xid="kongbuContent"> 
                        <div xid="span1"><![CDATA[我已经准备好了自己的演讲内容。点击开始进入暴露练习。]]></div> 
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom btn-card" xid="bottom1" height="70" style="background-color:#FFFFFF;"> 
      <!-- <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified bg-primary"
        tabbed="true" xid="buttonGroup1">  -->  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default button block"
        label="开始" xid="startButton" onClick="startButtonClick"> 
        <i xid="i4"/>  
        <span xid="span30">开始</span> 
      </a>  
      <!-- </div>  --> 
    </div> 
  </div> 
</div>
