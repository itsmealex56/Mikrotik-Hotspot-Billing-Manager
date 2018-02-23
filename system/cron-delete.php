<?php 

/** PHP Mikrotik Billing (https://ibnux.github.io/phpmixbill/) **/

require('config.php');
require('orm.php');

use PEAR2\Net\RouterOS;
require_once 'autoload/PEAR2/Autoload.php';

ORM::configure("mysql:host=$db_host;dbname=$db_name");
ORM::configure('username', $db_user);
ORM::configure('password', $db_password);
ORM::configure('return_result_sets', true);
ORM::configure('logging', true);

$result = ORM::for_table('tbl_appconfig')->find_many();
foreach($result as $value){ $config[$value['setting']]=$value['value']; }
date_default_timezone_set($config['timezone']);

$z = ORM::for_table('tbl_user_recharges')->where('method','voucher')->find_many();

foreach ($z as $zs){
	if($zs['type'] == 'Hotspot'){
		$date_now = strtotime(date("Y-m-d H:i:s"));
		$expiration = strtotime($zs['expiration'].' '.$zs['time']);
		
		if ($date_now >= $expiration){

			$u = ORM::for_table('tbl_user_recharges')->where('id',$zs['id'])->find_one();
			$c = ORM::for_table('tbl_customers')->where('id',$zs['customer_id'])->find_one();
			$m = ORM::for_table('tbl_routers')->where('name',$zs['routers'])->find_one();
			
			try {
				$client = new RouterOS\Client($m['ip_address'], $m['username'], $m['password']);
			} catch (Exception $e) {
				die('Unable to connect to the router.');
			}
			
			$printRequest = new RouterOS\Request('/ip/hotspot/user/print');
			$printRequest->setArgument('.proplist', '.id');
			$printRequest->setQuery(RouterOS\Query::where('name', $c['username']));
			$id = $client->sendSync($printRequest)->getProperty('.id');
							
			$setRequest = new RouterOS\Request('/ip/hotspot/user/remove');
			$setRequest->setArgument('numbers', $id);
			$client->sendSync($setRequest);
			$u->delete();
			$c->delete();
		}			
	}
}

$x = ORM::for_table('tbl_voucher')->where('status','1')->find_many();

foreach ($x as $xs){
	if($xs['type'] == 'Hotspot'){
		
			$y = ORM::for_table('tbl_voucher')->where('id',$xs['id'])->find_one();
			$y->delete();
			echo "<br>USED VOUCHER HAS BEEN DELETED<br>";
	}
}


?>