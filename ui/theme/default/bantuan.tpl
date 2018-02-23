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
<body style="background: url({$_theme}/styles/img/2.jpg) no-repeat fixed;
	-webkit-background-size: 100% 100%;
	-moz-background-size: 100% 100%;
	-o-background-size: 100% 100%;
	background-size: 100% 100%;	" class="client-login"> 
    
    <center style=" background: rgba(0,0,0,.5);">
	<div class="container">
		
		<div class="form-head mb20">

		</div>
<center><img  style="max-width:96%;margin-top:5%;" src="{$_theme}/styles/img/header.png" /></center>	
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
				
					<div class="panel-heading">Voucher Code Activation Guide</div>
					<div class="panel-body" style="min-height:100px;margin:0 auto;">
						<div class="form-container">
							<form class="form-horizontal" action="{$_url}login/post" method="post">
							
							<ul style="font-size:14px;font-family:'Century Gothic', tahoma, verdana;text-align:justify;margin-left:-15px;margin-right:15px;">
								<li>Activate <span style="font-weight:bold;">Voucher Code</span> to integrate with ITEA SOLUTIONS WI-FI HOTSPOT. 
								</li>
								<li>In the Activation Panel, enter a valid Voucher Name and Voucher Code and click the  <span style="font-weight:bold;">ACTIVATE</span>. You will automatically login to the hotspot server. You do not need to access this panel if your Voucher Code is active.
								</li>
							</ul>

				
								<div style="margin-top:8px;" class="btn-group btn-group-justified mb15">
									
									<div class="btn-group">
										<a href="{$_url}login" class="btn btn-primary"><i class="fa fa-unlock" aria-hidden="true"></i> ACTIVATION PANEL</a>
									</div>
																
								</div>
							
							</form>
						</div>
					</div>
				</div>
			</div> </center>
	</div>
	<div class="copyright">
	<center><strong><span style="font-size:11px;color:#bbb;"> &copy; 2018 Created by </span><span class="link-footer"><a href="https://www.itea-solutions.tk/" title=""target="_new" style="font-size:11px; color: #fff">Itea Solutions Internet Services</a></span></strong></center></div>
</center>
	<script src="scripts/vendors.js"></script>
</body>
</html>