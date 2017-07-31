define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/OTO/pages/list/main'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cFFnEJ3';
	this._flag_='4ac9bc8acdd313afdb526997ea77ca7c';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"answer":{"define":"answer","name":"answer","relation":"answer","type":"String"},"birthday":{"define":"birthday","name":"birthday","relation":"birthday","type":"String"},"diagnose":{"define":"diagnose","name":"diagnose","relation":"diagnose","type":"String"},"idCard":{"define":"idCard","name":"idCard","relation":"idCard","type":"String"},"name":{"define":"name","name":"name","relation":"name","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"},"questType":{"define":"questType","name":"questType","relation":"questType","type":"String"},"sex":{"define":"sex","name":"sex","relation":"sex","type":"String"},"vid":{"define":"vid","name":"vid","relation":"vid","type":"String"},"vocation":{"define":"vocation","name":"vocation","relation":"vocation","type":"String"}},"directDelete":false,"events":{},"idColumn":"vid","isMain":false,"limit":20,"xid":"curUser"});
}}); 
return __result;});