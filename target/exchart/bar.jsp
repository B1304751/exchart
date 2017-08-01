<!doctype html>
<html>

<head>
    <title>Bar Chart</title>
    <script src="resources/chart.js"></script>
    <script src="resources/utils.js"></script>
    <style>
    canvas {
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
    </style>
</head>

<body>
    <div id="container" style="width: 10%;">
        <canvas id="canvas"></canvas>
    </div>
    
    <script>
    	var PORTS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35];
    	var USEAGES = [97, 96, 95, 88, 72, 70, 67, 61, 56, 55, 51, 45, 38, 35, 34, 32, 27, 26, 22, 21, 20, 18, 16, 14, 12, 11, 9, 8, 6, 4, 3, 1];
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
            var ctx = document.getElementById("canvas").getContext("2d");
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
        
    </script>
    
    
    <a style="font-size: 9px; font-family: arial" href="http://localhost:8080/exchart/bar" target="_blank">Bar Chart</a>
    <a style="font-size: 9px; font-family: arial" href="http://localhost:8080/exchart/sparkline" target="_blank">Sparkline Chart</a>
</body>
</html>