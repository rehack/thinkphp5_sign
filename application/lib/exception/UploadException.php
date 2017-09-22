<?php
namespace app\lib\exception;

class UploadException extends BaseException{
    public $code=400;//http状态码
    public $msg='图片资源不正确';//错误具体信息
    public $errorCode=60000;//自定义错误码
}
