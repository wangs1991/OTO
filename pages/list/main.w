<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window portal-main" component="$UI/system/components/justep/window/window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:350px;top:66px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="curUser" idColumn="vid" autoNew="true"> 
      <column name="vid" type="String" xid="xid1"/>  
      <column name="name" type="String" xid="xid2"/>  
      <column name="sex" type="String" xid="xid3"/>  
      <column name="birthday" type="String" xid="xid4"/>  
      <column name="phone" type="String" xid="xid5"/>  
      <column name="idCard" type="String" xid="xid6"/>  
      <column name="vocation" type="String" xid="xid7"/>  
      <column name="diagnose" type="String" xid="xid8"/>  
      <column name="questType" type="String" xid="xid9"/>  
      <column name="answer" type="String" xid="xid10"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full visitors_list"
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
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C79D82AEB1900001F9E5123057971270"> 
      <div class="search_bar"> 
       	<input type="text" placeholder="搜索"/>
       	<div class="visitor-add" bind-click="addVisitor">as</div>
      </div>
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1" style="top:200px;"> 
        <div class="x-scroll-content" xid="div2"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1"> 
            <ul class="x-list-template user-list" xid="listTemplateUl1" bind-foreach="{ data: userList, as: 'user' }"> 
              <li xid="li1" class="user-item x-min-height"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row1" data-bind="click: $parent.gotDetail" style="width:100%;"> 
                  <div class="col col-xs-4" xid="col1" bind-text="user.name"/>  
                  <div class="col col-xs-4" xid="col2" bind-text="sexTxt" bind-css="{'boy': user.sex == 0, 'girl': user.sex == 1}">2</div>  
                  <div class="col col-xs-4" xid="col3" bind-text="user.age">3</div> 
                </div> 
              </li> 
            </ul> 
          </div> 
        </div>  
        </div> 
    </div> 
  </div> 
</div>
