<?php
namespace app\common\validate;
use think\Validate;
use think\Request;
use think\Exception;
// use app\lib\exception\ParameterException;
class BaseValidate extends Validate{


    // 自定义验证规则 验证正整数
    protected function positiveInteger($value){
        if(is_numeric($value) && is_int($value+0) && ($value+0)>0){
            return true;
        }else{
            // return 'id必须是正整数';
            return false;
        }
    }

    // 自定义验证规则 验证不能为空值
    protected function isNotEmpty($value,$rule='',$data='',$field=''){
        if(empty($value)){
            return false;
        }else{
            return true;
        }
    }

    // 自定义验证规则 验证手机号
    protected function isMobile($value){
        $rule='^1(3|4|5|7|8)[0-9]\d{8}$^';
        $result=preg_match($rule, $value);
        if($result){
            return true;
        }else{
            return false;
        }

        // return $result;
    }


}
