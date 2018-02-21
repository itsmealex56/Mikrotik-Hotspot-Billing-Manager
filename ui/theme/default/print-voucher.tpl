<!DOCTYPE html>
<html>
<head>
    <title>{$_title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="{$_theme}/images/favicon.ico">
 <link rel="stylesheet" href="{$_theme}/styles/font-awesome/css/font-awesome.min.css">

    <style>
 .ukuran {
 size:A4;
 }
 
 body,td,th {
 font-size: 12px;
 font-family: "Trebuchet MS", Verdana, sans-serif;
 }
 page[size="A4"] {
   background: white;
   width: 21cm;
   height: 29.7cm;
   display: block;
   margin: 0 auto;
   margin-bottom: 0.5cm;
   html, body {
	width: 210mm;
	height: 297mm;
   }
 }
 @media print {
        body {
            size: auto;
            margin: 0;
            box-shadow: 0;
        }
        page[size="A4"] {
            margin: 0;
            size: auto;
            box-shadow: 0;
        }
        .page-break { display: block; page-break-before: always; }
        .no-print, .no-print *
        {
            display: none !important;
        }
    }
	
.box {
	display: inline-block;
	height: 125px;
	width: 192px;
	background-repeat: no-repeat;
	background-position: center center;
	border-width: 1px;
	border-style: dashed;
	border-color: #999999;
	#border-left-width: 1px;
	#border-left-style: dashed;
	#border-left-color: #999999;
}

.kiri {
	float: left;
	#width: 110px;
	margin-top: 51px;
	margin-left: 66px;
	font-family: "Courier New";
	#font-size: 13px;
    font-weight: bold;
}
.kanan {
	float: right;
	width: 103px;
	margin-top: 84px;

}

.plans {

	font-size:17px;
	margin-top: 3px;
	margin-left:-30px;
	
}

.user {

	font-size:20px;
	margin-top: 16px;
	margin-left:-30px;
	
}

.price {
	transform: rotate(-90deg);
	transform-origin: left top 0;
	font-size:22px;
	font-family:tahoma;
	font-weight:normal;
	margin-left:-68px;
	margin-top:20px;
	text-align:center;
}

.qrcode {
	height: 100px;
	width: 100px;
}	
    </style>
</head>
 
<body>
<page size="A4">
        <form method="post" action="{$_url}prepaid/print-voucher/" class="no-print">
        <table width="100%" border="0" cellspacing="0" cellpadding="1" class="btn btn-default btn-sm">
            <br><tr>

                <td style="width:220px;">Jenis Paket <select id="plan_id" name="planid" style="width:130px">
                <option value="0">-- Semua --</option>
                {foreach $plans as $plan}
                    <option value="{$plan['id']}" {if $plan['id']==$planid}selected{/if}>{$plan['name_plan']}</option>
                {/foreach}
                </select></td>
                <td><button type="submit">submit</button></td>
            </tr>
        </table><hr>
        	<center><button type="button" id="actprint" class="btn btn-default btn-sm no-print">{$_L['Click_Here_to_Print']}</button><br>
        </center>
        </form><br/>
        
		<div id="printable">
			{foreach $v as $vs}
			{$jml = $jml + 1}
		<div class="box" style="background-image:url({$_theme}/vouchers/{number_format($vs['price'],0,$_c['dec_point'],$_c['thousands_sep'])}.jpg);background-size: 192px 125px;">
		
		
		<div class="kiri">
			<div class="plans">{$vs['name_plan']}</div> 
			<div class="user">{$vs['code']}</div> 
			<!--<div class="price">{$_c['currency_code']} {number_format($vs['price'],0,$_c['dec_point'],$_c['thousands_sep'])}</div> -->   				
			
		</div>
  <!--<div class="kanan">
	<div class="qrcode" id="{$vs['code']}"></div>
		<script>
		var typeNumber = 0;
		var errorCorrectionLevel = 'L';
		var qr = qrcode(typeNumber, errorCorrectionLevel);
		qr.addData("http://oasis-hotspot.net/hotspot/login?username={$vs['code']}&password={$vs['code']}");
		qr.make();
		document.getElementById("{$vs['code']}").innerHTML = qr.createImgTag();
		</script>
    </div>-->
		<div style="clear:both"></div>
</div>
 
                {if $jml == $pagebreak}
                {$jml = 1000}
                <!-- pageBreak 
                <div class="page-break"><div class="no-print" style="background-color: #ffffff; color:#FFF;" align="center">-- pageBreak --<hr></div></div>-->
                {/if}
                {/foreach}
        </div>
</page>
<script src="{$_theme}/scripts/jquery-1.10.2.js"></script>
{if isset($xfooter)}
    {$xfooter}
{/if}
<script>
    jQuery(document).ready(function() {
        // initiate layout and plugins
        $("#actprint").click(function() {
            window.print();
            return false;
        });
    });
</script>
 
</body>
</html>