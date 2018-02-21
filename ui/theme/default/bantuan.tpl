<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>{$_title} - LOGIN</title>
	<link rel="shortcut icon" href="{$_theme}/images/logo.png" type="image/x-icon" />
	
	<!-- Css/Less Stylesheets -->
	<link rel="stylesheet" href="{$_theme}/styles/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="{$_theme}/styles/bootstrap.min.css">
	<link rel="stylesheet" href="{$_theme}/styles/main.min.css">

 	<!-- <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300' rel='stylesheet' type='text/css'> -->
	<!-- Match Media polyfill for IE9 -->
	<!--[if IE 9]> <script src="{$_theme}/scripts/ie/matchMedia.js"></script>  <![endif]--> 

</head>
<body class="client-login">
	<div class="container">
		
		<div class="form-head mb20">

		</div>
<center><img  style="max-width:96%;margin-top:5%;" src="{$_theme}/styles/img/head-min.png" /></center>	
<center>
			<div style="max-width:400px;margin-top:2%;">
				<div class="panel panel-default">
				
		{if isset($notify)}
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					{$notify}
				</div>
			</div>
		{/if}
				
					<div class="panel-heading">Panduan Aktivasi Kode Voucher</div>
					<div class="panel-body" style="min-height:100px;margin:0 auto;">
						<div class="form-container">
							<form class="form-horizontal" action="{$_url}login/post" method="post">
							
							<ul style="font-size:14px;font-family:'Century Gothic', tahoma, verdana;text-align:justify;margin-left:-15px;margin-right:15px;">
								<li>Aktivasikan <span style="font-weight:bold;">Kode Voucher</span> anda agar terintegrasi dengan server hotspot {$_c['CompanyName']}.
								</li>
								<li>Pada Panel Aktivasi, masukkan Nama dan Kode Voucher yang masih valid dan klik tombol <span style="font-weight:bold;">AKTIVASI</span>, otomatis anda akan login ke server hotspot. Anda tidak perlu mengakses panel ini jika Kode Voucher anda sudah aktif.
								</li>
							</ul>

				
								<div style="margin-top:8px;" class="btn-group btn-group-justified mb15">
									
									<div class="btn-group">
										<a href="{$_url}login" class="btn btn-primary"><i class="fa fa-unlock" aria-hidden="true"></i> PANEL AKTIVASI</a>
									</div>
																
								</div>
							
							</form>
						</div>
					</div>
				</div>
			</div> </center>
	</div>
	<div class="copyright">
	<center><strong><span style="font-size:11px;color:#bbb;">2017 &copy; <a href="https://github.com/ibnux/phpmixbill" title="PHPMixBill on GitHUB" target="_blank">PHPMixBill</a> | Modified by <a href="https://www.facebook.com/ef.doank" title="Profil Facebook EF.DOANK" target="_blank">EF.DOANK</a></span></strong></center></div>
	<script src="scripts/vendors.js"></script>
</body>
</html>