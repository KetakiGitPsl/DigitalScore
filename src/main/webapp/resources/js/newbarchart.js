$(function () {
    function getChartData(chart) {
        //alert("HighChart");
        var point = {};
        $.ajax({
            // url: 'https://qm35duquk9.execute-api.us-east-1.amazonaws.com/prod/ratings',
            url: 'http://ec2-54-246-213-248.eu-west-1.compute.amazonaws.com:8080/DigitalScore/score',
            type: 'GET',
            contentType: "application/json;charset=utf-8",
            dataType: 'json',
            error: function (err) {
                alert("error occured!" + JSON.stringify(err));
            },
            success: function (data) {
                // for(var i in data)
                // alert(data[i].projectName+' '+data[i].score);
                var projArr = [];
                var chartData = [];
                $.each(data, function (index) {
                    var pid = data[index].projectName;
                    var score = parseInt(data[index].score);
                    projArr[index] = pid;
                    chartData[index] = score;
                });
                // alert(JSON.stringify(projArr));
                // alert(JSON.stringify(chartData));
                chart.series[0].setData(chartData);
            }
        });
    };

    var chart = new Highcharts.Chart(
        {
            chart: {
                type: 'column',
                renderTo: 'container'
            },
            title: {
                text: 'Technothon Project Feedback Ratings!'
            },
            // subtitle: {
            //     text: 'Source: RESTFulService!'
            // },
            colors: ['red', 'green', 'blue', 'yellow', 'palegreen'],
            xAxis: {
                type: 'category',
                categories: ['Block Chain', 'Cloud', 'Data Stack', 'Edge Computing', 'Machine Learning'],
                title: {
                    text: 'Projects',
                    style: {
                        fontSize: '25px'
                    }
                },
                labels: {
                    rotation: -45,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                }
            },
            yAxis: {
                min: 0,
                max: 10,
                title: {
                    text: 'Ratings',
                    style: {
                        fontSize: '25px'
                    }
                },
                tickInterval: 1,
            },
            legend: {
                enabled: false
            },
            tooltip: {
                pointFormat: 'Ratings for Projects in 2018: <b>{point.y:.1f}</b>'
            },
            series: [{
                name: 'Ratings',
                data: [],
                colorByPoint: true,
                dataLabels: {
                    enabled: true,
                    rotation: -90,
                    color: '#FFFFFF',
                    align: 'right',
                    format: '{point.y:.1f}', // one decimal
                    y: 10, // 10 pixels down from the top
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                }
            }]
        });
    	
    function setBarData()
    {
        chart.series[0].setData(getChartData(chart));
    };

    setBarData();
    setInterval(setBarData, 30000);
	
});

