<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>超市账单管理系统-供应商管理</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="menu">

		<table>
			<tbody>
				<tr>
					<td><form method="post" action="provider.do">
							<input name="method" value="query" class="input-text" type="hidden"> 供应商名称：<input name="proName" class="input-text" type="text" value="">&nbsp;&nbsp;&nbsp;&nbsp;
							<input value="查 询" type="submit">
						</form>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="main">

		<div class="optitle clearfix">
			<em><input value="添加供应商" class="input-button" onclick="window.location='providerAdd.html'" type="button">
			</em>
			<div class="title">供应商管理&gt;&gt;</div>
		</div>
		<div class="content">
			<table class="list">
				<tbody>
					<tr>
						<td width="70" height="29"><div class="STYLE1" align="center">编号</div>
						</td>
						<td width="80"><div class="STYLE1" align="center">供应商名称</div>
						</td>
						<td width="80"><div class="STYLE1" align="center">联系人</div>
						</td>
						<td width="100"><div class="STYLE1" align="center">联系电话</div>
						</td>
						<td width="100"><div class="STYLE1" align="center">传真</div>
						</td>
						<td width="100"><div class="STYLE1" align="center">操作时间</div>
						</td>
					</tr>
					
					<tr>
						<td height="23"><span class="STYLE1">5</span>
						</td>
						<td><span class="STYLE1"><a href="providerView.html" style="color:red"> 北京市粮油总公司</a>
						</span>
						</td>
						<td><span class="STYLE1"> 黄上清</span>
						</td>
						<td><span class="STYLE1">18900000000</span>
						</td>
						<td><span class="STYLE1"></span>
						</td>
						<td><span class="STYLE1">2014-10-09</span>
						</td>
					</tr>
					
					<tr>
						<td height="23"><span class="STYLE1">7</span>
						</td>
						<td><span class="STYLE1"><a href="provider.do?method=getInfo&amp;proId=7"> 邯郸市五得利面粉厂</a>
						</span>
						</td>
						<td><span class="STYLE1"> 程海洋</span>
						</td>
						<td><span class="STYLE1">18900000000</span>
						</td>
						<td><span class="STYLE1"></span>
						</td>
						<td><span class="STYLE1">2014-10-09</span>
						</td>
					</tr>
					
					<tr>
						<td height="23"><span class="STYLE1">6</span>
						</td>
						<td><span class="STYLE1"><a href="provider.do?method=getInfo&amp;proId=6"> 顺义燕京啤酒批发3部</a>
						</span>
						</td>
						<td><span class="STYLE1"> 杨光</span>
						</td>
						<td><span class="STYLE1">18900000000</span>
						</td>
						<td><span class="STYLE1"></span>
						</td>
						<td><span class="STYLE1">2014-10-10</span>
						</td>
					</tr>
					
					
				</tbody>
			</table>
		</div>
	</div>

</body></html>