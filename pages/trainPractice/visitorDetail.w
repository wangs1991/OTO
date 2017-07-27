<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="标题"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title"><![CDATA[]]></div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="linear linear-calendarfull" onClick="{operation:'window.close'}"
            xid="button1"> 
            <i class="linear linear-calendarfull" xid="i1"/>  
            <span xid="span1"/>
          </a>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content x-scroll-view" xid="content1" _xid="C79E6F8D4D6000018266103018081380" style="bottom: 0px;">
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-scroll-content" xid="div2">
          <div xid="div7" class="b-relax-box"> 
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
            <div xid="div6" class="b-visitor-two">
              <span xid="span5"><![CDATA[练习记录]]></span>
            </div>
            <table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table"
              xid="table1"> 
              <thead xid="thead1"> 
                <tr xid="tr1"> 
                  <th xid="col2"><![CDATA[练习日期]]></th>  
                  <th xid="col3"><![CDATA[练习内容]]></th>  
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
                    <span xid="span8" class="b-visiter-thrSpan"  bind-text="item.duration"/>
                  </td> 
                </tr>  
              </tbody> 
            </table>
            <div xid="div9" class="b-visiter-btn"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default b-visiter-btnTJ"
                label="确定" xid="button3" bind-click="goToLearn"> 
                <i xid="i4"/>  
                <span xid="span22">开始练习</span>
              </a> 
            </div>
          </div> 
        </div>  
        <div class="x-content-center x-pull-up" xid="div3"> 
          <span class="x-pull-up-label" xid="span3">加载更多...</span>
        </div> 
      </div>
    </div> 
  </div> 
</div>
