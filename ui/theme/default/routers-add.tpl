{include file="sections/header.tpl"}

		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="panel panel-default panel-hovered panel-stacked mb30">
					<div class="panel-heading">{$_L['Add_Router']}</div>
						<div class="panel-body">
						
                <form class="form-horizontal" method="post" role="form" action="{$_url}routers/add-post" >            
                    <div class="form-group">
						<label class="col-md-2 control-label">{$_L['Router_Name']}</label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="name" name="name" placeholder="example : RB750">
						</div>
                    </div>
                    <div class="form-group">
						<label class="col-md-2 control-label">{$_L['IP_Address']}</label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="ip_address" name="ip_address" placeholder="example : 192.168.1.1 / bla-bla.mooo.com">
						</div>
                    </div>
                    <div class="form-group">
						<label class="col-md-2 control-label">{$_L['Username']}</label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="username" name="username" placeholder="router username">
						</div>
                    </div>
                    <div class="form-group">
						<label class="col-md-2 control-label">{$_L['Router_Secret']}</label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="password" name="password" placeholder="router password">
						</div>
                    </div>
					
                    <div class="form-group">
						<label class="col-md-2 control-label">{$_L['Description']}</label>
						<div class="col-md-6">
							<input class="form-control" id="description" name="description" placeholder="hotspot domain without http://">
						</div>
                    </div>
					

					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<button class="btn btn-primary waves-effect waves-light" type="submit">{$_L['Save']}</button>
							Or <a href="{$_url}routers/list">{$_L['Cancel']}</a>
						</div>
					</div>
                </form>
				
					</div>
				</div>
			</div>
		</div>

{include file="sections/footer.tpl"}
