<?php
namespace app\lib\exception;
use think\Exception;

/**
 * Class BaseException
 * 自定义异常类的基类
 */
class BaseException extends Exception
{
    public $code = 400;
    public $msg = 'invalid parameters';
    public $errorCode = 999;


    public function __construct($params=[]){
        if(!is_array($params)){
            return ;
            // throw new Exception('参数必须是数组');
        }

        if(array_key_exists('code',$params)){
            $this->code=$params['code'];
        }

        if(array_key_exists('msg',$params)){
            $this->msg=$params['msg'];
        }

        if(array_key_exists('errorCode',$params)){
            $this->errorCode=$params['errorCode'];
        }
    }

}

