 <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5"
    data="dataDate"> 
      <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu"
        xid="popMenu1" opacity="0.1" anchor="button1" direction="left-bottom"> 
        <div class="x-popMenu-overlay" xid="div11"/>  
        <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content x-list-template"
          xid="menu11"> 
          <li class="x-menu-item" xid="item11" bind-click="item11Click"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label="" xid="button11"> 
              <i xid="i11"/>  
              <span xid="span11" bind-text=' $model.dataDate.val("clinic_date")'/><!-- 按钮名 --> 
            </a> 
          </li> 
        </ul> 
      </div> 
  </div>