<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13 biologyFdback" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" onActive="enterPage"
    style="height:auto;top:2px;left:488px;"/>  
  <div class="x-panel-content tb-trans speechRecList" xid="content-main" _xid="C78FAA2F9CA000018BB5F64C1B902F90"
    style="top: 0px; bottom: 0px;"> 
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
      xid="titleBar1"> 
      <div class="x-titlebar-left" xid="left1" bind-click="goBack"> 
        <i class="webapp ic-back"/> 
      </div>  
      <div class="x-titlebar-title" xid="title1">来访者详情</div>  
      <div class="x-titlebar-right reverse" xid="right1" bind-click="goUserInfo"> 
        <div class="user_menu"></div> 
      </div> 
    </div>  
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
      active="0" xid="contents1"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2"/>  
        <div class="x-panel-content" xid="content3" style="bottom:70px;"> 
          <!-- 顶部用户卡片  -->  
          <div class="symbol-card card_user" style="height:110px;" bind-foreach="{ data: user, as: 'user' }"> 
            <div class="media" xid="media1"> 
              <div class="media-left avator-ctner" xid="mediaLeft1"> 
                <div class="avator"> 
                  <img class="media-object" bind-attr="{src: user.face}"
                    alt="" xid="image2"/>
                </div> 
                <div class="sex" bind-css="{'boy': user.sex == 1, 'girl': user.sex == 0}"></div>
              </div>  
              <div class="media-body" xid="mediaBody1"> 
                <ul xid="ul1" class="b-relax-oneR" bind-foreach="{ data: user, as: 'user' }"> 
                  <li xid="li1" class="user_name" bind-text="user.name"/>  
                  <li xid="li2" class="user_info"> 
                    <span bind-text="user.sexTxt"/>  
                    <span bind-text="user.age+'岁'"/>
                  </li> 
                </ul> 
              </div> 
            </div> 
          </div>  
          <!-- 拉动刷新数据	 -->  
          <div class="main-container type_middle"> 
            <div class="x-scroll-content" xid="div3"> 
              <div xid="div6" class="title_bar"> 
                <span xid="span5"><![CDATA[练习记录]]></span> 
              </div>  
              <div component="$UI/system/components/bootstrap/row/row" class="row new_listItem list_head"
                xid="row1"> 
                <div class="col col-xs-4" xid="col1">练习日期</div>  
                <div class="col col-xs-4" xid="col5">练习内容</div>  
                <div class="col col-xs-4" xid="col6">练习时长</div> 
              </div> 
            </div>  
            <div class="x-scroll center-pull" component="$UI/system/components/justep/scrollView/scrollView"
              xid="scrollView1" style="top: 50px;" autoAppend="true" autoPullUp="true"
              onPullUp="loadData"> 
              <div class="x-scroll-content" xid="div2"> 
                <!-- 数据列表 -->  
                <div class="mgt-10"> 
                  <div component="$UI/system/components/justep/list/list" class="x-list"
                    xid="list2" data="data" limit="-1" disablePullToRefresh="true"
                    disableInfiniteLoad="true" style="background-color:transparent;"
                    bind-foreach="{data: records, as: 'item'}"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row new_listItem" xid="row2" bind-attr="{lid: item.lid}"  data-bind="click: $parent.gotDetail"> 
                      <div class="col col-xs-4" xid="col7" bind-text="item.time"/>  
                      <div class="col col-xs-4" xid="col8" bind-text="item.content"/>  
                      <div class="col col-xs-4" xid="col9" bind-text="item.duration"/> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div class="x-content-center x-pull-up" xid="div3"> 
                <span class="x-pull-up-label" xid="span2">加载更多...</span> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-bottom btn-card" xid="bottom1" height="70px"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default button block"
            label="开始练习" xid="bindButton" bind-click="goToLearn"> 
            <i xid="i1"/>  
            <span xid="span1"/> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
