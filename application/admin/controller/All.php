<?php
namespace app\admin\controller;
use app\admin\model\Users;
// use think\Db;
use \PHPExcel;
use \PHPExcel_IOFactory;
class All extends Base
{
	public function index()
	{

		return $this->fetch();
	}

    // 数据统计
    public function count(){
        $total=Users::count();
        $signed=Users::where('signin',1)->count();
        $nosign=Users::where('signin',2)->count();

        $data['total']=$total;
        $data['signed']=$signed;
        $data['nosign']=$nosign;
        return $data;
    }

	// 得到客户数据
	public function getUserData($signinStatus=null){
		$users=new Users;
		// 分页条件
		$page=input('page');
		$rows=input('rows');
		$offset=($page-1)*$rows;

		// 排序条件(默认根据id降序排列)
		$sort=input('sort')?input('sort'):'id';
		$order=input('order')?input('order'):'desc';

		// 筛选条件 where()里面可以是数组 可以为空数组
		$keywords=input('name');
		$signinStatus=$signinStatus?$signinStatus:input('signin');

		$fuzzy=[];//模糊查询条件
		if(!empty($keywords)){
			$fuzzy['name']=['like',"%{$keywords}%"];
			$fuzzy['telephone']=['like',"%{$keywords}%"];
		}

		// $map['signin']=$signinStatus;

		// $map['signin']=$signinStatus ? $signinStatus : '';
		$sign=[];//签到查询条件
		if(!empty($signinStatus)){
			$sign['signin']=$signinStatus;
		}
		// $map=[];
		$data=$users
		// ->where('name|telephone','like',"%$name%")
		->where($sign)
		->whereOr($fuzzy)
		->order([$sort=>$order])
		->limit($offset,$rows)
		->select();
		return $data;
	}






	// 处理全部用户数据给前端使用
	public function returndata(){
		if(Request()->isPost()){
			$data=$this->getUserData();
			$total=Users::count();
			$result=[
				'total'=>$total,
				'rows'=>$data
			];
			//重要，easyui的标准数据格式，数据总数和数据内容在同一个json中

	        $result=json($result);
			return $result;

			// dump($result);

		}else{
			return 'Hello World!';
		}
	}


	// 点击签到
	public function startSign(){
		if(Request()->isPost()){
			$uid=input('id');
			if($uid){
				$issign=Users::where('id',$uid)
				->update(['signin'=>1,'signin_time'=>time()]);
				// return($issign);
				if($issign>0){
					return '签到成功！';
				}else{
					return '签到失败';
				}
			}

		}
	}

	// 编辑客户资料
	public function edit(){
		if(Request()->isPost()){
			// $user=new Users;
			$data=input('post.');
			if(input('id')){
				Users::update($data);//静态方法更新
				return '更新用户成功';
			}
		}
	}

	// 删除客户
	public function delete($id=null){
		if($id){
			$delResult=Users::destroy($id);
			if($delResult){
				return '删除客户成功';
			}else{
				return '删除的客户不存在';
			}
		}
	}

	// 导出Excel
	public function export(){
		$objPHPExcel=new PHPExcel;
		// dump($objPHPExcel);die;
		$objPHPExcel->getProperties()->setCreator("Rehack")
									 ->setLastModifiedBy("Rehack")
									 ->setCompany("成都贝臣齿科")
									 ->setTitle("Office 2007 XLSX Test Document")
									 ->setSubject("Office 2007 XLSX Test Document")
									 ->setDescription("成都贝臣齿科.")
									 ->setKeywords("office 2007 openxml php")
									 ->setCategory("Test result file");


		$oSheet = $objPHPExcel->getActiveSheet(); //获取当前活动sheet标签
		$oSheet->setTitle('成都贝臣齿科客户签到情况表');
		$oSheet->getDefaultStyle()->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);//居中
        $oSheet->getStyle('F1:F10000')->getAlignment()->setWrapText(true);//自动换行

		$oSheet->getStyle('A1:R1')->getFill()->setFillType(\PHPExcel_Style_Fill::FILL_SOLID);
		$oSheet->getStyle('A1:R1')->getFill()->getStartColor()->setARGB("#0cedffb");//表头背景颜色
		$oSheet->getStyle('A1:R1')->getFont()->setBold(true);//表头字体加粗
		$arr=range('B','E');
		// var_dump($arr);
		// exit;
		//批量设置列宽
		for($i=0;$i<count($arr);$i++){
			$oSheet->getColumnDimension($arr[$i])->setWidth(20);
		}
        $oSheet->getColumnDimension('F')->setAutoSize(true);

		// echo $this->returndata()->data;die;
		$data=$this->getUserData();
		// dump($data);die;
		// 填充数据
		// $oSheet->fromArray($row); //此方法占内存
		$j=2;
		foreach ($data as $key => $value) {
			$oSheet->setCellValue('A'.$j,$value['name'])
			->setCellValue('B'.$j,$value['telephone'])
			->setCellValue('C'.$j,$value['sex'])
			->setCellValue('D'.$j,$value['create_time'])
			->setCellValue('E'.$j,$value['signin_time'])
			->setCellValue('F'.$j,$value['comment']);
			$j++;
		}
		//

		//为第一个sheet插入表头
		// $oSheet->insertNewRowBefore(1,1);
		$oSheet
        ->setCellValue('A1', '姓名')
        ->setCellValue('B1', '手机号码')
        ->setCellValue('C1', '性别')
        ->setCellValue('D1', '登记时间')
        ->setCellValue('E1', '签到时间')
        ->setCellValue('F1', '备注');





        //创建一个新的工作空间(sheet) 已签到客户
        $signedSheet=$objPHPExcel->createSheet();

        // $signedSheet = $objPHPExcel->getSheet(1); //获取当前活动sheet标签
        $signedSheet->setTitle('已签到客户表');
        $signedSheet->getStyle('E1:E10000')->getAlignment()->setWrapText(true);//自动换行
        $signedSheet->getColumnDimension('B')->setWidth(22);
        $signedSheet->getColumnDimension('D')->setWidth(22);
        // $signedSheet->getColumnDimension('E')->setWidth(30);
        $signedSheet->getColumnDimension('E')->setAutoSize(true);
        $signedData=$this->getUserData($signinStatus= 1);
        //写入多行数据
        foreach($signedData as $k=>$v){
            $k = $k+1;
            /* @func 设置列 */
            $objPHPExcel->getSheet(1)->setcellvalue('A'.$k, $v['name']);
            $objPHPExcel->getSheet(1)->setcellvalue('B'.$k, $v['telephone']);
            $objPHPExcel->getSheet(1)->setcellvalue('C'.$k, $v['sex']);
            $objPHPExcel->getSheet(1)->setcellvalue('D'.$k, $v['signin_time']);
            $objPHPExcel->getSheet(1)->setcellvalue('E'.$k, $v['comment']);
        }

        //创建一个新的工作空间(sheet) 未签到客户
        $nosignSheet=$objPHPExcel->createSheet();
        // $objPHPExcel->setactivesheetindex(1);
        // $nosignSheet = $objPHPExcel->getSheet(2); //获取当前活动sheet标签
        $nosignSheet->getStyle('E1:E10000')->getAlignment()->setWrapText(true);//自动换行
        $nosignSheet->setTitle('未签到客户表');
        $nosignSheet->getColumnDimension('B')->setWidth(22);
        $nosignSheet->getColumnDimension('D')->setWidth(22);
        $nosignSheet->getColumnDimension('E')->setAutoSize(true);
        $nosignData=$this->getUserData(2);
        //写入多行数据
        foreach($nosignData as $k=>$v){
            $k = $k+1;
            /* @func 设置列 */
            $objPHPExcel->getSheet(2)->setcellvalue('A'.$k, $v['name']);
            $objPHPExcel->getSheet(2)->setcellvalue('B'.$k, $v['telephone']);
            $objPHPExcel->getSheet(2)->setcellvalue('C'.$k, $v['sex']);
            $objPHPExcel->getSheet(2)->setcellvalue('D'.$k, $v['create_time']);
            $objPHPExcel->getSheet(2)->setcellvalue('E'.$k, $v['comment']);
        }

        $objPHPExcel->setActiveSheetIndex(0);//设置当前活动的sheet为第一个sheet(注意此代码不能放在最前面，因为当创建一个新的工作表时会自动设置该工资表作为活动工作表)
		$date=date("Ymd");
		//在本地保存文件
		// $obwrite->save('mulit_sheet.xls');

		// 浏览器输出
		// Redirect output to a client’s web browser (Excel5)
		header('Content-Type: application/vnd.ms-excel');
		header('Content-Disposition: attachment;filename="成都贝臣齿科活动现场客户签到情况表'.$date.'.xls"');
		header('Cache-Control: max-age=0');
		// If you're serving to IE 9, then the following may be needed
		header('Cache-Control: max-age=1');

		// If you're serving to IE over SSL, then the following may be needed
		// header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
		header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
		header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
		header ('Pragma: public'); // HTTP/1.0



		$objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
		$objWriter->save('php://output');
		exit;
	}

}
