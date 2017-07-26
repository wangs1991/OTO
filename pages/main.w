<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window portal-main" component="$UI/system/components/justep/window/window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:350px;top:66px;"
    onLoad="modelLoad"> 
    </div>  
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
      <!--  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="新建用户" xid="button1" url="./userInfo/newsInfo.w" bind-click="newsUserClick"> 
        <i xid="i2"/>  
        <span xid="span3">新建用户</span>
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="用户信息" xid="button2" url="./userInfo/newsInfo.w" bind-click="userInfoClick"> 
        <i xid="i1"/>  
        <span xid="span1">用户信息</span>
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="修改密码" xid="button3" url="./userInfo/newsInfo.w" bind-click="modifyPasswordClick"> 
        <i xid="i3"/>  
        <span xid="span2">修改密码</span>
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="找回密码" xid="button4" url="./userInfo/newsInfo.w" bind-click="backPasswordClick"> 
        <i xid="i4"/>  
        <span xid="span4">找回密码</span>
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="自评量表选择" xid="button5" url="./userInfo/newsInfo.w" bind-click="assessSelectClick"> 
        <i xid="i5"/>  
        <span xid="span5">自评量表选择</span>
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-default"
        label="设置" xid="button6" url="./userInfo/newsInfo.w" bind-click="setUpClick"> 
        <i xid="i6"/>  
        <span xid="span6">设置</span>
      </a>
       -->  
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
                  xid="row1"> 
                  <div class="col col-xs-4" xid="col1" bind-text='user.name'></div>  
                  <div class="col col-xs-4" xid="col2" bind-text='sex'>2</div>  
                  <div class="col col-xs-4" xid="col3" bind-text='user.birthday'>3</div>
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
