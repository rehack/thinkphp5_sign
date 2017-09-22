<?php
namespace app\common\validate;
use app\common\validate\BaseValidate;
class UploadValidate extends BaseValidate{
    protected $rule=[
        'file'=>'require|image|fileSize:6291456',
        'sign_num'=>'require|isPositiveInteger|unique:uploads'
    ];

    protected $message=[
        'file.require' => '请选择上传文件!',
        'file.image' => '非法图像文件!',
        'file.fileSize' => '图片文件大小不能超过6M!',
        'sign_num.require'=>'请填写签到号码!',
        'sign_num.isPositiveInteger'=>'签到号码必须是正整数!',
        'sign_num.unique'=>'该签到号码已经存在了!'
    ];

    // 自定义验证规则
    protected function isPositiveInteger($value,$rule,$data)
    {
        if ( floor($value)==$value && $value>0){

            return true;
        }else{
            // return (floor($value));die;;
            return false;
        }
    }
}
