<?php
namespace app\index\controller;
use think\Controller;
use app\admin\model\Lucky as LuckyModel;
use app\index\model\Uploads as UploadsModel;
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
        if(Request()->isPost()){
            $data=new LuckyModel;
            $data1=[];
            if(input('param')=='all'){

                $where=[];
            }elseif (input('param')=='self') {
                $where=['islucky'=>2,'status'=>0];
            }else{
                $where=['islucky'=>2,'status'=>1];
            }

            $luckyData=$data->field('num')->where($where)->select();//未中奖客户
            // $luckyData=db('lucky')->field('num')->where('islucky',2)->select();//未中奖客户
            foreach ($luckyData as $key => $value) {
                $data1[]=sprintf("%03d", $value['num']);

            }
            return $data1;
        }

        // dump(current($luckyData));
    }

    // 更新中奖记录
    public function updateLucky(){
        if(Request()->isPost()){
            $luck=new LuckyModel;
            $luckyNum=input('post.')['num'];
            $lun=input('post.')['lun'];
            foreach($luckyNum as $data){
                $res=$luck->where('num', $data)->update(['islucky' => '1','lun'=>$lun]);
            }
            if($res){
                return $res;
            }
        }
    }

    public function getLuckyNum(){
        if(Request()->isPost()){
            $lun=input('lun');
            $data=LuckyModel::field('num')->where('lun',$lun)->select();

            if($data){
                foreach ($data as $key => $value) {
                    $data1[]=$value['num'];
                }
                return $data1;
            }
        }
    }

    // 获取获取签到数据信息
    public function getUploadsData()
    {
        $data=UploadsModel::where('sign_num','>',0)->order('create_time','desc')->select();
        // $this->assign('data',$data);
        // return $this->fetch();
        return json($data);
    }

    // 获取所有签到号码
    public function getSignNums(){
        $data=UploadsModel::where('sign_num','>',0)->column('sign_num');
        return json($data);
    }
}
