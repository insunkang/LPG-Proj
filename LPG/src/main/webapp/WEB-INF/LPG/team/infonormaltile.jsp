<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Solid - Bootstrap Business Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="/LPG/img/favicon.png" rel="icon">
<link href="/LPG/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,700,900|Lato:400,900"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="/LPG/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="/LPG/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="/LPG/lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
<link href="/LPG/lib/hover/hoverex-all.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="/LPG/css/style.css" rel="stylesheet">

<style type="text/css">
table, th, td {
	border: 1px solid;
	border-collapse: collapse;
}

.emblum {
	background-color: blue;
	margin-top: 30px;
	margin-left: auto;
	margin-right: auto;
	width: 170px;
	height: 170px;
	border-radius: 100px;
}

.team_info_name {
	background-color: red;
	padding: 7px;
	margin-left: auto;
	margin-right: auto;
	border-radius: 30px;
	text-align: center;
	width: 200px;
	color: white;
}

.team_img {
	background-color: #e0e0e0;
	width: 40%;
	height: 300px;
	float: left;
}

.team_info {
	float: left;
	width: 60%;
	height: 100%;
	text-align: center;
}

.footer {
	clear: both;
	padding-top: 10px;
}

#tttable {
	border-collapse: collapse;
	width: 100%;
	padding:8px;
	text-align: center;
	border-bottom:1px solid #efefef;
	border-left: none;
	border-right: none;
}

.tttd {
	padding: 8px;
	text-align:center;
	border-bottom:1px solid #efefef;
	border-collapse:collapse;
	border-left: none;
	border-right: none;
}

.tttr:nth-child(even){
	background-color:#fdfdfd;
	}
.tttr:nth-child(odd){
	background-color:#e8e8e8;
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#aaaaaa', endColorstr='#eeeeee');
	}
.ttth {
	background-color:#384452;
	width: 33%;
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#000000', endColorstr='#6d6d6d');
	color:#FFFFFF;
	text-align:center;
	padding:8px;
	border-bottom:1px solid #efefef;
	border-collapse:collapse;
	border-left: none;
	border-right: none;
}

.ttrr {
	height: 35px;
}

.ttr {
	height: 79px;
}

.ttrr td {
	width: 50%;
}
.tttr:hover{
		  background-color: #ccccff;
		  cursor: pointer;
		}
</style>
<!-- ���ӱ׷��� -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], [ '��', 7 ], [ '��', 2 ],
				[ '��', 4 ], ]);

		var options = {
			title : '�� ����',
			pieHole : 0.4,
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('donutchart'));
		chart.draw(data, options);
	}
</script>

<!-- ����׷��� -->
<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawStuff);

	function drawStuff() {
		var data = new google.visualization.arrayToDataTable([ [ '', 'Point' ],
				[ "Goal", 5 ], [ "Assist", 1 ], [ "Lose", 3 ], ]);

		var options = {
			title : 'Chess opening moves',
			width : 500,
			legend : {
				position : 'none'
			},
			chart : {
				title : '',
				subtitle : ''
			},
			bars : 'horizontal', // Required for Material Bar Charts.
			axes : {
				x : {
					0 : {
						side : 'top',
						label : 'POINT'
					}
				// Top x-axis.
				}
			},
			bar : {
				groupWidth : "90%"
			}
		};

		var chart = new google.charts.Bar(document.getElementById('top_x_div'));
		chart.draw(data, options);
	};
</script>
</head>

<body>

	<div class="container mt" style="margin-bottom: 50px">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 centered">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<div>
						<a href="/team/mody.do" class="btn btn-theme" style="float: right">�� ���� ����</a>
						<a href="" class="btn btn-theme" style="float: right">���� ��� ����</a>
					</div>
					<div style="clear: both;">
						<div class="team_img">
							<div class="emblum"></div>
							<h2 class="team_info_name">�� �̸�</h2>
						</div>
						<div>
							<table class="team_info">
								<tr class="ttrr">
									<td><label>����</label> | <span>����</span></td>
									<td><label>���� ��</label> | <span>00��</span></td>
								</tr>
								<tr class="ttrr">
									<td><label>�� Ȱ������</label> | <span>���</span></td>
									<td><label>�������</label> | <span>�౸</span></td>
								</tr>
								<tr class="ttrr">
									<td><label>�Ƿ�</label> | <span>��</span></td>
									<td><label>���� ����</label> | <span>20��</span></td>
								</tr>
								<tr class="ttrr">
									<td><label>������ ����</label> | <span>�˻���</span></td>
									<td><label>�� ����</label> | <span>3-3-4</span></td>
								</tr>
								<tr class="ttr">
									<td colspan="2">
										<div id="team_info">�� �Ұ����� �Է����ּ���</div>
									</td>
								</tr>
								<tr class="ttr">
									<td colspan="2">
										<div id="team_manner">�� �ųʸ� �Է����ּ���</div>
									</td>
								</tr>
							</table>
						</div>
						<div class="footer">
							<table id="tttable">
								<tr>
									<th class="ttth">�̸�</th>
									<th class="ttth">���</th>
									<th class="ttth">������</th>
								</tr>
								<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
									<td class="tttd">��00</td>
									<td class="tttd">�Ŵ���</td>
									<td class="tttd">�̵��ʴ�</td>
								</tr>
								<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
									<td class="tttd">��00</td>
									<td class="tttd">����</td>
									<td class="tttd">���ݼ�</td>
								</tr>
								<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
									<td class="tttd">��00</td>
									<td class="tttd">����</td>
									<td class="tttd">�����</td>
								</tr>
								<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
									<td class="tttd">��00</td>
									<td class="tttd">����</td>
									<td class="tttd">��Ű��</td>
								</tr>
							</table>
						</div>
						<div style="margin-top: 30px;">
							<div id="donutchart"
								style="width: 40%; height: 250px; float: left;"></div>
							<div id="top_x_div"
								style="width: 60%; height: 250px; float: left;"></div>
						</div>
 
					</div>
					
				</div>
			</div>

		</div>
	</div>

</body>
</html>