<?php
namespace app\common\validate;
use think\Validate;

class Credit extends Validate{
    protected $rule = [
        'name'  =>  'require|max:25',
        'telephone' =>  ['require','regex'=>'/^1(3[0-9]|4[57]|5[0-35-9]|7[01678]|8[0-9])\d{8}$/','unique'=>'credit_users'],
        'age' => 'number|between:0,120',
        'sex'=>'number',
        'disease_id' => 'number',
        'money' => 'number',
        'pay_time' => 'date',
        'pid'=>'require|number|gt:0',
        'uid'=>'require|number',
        'account_payable'=>'number|egt:0',
        'used_credit'=>'number|egt:0',
        'id'=>'require|number|egt:0'

    ];

    protected $message  =   [
        'name.require' => '请填写客户姓名！',
        'name.max'     => '客户姓名最多不能超过25个字符！',
        'age.number'     => '年龄必须是数字！',
        'age.between'     => '年龄必须在0-120之间！',
        'telephone.require'  => '请填写客户手机号！',
        'telephone.regex'    => '客户手机号格式错误！',
        'telephone.unique'   => '该客户手机号在系统中已经存在，请勿重复添加！',
        'disease_id.number'=>'请正确选择消费项目!',
        'money.number'=>'消费金额格式有误!',
        'pay_time.date'=>'消费金额格式有误!',
        'pid.require'=>'请选择一个客户!',
        'pid.number'=>'请选择一个客户!',
        'pid.gt:0'=>'请选择一个客户!',
    ];

    protected $scene = [
        'addparent'  =>  ['name','telephone','age','sex'],
        'addchild'  =>  ['disease_id','money','pay_time'],
        'addpoints'=>['uid','disease_id','pay_time','account_payable','used_credit'],
        'edit'=>['id','name','telephone','age','sex']
    ];


}
