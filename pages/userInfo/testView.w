<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:m;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:412px;left:758px;"
    onLoad="modelLoad" onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="testData" idColumn="id" onCustomRefresh="testDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="xid1"/>  
      <column label="标题" name="title" type="String" xid="xid2"/>  
      <column label="问题1" name="question1" type="String" xid="xid3"/>  
      <column label="问题2" name="question2" type="String" xid="xid4"/>  
      <column label="问题3" name="question3" type="String" xid="xid5"/>  
      <column label="问题4" name="question4" type="String" xid="xid6"/>  
      <column label="问题1分数" name="question1_score" type="String" xid="xid7"/>  
      <column label="问题2分数" name="question2_score" type="String" xid="xid8"/>  
      <column label="问题3分数" name="question3_score" type="String" xid="xid9"/>  
      <column label="问题4分数" name="question4_score" type="String" xid="xid10"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="controlData" idColumn="id" onCustomRefresh="testDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="column1"/>  
      <column label="标题" name="title" type="String" xid="column2"/>  
      <column label="问题1" name="question1" type="String" xid="column3"/>  
      <column label="问题2" name="question2" type="String" xid="column4"/>  
      <column label="问题3" name="question3" type="String" xid="column5"/>  
      <column label="问题4" name="question4" type="String" xid="column6"/>  
      <column label="问题1分数" name="question1_score" type="String" xid="column7"/>  
      <column label="问题2分数" name="question2_score" type="String" xid="column8"/>  
      <column label="问题3分数" name="question3_score" type="String" xid="column9"/>  
      <column label="问题4分数" name="question4_score" type="String" xid="column10"/>  
      <column label="选择1" name="select1" type="Boolean" xid="xid11"/>  
      <column label="选择2" name="select2" type="Boolean" xid="xid12"/>  
      <column label="选择3" name="select3" type="Boolean" xid="xid13"/>  
      <column label="选择4" name="select4" type="Boolean" xid="xid14"/>  
      <data xid="default6">[{"id":"11","title":"测试","question1":"没有或很少时间","question2":"少部分时间","question3":"相当多时间","question4":"绝大部分或全部时间","question1_score":"1","question2_score":"2","question3_score":"3","question4_score":"4","select1":"false"}]</data>  
      <column label="进度" name="progress" type="String" xid="xid15"/>  
      <column label="得分" name="score" type="String" xid="xid16"/>  
      <column label="总数" name="total" type="String" xid="xid17"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"
    style="background-color:#FFFFFF;"> 
    <div class="x-panel-content x-cards panel-body" style="background-color:#F1F1F1;"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel4" style='display:""'> 
        <div class="x-panel-top" xid="top1"> 
          <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
            xid="titleBar1"> 
            <div class="x-titlebar-left" xid="left1" bind-click="goBack"> 
              <i class="webapp ic-back"/> 
            </div>  
            <div class="x-titlebar-title" xid="div20" bind-click="searchBtnClick"> 
              <div xid="searchBoxDiv"> <![CDATA[焦虑自评量表]]> </div> 
            </div>  
            <div class="x-titlebar-right reverse" xid="div3"> 
              <span class="pull-right text-small-danger"><![CDATA[ ]]></span> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content4"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
            xid="panel1" style="display:&quot;&quot;"> 
            <div class="x-panel-content" xid="content2"> 
              <div component="$UI/system/components/bootstrap/carousel/carousel"
                class="x-carousel carousel" xid="image_carousel1" auto="false" style="height:251px;"
                interval="1"> 
                <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents"
                  active="0" slidable="true" wrap="true" swipe="true" xid="contents1"
                  routable="false"> 
                  <div class="x-contents-content" xid="content1"> 
                    <img src="$UI/xlzl/main/img/jiaolvbg.png" alt="" xid="titleImage"
                      class="image-wall tb-img" style="height:254px;"/> 
                  </div> 
                </div> 
              </div>  
              <div class="section-card mgt-15" xid="clickListGroup"> 
                <div class="content-detail" xid="bottomDiv">请您仔细阅读每一个陈述，根据您最近的一周实际感觉做出回答。从“没有或很少时间”到“绝大部分或全部时间”表示不同的程度。
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-primary button block mgt-20" label="开始测试" xid="goTestButton"
                    onClick="goTestButtonClick"> 
                    <span xid="span2">开始测试</span> 
                  </a> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <!-- panel 答题部分-->  
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2" style="display:none"> 
        <div class="x-panel-top" xid="top2"> 
          <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
            xid="titleBar2"> 
            <div class="x-titlebar-left" xid="left2" bind-click="goBack"> 
              <i class="webapp ic-back" xid="i1"/> 
            </div>  
            <div class="x-titlebar-title" xid="title1" bind-click="searchBtnClick"> 
              <div xid="div2">焦虑自评量表</div> 
            </div>  
            <div class="x-titlebar-right reverse" xid="right1"> 
              <span class="pull-right text-small-danger" xid="span1"/> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content section-card section-normal" xid="content3"
          style="top:48px;"> 
          <!-- 进度指示 -->  
          <div class="progress" align="justify" dir="rtl"> 
            <div class="progress-bar" role="progressbar" aria-valuenow="0"
              aria-valuemin="0" aria-valuemax="100" style="width: $model.controlData.ref('progress');"
              bind-style="{width:  $model.controlData.val(&quot;progress&quot;) /  $model.controlData.val(&quot;total&quot;) * 100 + '%'}"> 
                
                
               
            </div> 
          </div>  
          <!-- 问题面板 -->  
          <div xid="progressInfoDiv" style="position:relative;height:0px;width:100%;top:-40px;" class="text-white-shadow"><span xid="progressSpan" class="pull-left" style="margin-left: 5px;" bind-text="$model.controlData.ref(&quot;progress&quot;)" /><span class="pull-left">/</span><span xid="span9" class="pull-left" bind-text="$model.controlData.val(&quot;total&quot;)" /></div><div class="content-card question-list" xid="listGroup3"> 
            <div class="panel panel-default"> 
              <!-- Default panel contents -->  
              <div class="panel-body" xid="titleDiv"> 
                <p xid="titleSpan" class="main-title mgb-not" bind-text="$model.controlData.val(&quot;title&quot;)"><![CDATA[11]]></p> 
              </div>  
              <!-- List group -->  
              <ul class="list-group"> 
                <li class="list-group-item" xid="line1Div"> 
                  <div component="$UI/system/components/justep/button/radio"
                    class="x-radio sub-title" xid="radio1" bind-value="$model.controlData.ref(&quot;select1&quot;)"
                    bind-click="radio1Click" bind-label="$model.controlData.val(&quot;question1&quot;)"/> 
                </li>  
                <li class="list-group-item" xid="line2Div"> 
                  <div component="$UI/system/components/justep/button/radio"
                    class="x-radio sub-title" xid="radio2" bind-value="$model.controlData.ref(&quot;select2&quot;)"
                    bind-click="radio2Click" bind-label="$model.controlData.ref(&quot;question2&quot;)"/> 
                </li>  
                <li class="list-group-item" xid="line3Div"> 
                  <div component="$UI/system/components/justep/button/radio"
                    class="x-radio sub-title" xid="radio3" bind-value="$model.controlData.ref(&quot;select3&quot;)"
                    bind-click="radio3Click" bind-label="$model.controlData.ref(&quot;question3&quot;)"/> 
                </li>  
                <li class="list-group-item" xid="line4Div"> 
                  <div component="$UI/system/components/justep/button/radio"
                    class="x-radio sub-title" xid="radio4" bind-value="$model.controlData.ref(&quot;select4&quot;)"
                    bind-click="radio4Click" bind-label="$model.controlData.ref(&quot;question4&quot;)"/> 
                </li> 
              </ul> 
            </div> 
          </div>  
          <div class="flex-list"> 
            <div class="flex-item"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-primary button"
                label="上一题" xid="preButton" onClick="preButtonClick"> 
                <i xid="i2"/>  
                <span xid="span3">上一题</span> 
              </a> 
            </div>  
            <div class="flex-item" xid="applyButton"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-primary button"
                label="提交" onClick="applyButtonClick"> 
                <i xid="i6"/>  
                <span xid="span16">提交</span> 
              </a> 
            </div>
            <div class="flex-item">
              <a component="$UI/system/components/justep/button/button" class="btn btn-primary button"
                label="下一题" xid="nextButton" onClick="nextButtonClick"> 
                <i xid="i5"/>  
                <span xid="span15">下一题</span> 
              </a> 
            </div>  
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel3" style='display: none'> 
        <div class="x-panel-top" xid="top3"> 
          <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
            xid="titleBar3"> 
            <div class="x-titlebar-left" xid="left3" bind-click="goBack"> 
              <i class="webapp ic-back" xid="i3"/> 
            </div>  
            <div class="x-titlebar-title" xid="title2" bind-click="searchBtnClick"> 
              <div xid="div4">焦虑自评量表</div> 
            </div>  
            <div class="x-titlebar-right reverse" xid="right2"> 
              <span class="pull-right text-small-danger" xid="span10"/> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content6"> 
          <div class="section-card content-detail"> 
            <div xid="scoreSpan" class="score-big" bind-text="$model.controlData.ref(&quot;score&quot;)"/> 
          </div>  
          <div class="section-card content-detail mgt-10"> 
            <div class="sub-title" xid="testCompleteInfoDiv1">以上得分是你的焦虑指数。当超过56分时，说明你存在焦虑。请及时联络心理医生。</div>  
            <div class="sub-title" xid="testCompleteInfoDiv2" style="display:none">以上分数为您的焦虑等级。</div><a component="$UI/system/components/justep/button/button" class="btn btn-primary button block mgt-20"
              label="确定" xid="closeButton" onClick="closeButtonClick"> 
              <i xid="i4"/>  
              <span xid="span7">确定</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
