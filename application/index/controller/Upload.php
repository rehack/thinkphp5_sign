<?php
namespace app\index\controller;
use think\Controller;
use app\lib\exception\UploadException;
use app\index\model\Uploads as UploadsModel;
use think\Request;
use think\Image;
use app\common\validate\UploadValidate;
use think\Db;
class Upload extends Controller{
    public function index(){
        return $this->fetch();
    }

    private function upload(){
        // 获取表单上传文件

        $file = request()->file('file');
        $num=request()->param('num');
        // dump($_FILES);die;
        // dump($file);die;
        if(!$file){
            throw new UploadException([
                'code'=>0,
                'msg'=>'没有选择图片或者图片超过post_max_size大小'
            ]);
        }

        $validate=new UploadValidate();
        // 针对getimagesize(): Read error!异常
        try {
            // 上传文件验证
            $result=$validate->check(['file' => $file,'sign_num'=>$num]);
        } catch (\Exception $e) {
            throw new UploadException([
                'code'=>0,
                'msg'=>$e->getMessage()
            ]);
        }

        // 验证不通过
        if(true !== $result){
            dump(UploadException);die;
            throw new UploadException([
                // 'msg'=>$this->error($result);
                'code'=>0,
                'msg'=>$validate->getError()
            ]);
        }

        $image = Image::open($file);
        // 图片压缩处理
        $image->thumb(800, 800, Image::THUMB_CENTER);

        // 唯一文件名 微妙md5加密
        $saveName = md5(uniqid(microtime(true),true)) . '.' . $image->type();
        // 保存图片
        $image->save(ROOT_PATH . 'public/uploads/' . $saveName);
        if(empty($image)){
            return;
        }

        $arr=[];
        $arr['sign_num']=$num;
        $arr['img_url']=$saveName;
        return $arr;

    }


    public function saveUploadFile(){
        // dump(UploadException);die;
        $data=$this->upload();
        if(!empty($data)){
            $res=UploadsModel::create($data);
            if(!$res){
                throw new UploadException([
                    'msg'=>'上传失败',
                    'code'=>400,
                    'errorCode'=>6000
                ]);
            }else{
                // dump(UploadException);die;
                throw new UploadException([
                    'msg'=>'上传成功',
                    'code'=>200,
                    'errorCode'=>0
                ]);

            }
        }
    }

    public function uploadList()
    {
        $data=UploadsModel::where('sign_num','>',0)->order('create_time','desc')->select();
        $this->assign('data',$data);
        return $this->fetch();
    }



    public function clear(){
        // 清空signin_uploads
        $result = Db::execute('TRUNCATE table signin_uploads');
        dump($result);
        $path  = './uploads/';
        $op = dir($path);
        while(false != ($item = $op->read())) {
            // echo $item;

            if($item == '.' || $item == '..') {
                continue;
            }
            if(is_dir($op->path.'/'.$item)) {
                clear($op->path.'/'.$item);
                // rmdir($op->path.'/'.$item);
            } else {
                unlink($op->path.'/'.$item);
            }
        }

    }

}
