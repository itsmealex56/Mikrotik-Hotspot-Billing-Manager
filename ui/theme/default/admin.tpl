<!DOCTYPE html>
<html>
<head>
	<meta name="robots" content="noindex, nofollow" />
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>{$_title} - {$_L['Login']}</title>
	<link rel="shortcut icon" href="{$_theme}/images/logo.png" type="image/x-icon" />
	
	<!-- Icons -->
	<link rel="stylesheet" href="{$_theme}/fonts/ionicons/css/ionicons.min.css">
	<link rel="stylesheet" href="{$_theme}/styles/font-awesome/css/font-awesome.min.css">

	<!-- Plugins -->
	<link rel="stylesheet" href="{$_theme}/styles/plugins/waves.css">
	<link rel="stylesheet" href="{$_theme}/styles/plugins/perfect-scrollbar.css">
	
	<!-- Css/Less Stylesheets -->
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
	background-size: 100% 100%;	" id="app" class="app off-canvas body-full">
	
	<div>
		<div style="font-family:Century Gothic;" class="content-container" id="content"><br/>
		
<h1 style="font-size:30px;text-align:center;color:#CCC;margin-top:7%;">{$_c['CompanyName']}</h1>

			<div class="page page-auth">
				<div class="auth-container">
					<div style="text-align:center;" class="form-head mb20">
						<h4>ADMIN HOTSPOT LOGIN</h4>
					<!--	<h5 class="text-normal h5 text-center">{$_L['Sign_In_Admin']}</h5>	-->
					</div>
					
				{if isset($notify)}
					{$notify}
				{/if}
					<div class="form-container">
						<form class="form-horizontal" action="{$_url}admin/post" method="post">
							<div style="margin-top:20px;" class="input-group margin-bottom-sm">
								<span class="input-group-addon"><i class="fa fa-user-circle-o fa-fw"></i></span>
								<input class="form-control" type="text" required placeholder="Username" id="username" name="username">
							</div>
							
							<div style="margin-top:10px;" class="input-group">
								<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
								<input class="form-control" type="password" required placeholder="Password" id="password" name="password">
							</div>
<br/>
							<div class="clearfix">
								<div class="ui-checkbox ui-checkbox-primary right">
									<label>
										<input type="checkbox"> 
										<span>Remember</span>
									</label>
								</div>
							</div>
							<div class="btn-group btn-group-justified mb15">
								<div class="btn-group">
									<button type="submit" class="btn btn-primary"><i class="fa fa-sign-in" aria-hidden="true"></i>LOGIN</button>
								</div>
							</div> 
						</form>
					</div>

				</div>
			</div>
		</div> 
	</div>
	<script src="scripts/vendors.js"></script>
</body>
</html>