<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13 biologyFdback" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"
    style="height:auto;top:2px;left:488px;"/>  
  <div class="x-panel-content tb-trans speechRecList" xid="content-main" _xid="C78FAA2F9CA000018BB5F64C1B902F90"
    style="top: 0px; bottom: 0px;"> 
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
      xid="titleBar1"> 
      <div class="x-titlebar-left" xid="left1" bind-click="goBack"> 
        <i class="webapp ic-back"/> 
      </div>  
      <div class="x-titlebar-title" xid="title1">生物数据反馈记录</div>  
      <div class="x-titlebar-right reverse" xid="right1" bind-click="goUserInfo"> 
        <div>改</div>
      </div> 
    </div>  
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
      active="0" xid="contents1"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2"/>  
        <div class="x-panel-content" xid="content3" style="bottom:0px;"> 
          <!-- 顶部用户卡片  -->  
          <div class="section-card symbol-card" style="height:230px;"> 
            <div xid="div4" class="w-relax-one clearfix"> 
              <div xid="div5" class="b-relax-oneL fl"> 
                <img src="$UI/OTO/assets/img/relax_1.jpg" alt="" xid="image1"/> 
              </div>  
              <ul xid="ul1" class="b-relax-oneR fr" bind-foreach="{ data: user, as: 'user' }"> 
                <li xid="li1" bind-text="user.name"/>  
                <li xid="li2" bind-text="user.sexTxt">男</li>  
                <li xid="li3" bind-text="user.age+'岁'"/>  
                <li/> 
              </ul> 
            </div> 
          </div>  
          <!-- 拉动刷新数据	 -->  
          <div class="x-scroll-content" xid="div3"> 
            <div xid="div6" class="b-visitor-two"> 
              <span xid="span5"><![CDATA[练习记录]]></span> 
            </div> 
          </div>  
          <div class="x-scroll center-pull" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1" style="top:220px;background-color:transparent;" autoAppend="true"
            autoPullUp="true" onPullUp="loadData"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"/>  
              <span class="x-pull-down-label" xid="span1"/> 
            </div>  
            <div class="x-scroll-content" xid="div2"> 
              <!-- 数据列表 -->  
              <div class="section-card mgt-10"> 
                <div component="$UI/system/components/justep/list/list" class="x-list"
                  xid="list2" data="data" limit="-1" disablePullToRefresh="true" disableInfiniteLoad="true"> 
                  <ul component="$UI/system/components/justep/list/list" class="x-list x-list-template"
                    xid="list1" bind-foreach="{ data: records, as: 'item' }"> 
                    <li xid="li4"> 
                      <span bind-text="item.time"/>  
                      <span bind-text="item.content"/>  
                      <span bind-text="item.duration"/> 
                    </li> 
                  </ul>  
                  <table class="table table-bordered table-hover table-striped"
                    component="$UI/system/components/bootstrap/table/table" xid="table1"> 
                    <thead xid="thead1"> 
                      <tr xid="tr1"> 
                        <th xid="col2"><![CDATA[练习日期]]></th>  
                        <th xid="col3"><![CDATA[练习内容]]> </th>  
                        <th xid="col4"><![CDATA[练习时长]]></th> 
                      </tr> 
                    </thead>  
                    <tbody class="x-list-template" xid="listTemplate1" bind-foreach="{ data: records, as: 'item' }"> 
                      <tr xid="tr2"> 
                        <td xid="td2"> 
                          <span xid="span6" class="b-visiter-thrSpan" bind-text="item.time"/> 
                        </td>  
                        <td xid="td3"> 
                          <span xid="span7" class="b-visiter-thrSpan" bind-text="item.content"/> 
                        </td>  
                        <td xid="td4"> 
                          <span xid="span8" class="b-visiter-thrSpan" bind-text="item.duration"/> 
                        </td> 
                      </tr> 
                    </tbody> 
                  </table> 
                </div> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div3"> 
              <span class="x-pull-up-label" xid="span2">加载更多...</span> 
            </div> 
          </div>  
          <div class="x-panel-bottom btn-card"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default b-visiter-btnTJ"
              label="开始练习" xid="button3" bind-click="goToLearn"> 
              <i xid="i4"/>  
              <span xid="span22">开始练习</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
