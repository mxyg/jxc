<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Dataright extends CI_Controller {

    public function __construct(){
        parent::__construct();
		//$this->common_model->checkpurview(82);
    }
	
	public function ar() {
		$data = $this->input->post(NULL,TRUE);
		if (count($data)>0) {
		    $userName = str_enhtml($this->input->get('userName',TRUE));
			$rightid  = (array)json_decode($data['rightid'],true);
			$info['rightids'] = join(',',$rightid['rightids']);
			$sql  = $this->mysql_model->update(ADMIN,$info,'(username="'.$userName.'")');
			if ($sql) {
				str_alert(200,'success');
			}
		}
		str_alert(-1,'更新失败');
	}
     
	public function dt() {
	    $ids = str_enhtml($this->input->post('userName',TRUE));
		die('{"status":200,"data":{"items":[{"FNAME":"仓库","FRIGHT":"1","FRIGHTID":"1","FNUMBER":"location"},{"FNAME":"客户","FRIGHT":"4","FRIGHTID":"4","FNUMBER":"customer"},{"FNAME":"供应商","FRIGHT":"2","FRIGHTID":"2","FNUMBER":"supplier"}],"totalsize":4},"msg":"success"}');	
	}
	
	public function update() {
	    $this->common_model->checkpurview();
		$data = $this->input->post(NULL,TRUE);
		if (count($data)>0) {
			$type     = max(intval($this->input->get('type',TRUE)),1);
			$userName = str_enhtml($this->input->get('userName',TRUE));
			$rights   = (array)json_decode($data['rights'],true);
			$rights   = @array_column($rights,'FRIGHT','FITEMID');

			switch ($type) {
				case 1:
					$list = $this->mysql_model->get_results(STORAGE,'(isDelete=0) order by id desc'); 
					foreach ($list as $arr=>$row) {
						$v[$arr]['FITEMID']     = intval($row['id']);
						$v[$arr]['FRIGHT']      = @$rights[$row['id']]==1 ? 1 : 0;
					}
					break;  
				case 2:
					$list = $this->mysql_model->get_results(CONTACT,'(isDelete=0) and type=10 order by id desc');  
					foreach ($list as $arr=>$row) {
						$v[$arr]['FITEMID']     = intval($row['id']);
						$v[$arr]['FRIGHT']      = @$rights[$row['id']]==1 ? 1 : 0;
					}
					break;  	
				case 4:
					$list = $this->mysql_model->get_results(CONTACT,'(isDelete=0) and type=-10 order by id desc');  
					foreach ($list as $arr=>$row) {
						$v[$arr]['FITEMID']     = intval($row['id']);
						$v[$arr]['FRIGHT']      = @$rights[$row['id']]==1 ? 1 : 0;
					}
					break; 
				default:     	
			}
			

			$info['righttype'.$type] = serialize($v);
			$sql  = $this->mysql_model->update(ADMIN,$info,'(username="'.$userName.'")');
			if ($sql) {
				str_alert(200,'success');
			}
		}
		str_alert(-1,'更新失败');
	} 
	
	 
	public function query() {
	    $v = array();
	    $type      = intval($this->input->get_post('type',TRUE));
		$skey      = str_enhtml($this->input->get_post('skey',TRUE));
		$userName  = str_enhtml($this->input->get_post('userName',TRUE));
		$righttype = $this->mysql_model->get_row(ADMIN,'(username="'.$userName.'")','righttype'.$type); 
		$righttype = @unserialize($righttype);
		$righttype = @array_column($righttype,'FRIGHT','FITEMID');
		switch ($type) {
			case 1:
			    $where = $skey ? ' and (locationNo like "%'.$skey.'%" or name like "%'.$skey.'%")' : '';
			    $list = $this->mysql_model->get_results(STORAGE,'(isDelete=0) '.$where.' order by id desc'); 
				foreach ($list as $arr=>$row) {
					$v[$arr]['FITEMID']     = intval($row['id']);
					$v[$arr]['FNAME']       = $row['name'];
					$v[$arr]['FITEMNO']     = $row['locationNo'];
					$v[$arr]['FRIGHT']      = @$righttype[$row['id']]==1 ? 1 : 0;
				}
				break;  
			case 2:
			    $where = $skey ? ' and (number like "%'.$skey.'%" or name like "%'.$skey.'%")' : '';
			    $list = $this->mysql_model->get_results(CONTACT,'(isDelete=0) '.$where.' and type=10 order by id desc');  
				foreach ($list as $arr=>$row) {
					$v[$arr]['FITEMID']     = intval($row['id']);
					$v[$arr]['FNAME']       = $row['name'];
					$v[$arr]['FITEMNO']     = $row['number'];
					$v[$arr]['FRIGHT']      = @$righttype[$row['id']]==1 ? 1 : 0;
				}
				break;  	
			case 4:
			    $where = $skey ? ' and (number like "%'.$skey.'%" or name like "%'.$skey.'%")' : '';
			    $list = $this->mysql_model->get_results(CONTACT,'(isDelete=0) '.$where.' and type=-10 order by id desc');  
				foreach ($list as $arr=>$row) {
					$v[$arr]['FITEMID']     = intval($row['id']);
					$v[$arr]['FNAME']       = $row['name'];
					$v[$arr]['FITEMNO']     = $row['number'];
					$v[$arr]['FRIGHT']      = @$righttype[$row['id']]==1 ? 1 : 0;
				}
				break; 
			default:     	
		}
		
		$data['status'] = 200;
		$data['msg']    = 'success'; 
		$data['data']['rows']       = $v;
		$data['data']['total']      = 1;
		$data['data']['records']    = count($v);
		$data['data']['page']       = 1;
		die(json_encode($data));
		
		
		//die('{"status":200,"data":{"total":1,"page":1,"records":2,"rows":[{"FNAME":"111111","FRIGHT":"1","FITEMNO":"111111","FITEMID":"12945968591930"},{"FNAME":"网店客户","FRIGHT":"0","FITEMNO":"999999","FITEMID":"999999"}]},"msg":"success"}');
		
		//die('{"status":200,"data":{"total":1,"page":1,"records":4,"rows":[{"FNAME":"222","FRIGHT":"1","FITEMNO":"ck2","FITEMID":"129459683994233"},{"FNAME":"北京仓库","FRIGHT":"1","FITEMNO":"CK001","FITEMID":"1294596749479816"},{"FNAME":"上海仓库1","FRIGHT":"1","FITEMNO":"CK3","FITEMID":"1294596749479825"},{"FNAME":"深圳仓库","FRIGHT":"0","FITEMNO":"CK2","FITEMID":"1294596749479822"}]},"msg":"success"}');
		
		
		
		//die('{"status":501,"msg":"the action query is not fund !"}');
	}
	
	 
	 
	 
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */