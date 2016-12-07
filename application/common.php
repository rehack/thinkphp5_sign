<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件


/**
* 生成唯一订单号
*
*/
function build_order_no(){
	// return date('Ymd').substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
	$yCode = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J');
	$orderSn = $yCode[intval(date('Y')) - 2011] . strtoupper(dechex(date('m'))) . date('d') . substr(time(), -5) . substr(microtime(), 2, 5) . sprintf('%02d', rand(0, 99));
	return $orderSn;
}


/**
 * @desc 根据生日获取年龄
 * @param     string $birthday
 * @return    integer
 */
// function getAge($birthday) {
//     $birthday=getDate(strtotime($birthday));
//     $now=getDate();
//     $month=0;
//     if($now['month']>$birthday['month'])
//     $month=1;
//     if($now['month']==$birthday['month'])
//     if($now['mday']>=$birthday['mday'])
//     $month=1;
//     return $now['year']-$birthday['year']+$month;
// }

function getAge($birthday){
 $age = strtotime($birthday);
 if($age === false){
  return false;
 }
 list($y1,$m1,$d1) = explode("-",date("Y-m-d",$age));
 $now = strtotime("now");
 list($y2,$m2,$d2) = explode("-",date("Y-m-d",$now));
 $age = $y2 - $y1;
 if((int)($m2.$d2) < (int)($m1.$d1))
  $age -= 1;
 return $age;
}
