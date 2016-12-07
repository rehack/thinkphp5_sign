<?php
namespace app\admin\model;

use think\Model;

// 用户信息模型
class Users extends Model
{
    // 开启写入时间戳
    protected $autoWriteTimestamp = true;
    // 关闭自动写入update_time字段
    // protected $updateTime = false;

    // 设置数据表主键,默认主键自动识别
    protected $pk    = 'id';
    protected $type = [
        'create_time'    =>  'timestamp',
        'update_time'    =>  'timestamp',
        'signin_time'    =>  'timestamp',
        // 'jz_time'    =>  'timestamp:Y-m-d'

    ];


    // sex读取器
    protected function getSexAttr($value)
    {
        $sex = [0=>'未知',1=>'男',2=>'女'];
        return $sex[$value];
    }

}
