window.__justep.__ResourceEngine.loadCss([{url: '/v_7a2b2b269554455da54436aca07b908cl_zh_CNs_d_m/system/components/pc.addon.min.css', include: '$model/system/components/justep/pagerBar/css/pagerBar,$model/system/components/justep/widgets/css/widgets,$model/system/components/justep/absoluteLayout/css/absoluteLayout,$model/system/components/justep/pagerLimitSelect/css/pagerLimitSelect,$model/system/components/justep/cellLayout/css/cellLayout,$model/system/components/justep/smartContainer/css/smartContainer'},{url: '/v_09345f7d73ca40a8945d0f3523ae037fl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_dcf4023502d642dabcfc41e628d52824l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_397c711244c7442592e19e3d8870f296l_zh_CNs_d_m/system/core.min.js','/v_206531e6df184b38ae1671bab8f3717bl_zh_CNs_d_m/system/common.min.js','/v_3f84352825bc426ab12ca5efe4687a24l_zh_CNs_d_m/system/components/comp.min.js','/v_99429d6cf1dd44b8b873ffec4062b56al_zh_CNs_d_m/system/components/pc.addon.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/smartContainer/smartContainer');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/picker/picker');
require('$model/UI2/system/components/justep/datePicker/datePicker');
require('$model/UI2/system/components/justep/picker/popPicker');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/OTO/pages/userInfo/userInfo'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cnEVj6b';
	this._flag_='4a4cc77ea0b714940680e42eb82648cd';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","name":"id","relation":"id","type":"String"},"sex":{"define":"sex","name":"sex","relation":"sex","type":"String"},"text":{"define":"text","name":"text","relation":"text","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"0\",\"sex\":\"0\",\"text\":\"女\"},{\"id\":\"1\",\"sex\":\"1\",\"text\":\"男\"}]","limit":20,"xid":"sexData"});
}}); 
return __result;});
