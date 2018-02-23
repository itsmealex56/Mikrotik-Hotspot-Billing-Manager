<!DOCTYPE html>
<html>
<head>
    <title>{$_title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="{$_theme}/styles/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="{$_theme}/images/favicon.ico">

	<script type="text/javascript">
	function printpage() {
		window.print();  
	}
	</script>
</head>

<body topmargin="0" leftmargin="0" onload="printpage()">
<div class="row">
    <div class="col-md-12">
        <table width="200">
			<tr>
				<td>
				<fieldset style="font-family:Century Gothic;">
<pre>+++++++++++++++++++++++++++++++++++++++
<b>{$_c['CompanyName']}</b>
{$_c['address']}
{$_c['phone']}
+++++++++++++++++++++++++++++++++++++++
INVOICE		: <b>{$d['invoice']}</b>
{$_L['Date']}		: {$date}
SALES		: {$_admin['fullname']}

{$_L['Type']}		: {$d['type']}
{$_L['Plan_Name']}	: {$d['plan_name']}
{$_L['Plan_Price']} 		: {$_c['currency_code']} {number_format($d['price'],2,$_c['dec_point'],$_c['thousands_sep'])}
ID Voucher 	: {$d['username']}
Password 	: *****

{$_L['Created_On']} 	: {date($_c['date_format'], strtotime($d['recharged_on']))} {$d['time']}
{$_L['Expires_On']} 	: {date($_c['date_format'], strtotime($d['expiration']))} {$d['time']}
+++++++++++++++++++++++++++++++++++++++</pre>
{$_c['note']}
				</fieldset>
				</td>
			</tr>
		</table>
    </div>
</div>

<script src="{$_theme}/scripts/jquery-1.10.2.js"></script>
<script src="{$_theme}/scripts/bootstrap.min.js"></script>
{if isset($xfooter)}
    {$xfooter}
{/if}

</body>
</html>
