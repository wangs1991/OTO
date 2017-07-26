<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window portal-main" component="$UI/system/components/justep/window/window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:350px;top:66px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="curUser" idColumn="vid" autoNew="true"><column name="vid" type="String" xid="xid1"></column>
  <column name="name" type="String" xid="xid2"></column>
  <column name="sex" type="String" xid="xid3"></column>
  <column name="birthday" type="String" xid="xid4"></column>
  <column name="phone" type="String" xid="xid5"></column>
  <column name="idCard" type="String" xid="xid6"></column>
  <column name="vocation" type="String" xid="xid7"></column>
  <column name="diagnose" type="String" xid="xid8"></column>
  <column name="questType" type="String" xid="xid9"></column>
  <column name="answer" type="String" xid="xid10"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar app-title-ctner"
        xid="titleBar1"> 
        <div class="x-titlebar-left" xid="left1" bind-click="goBack"> 
          <i class="webapp ic-back" style="display: none;"/> 
        </div>  
        <div class="x-titlebar-title" xid="title1"><![CDATA[来访者列表]]></div>  
        <div class="x-titlebar-right reverse" xid="right1"> 
          <div bind-click="goToSetting">设置</div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" style="bottom: 0px; height: 100%; background-size: cover; background-image: url(http://localhost:42303/x5/UI2/v_/OTO/pages/none);"
      _xid="C79D82AEB1900001F9E5123057971270"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-content-center x-pull-down container" xid="div1"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"/>  
          <span class="x-pull-down-label" xid="span1">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content" xid="div2"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1"> 
            <ul class="x-list-template user-list" xid="listTemplateUl1"> 
              <li xid="li1" class="user-item" bind-foreach="{ data: userList, as: 'user' }"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row1" data-bind="click: $parent.gotDetail" style="width:100%;"> 
                  <div class="col col-xs-4" xid="col1" bind-text='user.name'></div>  
                  <div class="col col-xs-4" xid="col2" bind-text='sex'>2</div>  
                  <div class="col col-xs-4" xid="col3" bind-text='user.age'>3</div>
                </div>
              </li> 
            </ul> 
          </div>
        </div>  
        <div class="x-content-center x-pull-up" xid="div3"> 
          <span class="x-pull-up-label" xid="span2">加载更多...</span> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
