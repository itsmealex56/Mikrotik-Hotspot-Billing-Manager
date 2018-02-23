{include file="sections/header.tpl"}

<div class="row">
	<div class="col-md-6 col-sm-12">
		<div class="panel panel-hovered panel-default panel-stacked mb30">
			<div class="panel-heading">PRINT INVOICE</div>
			<div class="panel-body">
				<div class="well">
				<fieldset style="font-family:Century Gothic;">
<pre>+++++++++++++++++++++++++++++++++++++++
<b>{$_c['CompanyName']}</b>
{$_c['address']}
{$_c['phone']}
+++++++++++++++++++++++++++++++++++++++
INVOICE		: <b>{$in['invoice']}</b>
{$_L['Date']}		: {$date}
SALES		: {$_admin['fullname']}

{$_L['Type']}		: {$in['type']}
{$_L['Plan_Name']}	: {$in['plan_name']}
{$_L['Plan_Price']} 		: {$_c['currency_code']} {number_format($in['price'],2,$_c['dec_point'],$_c['thousands_sep'])}
ID Voucher 	: {$in['username']}
Password 	: *****

{$_L['Created_On']} 	: {date($_c['date_format'], strtotime($in['recharged_on']))} {$in['time']}
{$_L['Expires_On']} 	: {date($_c['date_format'], strtotime($in['expiration']))} {$in['time']}
+++++++++++++++++++++++++++++++++++++++</pre>
{$_c['note']}
				</fieldset>
				</div>
				<form class="form-horizontal" method="post" action="{$_url}prepaid/print" target="_blank">
					<input type="hidden" name="id" value="{$in['id']}">
					<button type="submit" class="btn btn-default btn-sm"><i class="fa fa-print"></i> {$_L['Click_Here_to_Print']}</button>
					<a href="{$_url}prepaid/list" class="btn btn-primary"><i class="ion-reply-all"></i>{$_L['Finish']}</a>
				</form>
				
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	var s5_taf_parent = window.location;
	function popup_print() {
	window.open('print.php?page=<?php echo $_GET['act'];?>','page','toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,width=800,height=600,left=50,top=50,titlebar=yes')
	}
</script>
{include file="sections/footer.tpl"}
