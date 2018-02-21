<!DOCTYPE html>
<html>
<head>
	<meta name="robots" content="noindex, nofollow" />
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
<body style="background: url({$_theme}/styles/img/1.jpg) no-repeat fixed;
	-webkit-background-size: 100% 100%;
	-moz-background-size: 100% 100%;
	-o-background-size: 100% 100%;
	background-size: 100% 100%;	" class="client-login">
	<div class="container">
		
		<div class="form-head mb20">

		</div>
<center><img  style="max-width:96%;margin-top:5%;" src="{$_theme}/styles/img/head-min.png" /></center>	
<center>
			<div style="max-width:400px;margin-top:2%;">
				<div class="panel panel-default">
				
		
				
					<div class="panel-heading">{$_c['CompanyName']}<br>Voucher Activation Panel</div>
					<div class="panel-body" style="min-height:100px;margin:0 auto;">
						<div class="form-container">
							<form class="form-horizontal" action="{$_url}register/post" method="post">
							<br/>
							
							<div style="margin-top:-20px;margin-bottom:5px;">
							{if isset($notify)}
								{$notify}
							{/if}
							</div>
							
							<div style="margin-top:20px;" class="input-group margin-bottom-sm">
								<span class="input-group-addon"><i class="fa fa-user-circle-o fa-fw"></i></span>
								<input class="form-control" type="text" required placeholder="Enter Username" id="fullname" name="fullname">
							</div>
							
							<div style="margin-top:10px;" class="input-group">
								<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
								<input class="form-control" type="text" required placeholder="Enter your Voucher Code" id="kodevoucher" name="kodevoucher">
							</div>
							
								<div style="margin-top:30px;" class="btn-group btn-group-justified mb15">
									<div  class="btn-group">
										<button class="btn btn-primary waves-effect waves-light" type="submit"><i class="fa fa-unlock" aria-hidden="true"></i> ACTIVATE</button>
									</div>
									<div class="btn-group">
										<a href="{$_url}bantuan" class="btn btn-success"><i class="fa fa-info-circle" aria-hidden="true"></i> HELP</a>
									</div>
								</div>
							
								<div style="margin-top:-5px;" class="btn-group btn-group-justified mb15">
									<div class="btn-group">
										<button onclick="window.history.back();" class="btn btn-primary waves-effect waves-light" style="background-color: #008B8B ;border:1px solid #008B8B;" class="btn btn-success"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i>
 BACK</button>
									</div>
								</div>
							
							</form>
						</div>
					</div>
				</div>
			</div> </center>
	</div>

	<script src="scripts/vendors.js"></script>
</body>
</html>