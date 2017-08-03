<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="position:absolute;;left:86.0px;top:170.0px"
    />  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"/>  
    <div class="x-panel-content" xid="content1">
    
    	<div bind-click="takePicBtnClick">拍照</div>
    	<div bind-click="selPicBtnClick">取照片</div>	
    	<div id="img"></div>
    	<img src="" alt="" id="image1"/>
    </div>  
    <div class="x-panel-bottom" xid="bottom1"/>
  </div>
</div>
