<?php
namespace app\index\controller;
use think\Controller;
use app\admin\model\Lucky as LuckyModel;
/**
*
*/
class Lucky extends Controller
{

    public function index(){

        // dump($luckyData);
        // $this->assign('data',$luckyData);
        return $this->fetch();
    }

    // 分配数据给前台
    public function returndata(){
        $data=new LuckyModel;
        $data1=[];
        $luckyData=$data->field('num')->where('islucky',2)->select();//未中奖客户
        // $luckyData=db('lucky')->field('num')->where('islucky',2)->select();//未中奖客户
        foreach ($luckyData as $key => $value) {
            $data1[]=$value['num'];
        }
        return $data1;
        // dump(current($luckyData));
    }

    // 更新中奖记录
    public function updateLucky(){
        if(Request()->isPost()){
            $luck=new LuckyModel;
            $luckyNum=input('post.')['num'];
            $lun=input('post.')['lun'];
            foreach($luckyNum as $data){
                $luck->where('num', $data)->update(['islucky' => '1','lun'=>$lun]);
            }
        }
    }
}
