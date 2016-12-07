<?php
namespace app\admin\model;
use think\Model;
use think\Db;
// 左侧导航菜单模型
class Menu extends Model{
	public function getmenu(){
        // 查询数据
        // $data = Db::name('menu')
        $data =db('menu')
            ->order('id')
            // ->field('id,menuname,icon,url,pid')
            // ->where("pid = $pid")
            ->select();
        $menudata=array();

        // $arr['menus']=$this::_get_child($data);
        $arr=$this::_get_child($data);
        // $json=json_encode($arr);
        $json=json($arr);
        // return $json;
        return $arr;
	}
    //分类级别
    static protected function _cate_level($data, $pid=0, $level=0){
        $array = array();
        foreach ($data as $k => $v){
            if ($v['pid'] == $pid){
                $v['level'] = $level;
                $array[] = $v;
                unset($data[$k]);
                $array = array_merge($array, self::_cate_level($data, $v['id'],$level+1));
            }
        }
        return $array;
        // return json_encode($array);

    }



    //菜单
    static protected function _get_child($data, $pid=0){
        $array = array();
        foreach ($data as $k => $v){
            if ($v['pid'] == $pid){
                $v['menus'] = self::_get_child($data, $v['id']);
                $array[] = $v;
            }
        }
        return $array;
    }
}
