define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	require("$UI/system/lib/cordova/cordova");               
	require("cordova!cordova-plugin-camera");


	var Model = function() {
		this.callParent();	
	};
	Model.prototype.takePicBtnClick = function(event){
                if(!navigator.camera){
                        return;
                }
                var self = this;                                
                navigator.camera.getPicture(onLoadImageSuccess, onLoadImageFail, {
                        destinationType:navigator.camera.DestinationType.DATA_URL,
                        allowEdit:true,
                        quality:80,
                        targetWidth:100,
                        targetHeight:100,
                        saveToPhotoAlbum:true
                });
               
                //拍照成功后回调
                function onLoadImageSuccess(imageData){
                		console.log(imageData);
                		$('#img').html(imageData);
                        localStorage.setItem("imageData","data:image/jpeg;base64,"+imageData);
                        var smallImage = $('#image1');
                        //显示图像
                        smallImage.style.display = 'block';
                        smallImage.src = "data:image/jpeg;base64,"+imageData;                        
                        //图片上传
                        self.uploadPic(imageData);            
                }

                function onLoadImageFail(error){
                        alert(error);
                }

        }; 

      Model.prototype.uploadPic = function(imageData){
        

      }; 
        
        //选择照片
        Model.prototype.selPicBtnClick = function(event){
                if(!navigator.camera){
                                return;
                }
                var self = this;                                
               
           navigator.camera.getPicture(onSuccess, onFail, {
                  mediaType : 0,//只选择图片
                  quality:80,
                  allowEdit:true,
                  targetWidth:100,
                  targetHeight:100,                 
                  destinationType: navigator.camera.DestinationType.DATA_URL,                            
              	sourceType: navigator.camera.PictureSourceType.PHOTOLIBRARY
              //sourceType: navigator.camera.PictureSourceType.PhotoAlbum//在安卓中，这个参数会跳出拍照界面
           });
        
           function onSuccess(imageData) {
              var smallImage = $('#image1');
                        //显示图像
                        smallImage.style.display = 'block';
                        smallImage.src = "data:image/jpeg;base64,"+imageData;   
              
             //图片上传
             self.uploadPic(imageData);         
           }
        
           function onFail(message) {
              alert('Failed because: ' + message);
           }        

        };
        
         //显示用户头像，自定义
        Model.prototype.transUrl = function(fImage) {
        
                if(!fImage)
                        return null;

                 this.actionUrl = "/baas/summer/classes/browsePicfile";        
                var src = null;                                
                if (fImage !== null && fImage !== "" && fImage !== "[]") {
                        var imageJson = eval("("+fImage+")");
                        var storeFileName = imageJson.storeFileName;
                        var ownerID = imageJson.ownerID;                       
                        var url = this.actionUrl + '?storeFileName=' + storeFileName + '&ownerID=' + ownerID ;
                        src = require.toUrl(url);
                }

                return src;
        };       
	return Model;
});