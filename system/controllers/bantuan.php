<?php
/**
* PHP Mikrotik Billing (https://ibnux.github.io/phpmixbill/)


* @copyright	Copyright (C) 2014-2015 PHP Mikrotik Billing
* @license		GNU General Public License version 2 or later; see LICENSE.txt

**/

if (isset($routes['1'])) {
    $do = $routes['1'];
} else {
    $do = 'login-display';
}

switch($do){

    case 'login-display':
        $ui->display('bantuan.tpl');
        break;

    default:
        $ui->display('bantuan.tpl');
        break;
}

