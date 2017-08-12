<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:399px;left:547px;"
    onLoad="modelLoad" onParamsReceive="modelParamsReceive" onunLoad="modelUnLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="testData" idColumn="id" onCustomRefresh="testDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="xid1"/>  
      <column label="标题" name="title" type="String" xid="xid2"/>  
      <column label="问题1" name="question1" type="String" xid="xid3"/>  
      <column label="问题2" name="question2" type="String" xid="xid4"/>  
      <column label="问题3" name="question3" type="String" xid="xid5"/>  
      <column label="问题4" name="question4" type="String" xid="xid6"/>  
      <column label="问题5" name="question5" type="String" xid="xid20"/>  
      <column label="问题1分数" name="question1_score" type="String" xid="xid7"/>  
      <column label="问题2分数" name="question2_score" type="String" xid="xid8"/>  
      <column label="问题3分数" name="question3_score" type="String" xid="xid9"/>  
      <column label="问题4分数" name="question4_score" type="String" xid="xid10"/>  
      <column label="问题5分数" name="question5_score" type="String" xid="xid21"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="controlData" idColumn="id" onCustomRefresh="testDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="column1"/>  
      <column label="表格类型" name="table" type="String" xid="xid23"/>  
      <column label="标题" name="title" type="String" xid="column2"/>  
      <column label="问题1" name="question1" type="String" xid="column3"/>  
      <column label="问题2" name="question2" type="String" xid="column4"/>  
      <column label="问题3" name="question3" type="String" xid="column5"/>  
      <column label="问题4" name="question4" type="String" xid="column6"/>  
      <column label="问题5" name="question5" type="String" xid="xid18"/>  
      <column label="问题1分数" name="question1_score" type="String" xid="column7"/>  
      <column label="问题2分数" name="question2_score" type="String" xid="column8"/>  
      <column label="问题3分数" name="question3_score" type="String" xid="column9"/>  
      <column label="问题4分数" name="question4_score" type="String" xid="column10"/>  
      <column label="问题5分数" name="question5_score" type="String" xid="xid19"/>  
      <column label="选择1" name="select1" type="Boolean" xid="xid11"/>  
      <column label="选择2" name="select2" type="Boolean" xid="xid12"/>  
      <column label="选择3" name="select3" type="Boolean" xid="xid13"/>  
      <data xid="default6">[{"id":"11","title":"测试","question1":"没有或很少时间","question2":"少部分时间","question3":"相当多时间","question4":"绝大部分或全部时间","question1_score":"1","question2_score":"2","question3_score":"3","question4_score":"4","select1":"false"}]</data>  
      <column label="选择4" name="select4" type="Boolean" xid="xid14"/>  
      <column label="选择5" name="select5" type="Boolean" xid="xid22"/>  
      <column label="进度" name="progress" type="String" xid="xid15"/>  
      <column label="得分" name="score" type="String" xid="xid16"/>  
      <extendType xid="extendType1"/>  
      <column label="总数" name="total" type="String" xid="xid17"/>  
      <column label="得分F" name="score_f" type="String" xid="xid24"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"
    style="background-color:#FFFFFF;" xid="panel6"> 
    <div class="x-panel-content x-cards panel-body" style="background-color:#F1F1F1;"
      xid="content7"> 
      <!-- <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel4" style="display:&quot;&quot;"> 
        <div class="x-panel-top" xid="top1"> 
          <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
            xid="titleBar1"> 
            <div class="x-titlebar-left" xid="left1" bind-click="goBack"> 
              <i class="webapp ic-back" xid="i8"/>
            </div>  
            <div class="x-titlebar-title" xid="div20" bind-click="searchBtnClick"> 
              <div xid="searchBoxDiv"/>
            </div>  
            <div class="x-titlebar-right reverse" xid="div3"> 
              <span class="pull-right text-small-danger" xid="span6"/>
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content4"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
            xid="panel1" style="display:&quot;&quot;"> 
            <div class="x-panel-content" xid="content2" style="height:100%;background-color:transparent;"> 
              <div component="$UI/system/components/bootstrap/carousel/carousel"
                class="x-carousel carousel" xid="image2" auto="false" style="height:251px;"
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
      </div>  -->  
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2"> 
          <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
            xid="titleBar2" style="width:100%;"> 
            <div class="x-titlebar-left" xid="left2" bind-click="goBack"> 
              <i class="webapp ic-back" xid="i1" style="width:100%;"/> 
            </div>  
            <div class="x-titlebar-title" xid="title1" bind-click="searchBtnClick"
              style="background-color:transparent;"> 
              <div xid="div2" class="title_on"/> 
            </div>  
            <div class="x-titlebar-right reverse" xid="right1"> 
              <span class="pull-right text-small-danger" xid="span1"/> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content section-card section-normal" xid="content3"
          style="top:48px;"> 
          <div class="progress" align="justify" dir="rtl" xid="div11"> 
            <div class="progress-bar" role="progressbar" aria-valuenow="0"
              aria-valuemin="0" aria-valuemax="100" style="width: $model.controlData.ref('progress');"
              bind-style="{width:  $model.controlData.val(&quot;progress&quot;) /  $model.controlData.val(&quot;total&quot;) * 100 + '%'}"
              xid="progressBar2"/> 
          </div>  
          <div xid="progressInfoDiv" style="position:relative;height:0px;width:100%;top:-50px;"
            class="text-white-shadow"> 
            <span xid="progressSpan" class="pull-left" style="margin-left: 5px;"
              bind-text="$model.controlData.ref(&quot;progress&quot;)"/>  
            <span class="pull-left" xid="span8">/</span>  
            <span xid="span9" class="pull-left" bind-text="$model.controlData.val(&quot;total&quot;)"/> 
          </div>  
          <div class="content-card question-list" xid="listGroup" style="display:none;"> 
            <div class="panel panel-default" xid="div12"> 
              <div class="panel-body" xid="titleDiv" style="height:100%;width:100%;"
                align="left"> 
                <p xid="titleSpan" class="main-title mgb-not" bind-text="$model.controlData.val(&quot;title&quot;)"
                  style="background-color:transparent;">11</p> 
              </div>  
              <ul class="list-group" xid="ul2"> 
                <li class="list-group-item" xid="line1Div"> 
                  <div component="$UI/system/components/justep/button/radio"
                    class="x-radio sub-title" xid="radio1" bind-value="$model.controlData.ref(&quot;select1&quot;)"
                    bind-click="radio1Click" bind-label="$model.controlData.val(&quot;question1&quot;)"/> 
                </li>  
                <li class="list-group-item" xid="line2Div"> 
                  <div component="$UI/system/components/justep/button/radio"
                    class="x-radio sub-title" xid="radio2" bind-value="$model.controlData.ref(&quot;select2&quot;)"
                    bind-click="radio2Click" bind-label="$model.controlData.ref(&quot;question2&quot;)"
                    checked="true"/> 
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
                <li class="list-group-item" xid="line5Div"> 
                  <div component="$UI/system/components/justep/button/radio"
                    class="x-radio sub-title" xid="radio5" bind-value="$model.controlData.ref(&quot;select5&quot;)"
                    bind-click="radio5Click" bind-label="$model.controlData.val(&quot;question5&quot;)"/> 
                </li> 
              </ul> 
            </div> 
          </div>  
          <div class="flex-list mgt-20" xid="div13"> 
            <div class="flex-item" xid="div14"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
                label="上一题" xid="preButton" onClick="preButtonClick"> 
                <i xid="i2"/>  
                <span xid="span3">上一题</span> 
              </a> 
            </div>  
            <div class="flex-item" xid="applyButton"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
                label="提交" onClick="applyButtonClick" xid="button2"> 
                <i xid="i6"/>  
                <span xid="span16">提交</span> 
              </a> 
            </div>  
            <div class="flex-item" xid="div15" id="lastBtn"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default b-user-thrButton"
                label="下一题" xid="nextButton" onClick="nextButtonClick"> 
                <i xid="i5"/>  
                <span xid="span15">下一题</span> 
              </a> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel3" style="display: none;"> 
        <div class="x-panel-top" xid="top3"> 
          <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
            xid="titleBar3"> 
            <div class="x-titlebar-left" xid="left3" bind-click="goBack"> 
              <i class="webapp ic-back" xid="i3"/> 
            </div>  
            <div class="x-titlebar-title" xid="title2" bind-click="searchBtnClick"> 
              <div xid="div4" class="title_two">自评量结果</div> 
            </div>  
            <div class="x-titlebar-right reverse" xid="right2"> 
              <span class="pull-right text-small-danger" xid="span10"/> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content6"> 
          <div class="section-card score-card content-detail" xid="div16"> 
            <h1 xid="h11" class="scotxt"><![CDATA[你的演讲得分是]]></h1>  
            <div xid="scoreSpan" class="score-big" bind-text=" $model.controlData.val(&quot;score&quot;)"/>  
            <h1 xid="h12" class="scotxt"><![CDATA[你社交得分是]]></h1>  
            <div xid="div1" class="score-big" bind-text=" $model.controlData.val(&quot;score_f&quot;)"/> 
          </div>  
          <div class="section-card content-detail mgt-10" xid="div17"> 
            <div class="sub-title" xid="testCompleteInfoDiv1"/>  
            <div class="sub-title" xid="testCompleteInfoDiv2" style="display:none"/>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default button block mgt-20"
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
