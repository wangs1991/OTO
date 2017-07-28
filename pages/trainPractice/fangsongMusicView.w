<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:41px;left:737px;"
    onParamsReceive="modelParamsReceive" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="fangsongMusicData" idColumn="id" onCustomRefresh="fangsongMusicDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="column1"></column>
  <column label="标题" name="fPlayCount" type="String" xid="column2"></column>
  <column label="图片" name="fMusicName" type="String" xid="column3"></column>
  <column label="邮费" name="fImg" type="String" xid="column6"></column>
  <rule xid="rule1">
   <col name="fCommentsNumber" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default3">$model.commentsData.count()</expr></calculate> </col> </rule>
  <column label="音乐url" name="fMusicUrl" type="String" xid="xid1"></column></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatu"
    style="background-color:white;"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
        xid="titleBar"> 
        <div class="x-titlebar-left" xid="left1" bind-click="goBack"> 
          <i class="webapp ic-back"/> 
        </div>  
        <div class="x-titlebar-title" xid="div20" bind-click="searchBtnClick"> 
          <div xid="searchBoxDiv"> <![CDATA[放松训练]]> </div> 
        </div>  
        <div class="x-titlebar-right reverse" xid="div3"> 
          <span class="pull-right"/> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content x-cards"> 
      <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel carousel section-card"
        xid="carousel1" auto="false" style="height:251px;" interval="1"> 
        <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents"
          active="0" slidable="true" wrap="true" swipe="true" xid="contents1" routable="false"> 
          <div class="x-contents-content" xid="content1"> 
            <div xid="div3" style="position:relative;width:0px;height:0px;"/>  
            <img src="$UI/xlzl/img/expose/FangSongBG.gif" alt="" xid="image1"
              class="image-wall tb-img"/> 
          </div> 
        </div> 
      </div>  
      <div class="section-card"> 
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified content-btn-group main-title"
          tabbed="true" xid="buttonGroup3"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top active"
            label="白天场景" xid="dayBtn" target="dayContent"> 
            <i xid="i14"/>  
            <span xid="span31">白天场景</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
            label="夜晚场景" xid="nightBtn" target="nightContent"> 
            <i xid="i15"/>  
            <span xid="span33">夜晚场景</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
            label="自定义音乐" xid="customButton" target="customContent"> 
            <i xid="i1"/>  
            <span xid="span1">自定义音乐</span> 
          </a> 
        </div>  
        <div component="$UI/system/components/justep/contents/contents" class="x-contents tb-range-no-line"
          active="0" swipe="false" wrap="false" xid="contents2" style="background-color:white;"> 
          <div class="x-contents-content x-cards" xid="dayContent" style="background-color:white;"> 
            <div component="$UI/system/components/justep/list/list" class="x-list"
              xid="list1" data="fangsongMusicData" limit="6" style="background-color:white;"> 
              <ul class="x-list-template app-list" xid="listTemplateUl1"> 
                <li xid="li6" class="media tb-range-bottom_line" bind-click="listClick"> 
                  <div xid="div10" class="media-left" style="position:relative;"> 
                    <img alt="" xid="image2" bind-attr-src=" val(&quot;fImg&quot;)" style="width:50px;"
                      height="50px" class="center-block  img-rounded "/> 
                  </div>  
                  <div class="media-body" xid="div14"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row1"> 
                      <div class="col col-xs-10" xid="col1"> 
                        <div class="main-title" bind-text="ref(&quot;fMusicName&quot;)"/>  
                        <div class="sub-title" xid="div1"> 
                          <span xid="span24"><![CDATA[播放次数：]]></span>  
                          <span xid="span5" bind-text="ref(&quot;fPlayCount&quot;)"/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-2" xid="col3"> 
                        <span component="$UI/system/components/justep/button/radio"
                          class="x-radio pull-right mgt-10" xid="radio1" name="dayMiusic" bind-click="radio1Click"/> 
                      </div> 
                    </div> 
                  </div> 
                </li> 
              </ul> 
            </div> 
          </div>  
          <div class="x-contents-content  x-cards" xid="nightContent"> 
            <div component="$UI/system/components/justep/list/list" class="x-list"
              xid="list2" data="fangsongMusicData" limit="6" style="background-color:white;"> 
              <ul class="x-list-template app-list" xid="listTemplateUl2"> 
                <li xid="li1" class="media tb-range-bottom_line" bind-click="listClick"> 
                  <div xid="mediaLeft1" class="media-left" style="position:relative;"> 
                    <img alt="" xid="image3" bind-attr-src=" val(&quot;fImg&quot;)" style="width:50px;"
                      height="50px" class="center-block  img-rounded "/> 
                  </div>  
                  <div class="media-body" xid="mediaBody1" style="background-color:white;"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row2"> 
                      <div class="col col-xs-10" xid="col3"> 
                        <div class="main-title" bind-text="ref(&quot;fMusicName&quot;)"/>  
                        <div class="sub-title" xid="div1"> 
                          <span xid="span27" class="pull-left">播放次数：</span>  
                          <span xid="span34" class="pull-left" bind-text="ref(&quot;fPlayCount&quot;)"/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-2" xid="col4"> 
                        <span component="$UI/system/components/justep/button/radio"
                          class="x-radio pull-right" xid="radio3" name="nightMusic"/> 
                      </div> 
                    </div> 
                  </div> 
                </li> 
              </ul> 
            </div> 
          </div>  
          <div class="x-contents-content" xid="customContent"> 
            <div component="$UI/system/components/justep/list/list" class="x-list"
              xid="list3" data="fangsongMusicData" limit="6" style="background-color:white;"> 
              <ul class="x-list-template app-list" xid="listTemplateUl3"> 
                <li xid="li2" class="media tb-range-bottom_line" bind-click="listClick"> 
                  <div xid="mediaLeft2" class="media-left" style="position:relative;"> 
                    <img alt="" xid="image4" bind-attr-src=" val(&quot;fImg&quot;)" style="width:50px;"
                      height="50px" class="center-block  img-rounded "/> 
                  </div>  
                  <div class="media-body" xid="mediaBody2"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row3"> 
                      <div class="col col-xs-10" xid="col5"> 
                        <div class="main-title" bind-text="ref(&quot;fMusicName&quot;)"/>  
                        <div class="sub-title" xid="div1"> 
                          <span xid="span36" class="pull-left">播放次数：</span>  
                          <span xid="span41" class="pull-left" bind-text="ref(&quot;fPlayCount&quot;)"/> 
                        </div> 
                      </div>  
                      <div class="col col-xs-2" xid="col6"> 
                        <span component="$UI/system/components/justep/button/radio"
                          class="x-radio pull-right" xid="radio4" name="otherMusic"/> 
                      </div> 
                    </div> 
                  </div> 
                </li> 
              </ul> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom btn-card" xid="bottom1" height="70" style="background-color:#FFFFFF;"> 
      <!-- <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified bg-primary"
        tabbed="true" xid="buttonGroup1">  -->  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default button block"
        label="开始练习" xid="gobutton" onClick="gobuttonClick"> 
        <i xid="i2"/>  
        <span xid="span2">开始练习</span> 
      </a>  
      <!-- </div>  --> 
    </div>  
    <!-- <div class="x-panel-bottom" xid="bottom1" height="50"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
        tabbed="true" xid="buttonGroup1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default"
          label="开始练习" xid="gobutton" onClick="gobuttonClick"> 
          <i xid="i2"/>  
          <span xid="span2">开始练习</span> 
        </a> 
      </div> 
    </div> --> 
  </div> 
</div>
