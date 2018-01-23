function visitorData (res) {
	
	console.log(res);
	
	var series = [],
	    salesData= res.length;

	for (var i=0; i< res.length; i++) {
    	    series.push({"name" : res[i].projectName, "data" : res[i].score});
    	} 
	
	console.log(series);
	
   $('#container').highcharts({
    chart: {
        type: 'column'
    },
    title: {
        text: 'Average Visitors'
    },
    xAxis: {
        categories: ['Proj56','Proj1']
    },
    yAxis: {
        title: {
            text: 'Ratings'
        }
    },
    series:  series
    
  });
}
$(document).ready(function() {
	

 $.ajax({
    url: 'http://localhost:8080/DigitalScore/score',
    type: 'GET',
    async: true,
    dataType: "json",
    success: function (res) {
    	
    	console.log(res);
        visitorData(res);
    }
  });
 });