<html>

<head>
<title>Bar Chart</title>
<script src="resources/chart.js"></script>
<script src="resources/utils.js"></script>
<script src="resources/analyser.js"></script>
<script src="resources/style.css"></script>
<style>
canvas {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
}
</style>
</head>

<body>
	<div class="container" style="width: 8%;">
		<canvas id="chart-0"></canvas>
		
	</div>
	<script>
    	var PORTS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30];
    	var USEAGES = [97, 96, 95, 89, 88, 81, 72, 70, 67, 61, 56, 55, 51, 49, 48, 45, 44, 38, 35, 34, 32, 27, 26, 22, 18, 14, 11];
        var color = Chart.helpers.color;
        var length = PORTS.length;
        var COLOR = [];
        for (var i = 0; i < length; i++) {
        	if (USEAGES[i] == 67) {
        		COLOR[i] = "#9e9e9e";
        	} else {
        		COLOR[i] = "#eeeeee";
        	}
        }
        var barChartData = {
            labels: PORTS,
            datasets: [{
                label: 'Port data',
                backgroundColor: COLOR,
                borderColor: window.chartColors.white,
                borderWidth: 1,
                data: USEAGES
            }]

        };
        
        window.onload = function() {
            var ctx = document.getElementById("chart-0").getContext("2d");
            window.myBar = new Chart(ctx, {
                type: 'bar',
                data: barChartData,
                responsive : true,
                options: {
                	legend: {
                		display: false,
                	},
                	scales: {
                		xAxes: [{
                			display: false,
                			categoryPercentage: 1.0,
                			barPercentage: 1.0,
                		}],
                		yAxes: [{
                			display: false,
                		}]
                	},
                	tooltips: {
                		enabled: false,
                	},
                	hover: {
                		mode: "null",
                	}
                }
            });
            
        };
        
        var datapoints = [0, 10, 5, 18, 20, 22, 19, 35, 35, 40, 40, 45, 38, 38, 55, 39, 56, 30, 21, 14, 14, 50, 48, 67, 21, 28, 28, 35, 14, 26, 14, 22, 21, 28, 40];
        var LABLES = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35];
        var RADIUS = [];
        for (var i = 0; i < datapoints.length; i++) {
        	if (datapoints[i] == 48) {
        		RADIUS[i] = 2.75;
        	} else {
        		RADIUS[i] = 0;
        	}
        }
		var config = {
            type: 'line',
            data: {
                labels: LABLES,
                datasets: [{
                    label: "Linear interpolation",
                    data: datapoints,
                    radius: RADIUS,
                    borderWidth: 1.75,
                    borderColor: window.chartColors.blue,
					backgroundColor: window.chartColors.blue,
                    fill: false,
					lineTension: 0
                }]
            },
            options: {
                responsive: true,
                legend: {
                	display: false,
                },
                tooltips: {
                    enabled: false,
                },
                scales: {
                    xAxes: [{
                        display: false,
                    }],
                    yAxes: [{
                        display: false,
                        
                        ticks: {
                            suggestedMin: 0,
                            suggestedMax: 100,
                        }
                    }]
                },
                title: {
                	display: true,
                	fontFamily: 'Arial',
                	fontStyle: 'Bold',
                	fontSize: 10,
                	fontColor: 'Grey',
                	position: 'bottom',
                	text: "Avg 60%  Max 92%  Min 15%  Std Dev 60%"
                }
            }
        };

        
    </script>
</body>
</html>