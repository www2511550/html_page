<?php
namespace Home\Controller;
use Think\Controller;
class RobotController extends Controller {
	/**
	 * 首页展示
	 * @return [type] [description]
	 */
	public function index()
	{
		$this->display('robot/index');
	}
	/**
	 * 图灵机器人回复
	 * @return [type] [description]
	 */
	public function getWord()
	{
		$word = trim(I('post.word'));
		$ch = curl_init();
		$info = urlencode($word);
		$url = 'http://apis.baidu.com/turing/turing/turing?key=879a6cb3afb84dbf4fc84a1df2ab7319&info='.$info.'&userid=eb2edb736';
		$header = array(
		    'apikey: 7e38be24baa8332ba0e438609b6b5b71',
		);
		// 添加apikey到header
		curl_setopt($ch, CURLOPT_HTTPHEADER  , $header);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		// 执行HTTP请求
		curl_setopt($ch , CURLOPT_URL , $url);
		$res = json_decode(curl_exec($ch),true);
		$resWord = $res['text'];
		$leftStr = "<div class='one_left'>
			<span class='icon icon_left'><img src='../../../theme/robot/icon.jpg' alt=''><b class='b_left'></b></span>
			<p class='p_left'><span class='cons_left'>".$resWord."</span></p>
		</div>";
		// 聊天记录插入数据库
		$time = time();
		$ip = $this->input->ip_address();
		$sql = "INSERT INTO `robot` (userword, receive, addtime, ip) 
				VALUES ('{$word}','{$resWord}',{$time} , '{$ip}')";
		$this->db->query($sql);
		echo $leftStr;exit;
	}

	/**
	 * 获得客服对话列表
	 * @return [type] [description]
	 */
	public function getSpeakList()
	{
		$sql = "SELECT * FROM `robot` ORDER BY rid DESC LIMIT 200";
		$data = $this->db->query($sql)->result_array();
		//按日期排序
	    uasort($data, array($this, 'sort_by_date'));
	    //按日期分组
	    $data = $this->group_by_date($data);
	    // print_r($data);die;
		$this->load->view('robot/speakList',array('data'=>$data) );
	}

		/**
	 * description: 按日期分组
	 * @name : group_by_date
	 * @param:
	 * @return : array
	 * @author : Quan Zelin
	 * @time: 2015-3-26 10:30
	 */
	public function group_by_date( $data , $locale = 0 ){
		$return = $tmp_return = array();
		foreach( $data as $val ){
			$date = date( 'm-d', $val['addtime'] );
			if( $date == date('m-d') ){
				$name = $locale ? 'Today': '今天';
			}else if( $date == date( 'm-d', strtotime( 'tomorrow' ) ) ){
				$name = $locale ? 'Tomorrow' : '明天';
			}else{
				$name = $locale ? date( 'M-d', $val['addtime'] ): $date;
			}
			if( !isset( $tmp_return[$name] ) ){
				$tmp_return[$name] = array(
					"name"	=> $name,
					"list"	=> array( $val )
				);
			}else{
				$tmp_return[$name]['list'][] = $val;
			}
		}
		foreach( $tmp_return as $val ) $return[] = $val;
		return $return;
	}
	
	/**
	 * description: 按日期排序
	 * @name : sort_by_date
	 * @param:
	 * @return : array
	 * @author : Quan Zelin
	 * @time: 2015-3-26 10:30
	 */
	public function sort_by_date( $a, $b ){
		if( $a['addtime'] == $b['addtime'] ) return 0;
		return $a['addtime'] < $b['addtime'] ? -1 : 1;
	}
	
}
