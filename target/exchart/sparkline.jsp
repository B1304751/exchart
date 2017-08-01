<!doctype html>
<html>

<head>
<title>Sparkline Chart</title>
<script src="resources/chart.js"></script>
<script src="resources/utils.js"></script>
<style>
<
style>canvas {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
}
</style>
</head>

<body>
	<div style="width: 10%;">
		<canvas id="canvas"></canvas>
	</div>
	<br>
	<br>
	<script>
		var datapoints = [ 0, 10, 5, 18, 20, 22, 19, 35, 35, 40, 40, 45, 38,
				38, 55, 39, 56, 30, 21, 14, 14, 50, 48, 67, 21, 92, 28, 35, 14,
				26, 14, 22, 21, 28, 40 ];
		var LABLES = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
				17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32,
				33, 34, 35 ];
		var RADIUS = [];
		for (var i = 0; i < datapoints.length; i++) {
			if (datapoints[i] == 92) {
				RADIUS[i] = 2.75;
			} else {
				RADIUS[i] = 0;
			}
		}

		var config = {
			type : 'line',
			data : {
				labels : LABLES,
				datasets : [ {
					label : "Linear interpolation",
					data : datapoints,
					radius : RADIUS,
					borderWidth : 1.75,
					borderColor : window.chartColors.blue,
					backgroundColor : window.chartColors.blue,
					fill : false,
					lineTension : 0
				} ]
			},
			options : {
				responsive : true,
				legend : {
					display : false,
				},
				tooltips : {
					enabled : false,
				},
				scales : {
					xAxes : [ {
						display : false,
					} ],
					yAxes : [ {
						display : false,

						ticks : {
							suggestedMin : 0,
							suggestedMax : 100,
						}
					} ]
				},
				title : {
					display : true,
					fontFamily : 'Arial',
					fontStyle : 'Bold',
					fontSize : 10,
					fontColor : 'Grey',
					position : 'bottom',
					text : "Avg 60%  Max 92%  Min 15%  Std Dev 60%"
				},
				hover: {
            		mode: "null",
            	}
			}
		};

		window.onload = function() {
			var ctx = document.getElementById("canvas").getContext("2d");
			window.myLine = new Chart(ctx, config);
		};
	</script>
	<a style="font-size: 9px; font-family: arial"
		href="http://localhost:8080/exchart/bar" target="_blank">Bar Chart</a>
	<a style="font-size: 9px; font-family: arial"
		href="http://localhost:8080/exchart/sparkline" target="_blank">Sparkline
		Chart</a>
</body>

</html>
