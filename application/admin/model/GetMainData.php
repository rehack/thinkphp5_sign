<?php
namespace app\admin\model;
use think\Model;
use think\Db;
// use think\paginator;
// 填充表单数据模型

class GetMainData extends Model{
	// 设置数据表（不含前缀）
	protected $name = 'users_info';
	// 设置数据表主键,默认主键自动识别
	protected $pk    = 'id';

	protected $type = [
	    // 'yy_time'    =>  'timestamp',
	    'addtime'    =>  'timestamp'

	];

	public function zixun()
	{
	    return $this->hasMany('dev_from','id');
	    // return $this->belongsTo('users_zixun','uid');
	}

	public function yuyue()
	{
	    return $this->hasMany('from','id');
	    // return $this->belongsTo('users_zixun','uid');
	}


	// 获取表单数据
	/*function getinfo($table,$page=1,$rows=10){
		//计算当前偏移值
        $offset=($page-1)*$rows;

		// $data=Db::name($table)->paginate(2,true,[
		//     'type'     => 'bootstrap',
		//     'var_page' => 'page',
		// ]);
		// ->select();

		//查询指定分页的数据
		$data=Db::name($table)
			->alias('m')
			->join('dev_from a','a.id=m.dev_id')
			->join('from b','b.id=m.from_id')
			->join('zx_tools c','c.id=m.tool_id')
			->limit($offset,$rows)
			->select();
		$total=db($table)->count();
		$result=[
			'total'=>$total,
			'rows'=>$data
		];
		//重要，easyui的标准数据格式，数据总数和数据内容在同一个json中

        $result=json($result);
		return $result;
	}*/

}
